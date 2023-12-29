package hcmuaf.edu.vn.BikeEcommerce.fakeData;

import com.github.javafaker.Faker;
import hcmuaf.edu.vn.BikeEcommerce.DAO.BrandDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Brand;
import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class FakeData {
    public static void main(String[] args) {
//        FakeData fakeData = new FakeData();
//        fakeData.insertBrand();


    }

    private void insertBrand() {
        Faker faker = new Faker();
        List<String> listBrandName = List.of(
                "Alpha",
                "Anbico",
                "Asama",
                "Before All",
                "Byvin",
                "Chở hàng",
                "Cũ",
                "Dkbike",
                "Dibao",
                "Doinnext",
                "DTP",
                "Emoto",
                "Espero",
                "EV Go",
                "FMT",
                "Fuji",
                "Giant",
                "Hkbike",
                "Hola",
                "Honda",
                "HTC",
                "JVC eco",
                "Kazuki",
                "Kymco",
                "Lixi",
                "LTP",
                "MBI",
                "Michi",
                "Mopo",
                "nhập khẩu",
                "Nijia",
                "Nike Bike",
                "Niu",
                "Osakar",
                "Pega",
                "Sufat",
                "Sunra",
                "SYM",
                "Terra Motors",
                "TH CEO",
                "Vespa",
                "Vinfast",
                "Xmen",
                "Yadea",
                "Yamaha");

        Jdbi jdbi = JDBIConnector.get();
        for (int i = 0; i < listBrandName.size(); i++) {
            Brand brand = new Brand();
            brand.setBrandId(GenerateId.generateId());
            brand.setName(listBrandName.get(i));
            brand.setLogo("https://i.imgur.com/5ZQqZ5u.png");
            brand.setDescription(faker.lorem().sentence());
            jdbi.withExtension(BrandDAO.class, dao -> dao.insert(brand));
            System.out.println(brand.getBrandId());

        }
    }
    private void insertCategory() {
        Faker faker = new Faker();
        Jdbi jdbi = JDBIConnector.get();
        List<String> name=List.of("Xe máy điện","Xe đạp điện", "Xe đạp thể thao","Xe đạp thời trang", "Xe đạp trẻ em");
        for (int i = 0; i < name.size(); i++) {
            Category category = new Category();
            category.setCategoryId(GenerateId.generateId());
            category.setName(name.get(i));
            category.setDescription(faker.lorem().sentence());
            category.setImage("https://i.imgur.com/5ZQqZ5u.png");
           category.setLevel(2);
        }
    }
    private void insertProduct(){
        Faker faker = new Faker();
        Jdbi jdbi = JDBIConnector.get();
        for (int i =0; i<100;i++){
            Product product = new Product();
            product.setProductId(GenerateId.generateId());
        }


    }

}
