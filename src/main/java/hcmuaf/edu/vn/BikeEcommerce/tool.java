package hcmuaf.edu.vn.BikeEcommerce;

import hcmuaf.edu.vn.BikeEcommerce.model.Product;

import java.lang.reflect.Field;

public class tool {
    public static void main(String[] args) {
        tool tool = new tool();
        tool.genarateInsert(Product.class);

    }
    void genarateInsert(Class className){
        StringBuffer sb = new StringBuffer();
        sb.append("INSERT INTO ");
        String tableName = className.getSimpleName().toLowerCase();
        sb.append(tableName);
        sb.append("(");
        for (Field field : className.getDeclaredFields()) {
            sb.append(field.getName());
            sb.append(",");
        }
        sb.deleteCharAt(sb.length()-1);
        sb.append(") VALUES (");
        for (Field field : className.getDeclaredFields()) {
            sb.append(":");
            sb.append(field.getName());
            sb.append(",");
        }
        sb.deleteCharAt(sb.length()-1);
        sb.append(")");

    }



}
