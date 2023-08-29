package hcmuaf.edu.vn.BikeEcommerce.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;

public class JsonUtils {
private GsonBuilder gsonBuilder;
private Gson gson;
    public boolean toJson(Product product) {
        gsonBuilder = new GsonBuilder().registerTypeAdapter();
    }
}
