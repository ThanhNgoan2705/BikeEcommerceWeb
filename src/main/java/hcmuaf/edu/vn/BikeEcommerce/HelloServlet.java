package hcmuaf.edu.vn.BikeEcommerce;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Collection;
import java.util.Properties;

@WebServlet("/hello")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,  // 20MB
        maxFileSize = 1024 * 1024 * 10,        // 100MB
        maxRequestSize = 1024 * 1024 * 50  // 500MB

)
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Properties properties = new Properties();
        properties.load(HelloServlet.class.getClassLoader().getResourceAsStream("upload.properties"));
        // Đường dẫn lưu trữ file trên máy chủ
        String uploadDir = properties.get("project.folder").toString() + File.separator + properties.get("upload.image").toString();
        System.out.println("upload dir: " + uploadDir);
        Path uploadPath = Path.of(getServletContext().getContextPath() + uploadDir);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }
        System.out.println("upload path: " + uploadPath);
        Collection<Part> parts = req.getParts();
        System.out.println("size :" + parts.size());

        for (Part part : parts) {
            String fileName = part.getSubmittedFileName();
            if (fileName == null) {
                continue;
            }
            // Tạo đường dẫn đầy đủ cho file được tải lên
            Path filePath = uploadPath.resolve(fileName);


            // Lưu file từ InputStream của Part vào đường dẫn trên máy chủ
            try (InputStream input = part.getInputStream()) {
                Files.copy(input, filePath, StandardCopyOption.REPLACE_EXISTING);
                System.out.println("duong  dan toi anh :" + fileName);
                System.out.println(filePath.getParent().getParent());

            }
//
//            // Do something else with the file data...
        }
//
        resp.getWriter().println("Files uploaded successfully!");


    }
}
