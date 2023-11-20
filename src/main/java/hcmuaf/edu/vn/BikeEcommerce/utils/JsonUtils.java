package hcmuaf.edu.vn.BikeEcommerce.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import hcmuaf.edu.vn.BikeEcommerce.adapter.LocalDateTimeDeserializer;
import hcmuaf.edu.vn.BikeEcommerce.adapter.LocalDateTimeserializer;

import java.time.LocalDateTime;

public class JsonUtils {
private GsonBuilder gsonBuilder;
private Gson gson;
    public JsonUtils(){
        gsonBuilder = new GsonBuilder().registerTypeAdapter(LocalDateTime.class, new LocalDateTimeserializer()).registerTypeAdapter(LocalDateTime.class,
                new LocalDateTimeDeserializer());
        gson = gsonBuilder.create();
    }
    public String toJson(Object object){
        return gson.toJson(object);
    }
}
