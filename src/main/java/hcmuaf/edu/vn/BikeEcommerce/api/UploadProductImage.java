package hcmuaf.edu.vn.BikeEcommerce.api;

import hcmuaf.edu.vn.BikeEcommerce.model.Color;
import hcmuaf.edu.vn.BikeEcommerce.model.ImageProduct;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ColorService;
import hcmuaf.edu.vn.BikeEcommerce.service.ImageProductService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

@WebServlet("/UploadProductImage")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,  // 20MB
        maxFileSize = 1024 * 1024 * 10,        // 100MB
        maxRequestSize = 1024 * 1024 * 50  // 500MB

)
public class UploadProductImage extends HttpServlet {
    Properties properties;
    ProductService productService;
    ColorService colorService;
    ImageProductService imageProductService;
    // duong dan cua project
    String systemPath;
    // duong dan den thu muc chua anh tinh tu src
    String uploadDirRoot;
    // tong hop 2 duong tren
    String saveDir;
    Path saveDirPath;

    @Override
    public void init() throws ServletException {
        System.out.println("init upload servlet");
        properties = new Properties();
        productService = ProductService.getInstance();
        colorService = ColorService.getInstance();
        imageProductService = ImageProductService.getInstance();
        try {
            properties.load(UploadProductImage.class.getClassLoader().getResourceAsStream("upload.properties"));
        } catch (Exception e) {
            System.out.println("loi load file properties");
            e.printStackTrace();
        }
        systemPath = properties.get("project.folder").toString();
        System.out.println("upload dir: " + systemPath);
//        uploadPath = Path.of(uploadDir);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getAttribute("imagePath").toString();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        String colorId = req.getParameter("colorId");
        System.out.println("color id: " + colorId);
        System.out.println("product id: " + productId);

        Product product = productService.getProductById(productId);
        if (product == null) {
            resp.getWriter().write("product not found");
            return;
        }

        List<String> colors = colorService.getColorByProductId(productId).stream().map(color -> color.getColorId()).collect(Collectors.toList());
        System.out.println("color size: " + colors.size());
        if (!colors.contains(colorId)) {
            resp.getWriter().write("color not found");
            return;
        }

        Color color = colorService.getColorById(colorId);


        //tao  duong link den thu muc chua anh  cua product tu src
        uploadDirRoot = properties.get("upload.image").toString() + File.separator + product.getCategory().getName() + File.separator + product.getName() + "-" + product.getProductId() + File.separator + color.getName();
        System.out.println("upload dir root: " + uploadDirRoot);

        saveDir = systemPath + File.separator + uploadDirRoot;
        System.out.println("saveDir : " + saveDir);

        saveDirPath = Path.of(saveDir);

        //tao neu chua co
        if (!Files.exists(saveDirPath)) {
            Files.createDirectories(saveDirPath);
        }

        System.out.println("upload path: " + saveDirPath);

        Collection<Part> parts = req.getParts();
        System.out.println("size :" + parts.size());

        for (Part part : parts) {
            String fileName = part.getSubmittedFileName();
            if (fileName == null) {
                continue;
            }
            // Tạo đường dẫn đầy đủ cho file được tải lên
            Path filePath = saveDirPath.resolve(fileName);
            // tao id cho anh
            String id = GenerateId.generateId();
            ImageProduct imageProduct = new ImageProduct();
            imageProduct.setImageProductId(id);
            imageProduct.setProductId(productId);
            imageProduct.setColorId(colorId);
            imageProduct.setLink(uploadDirRoot + File.separator + fileName);
            // luu vao database
            imageProductService.insertImageProduct(imageProduct);


            // Lưu file từ InputStream của Part vào đường dẫn trên máy chủ
            try {
                // luu vao noi chua code
                part.write(filePath.toString());
                // luu vao taget
                part.write(getServletContext().getRealPath(uploadDirRoot + File.separator + fileName));

                System.out.println("duong  dan toi anh :" + uploadDirRoot + File.separator + fileName);
                System.out.println(getServletContext().getRealPath(uploadDirRoot + File.separator + fileName));

                req.setAttribute("imagePath", uploadDirRoot + File.separator + fileName);
//                req.getRequestDispatcher("/showImage.jsp").forward(req, resp);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }


    }
}
