package hcmuaf.edu.vn.BikeEcommerce;

import java.lang.reflect.Field;

public class tool {
    public static void main(String[] args) {

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
