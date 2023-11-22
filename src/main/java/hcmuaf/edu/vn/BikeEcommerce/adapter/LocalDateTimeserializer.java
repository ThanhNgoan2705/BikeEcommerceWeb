package hcmuaf.edu.vn.BikeEcommerce.adapter;

import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

import java.lang.reflect.Type;
import java.time.LocalDateTime;

public class LocalDateTimeserializer implements JsonSerializer<LocalDateTime> {
    @Override
    public JsonElement serialize(LocalDateTime localDateTime, Type type, JsonSerializationContext jsonSerializationContext) {
        return new
                com.google.gson.JsonPrimitive(localDateTime.toString());
    }
}
