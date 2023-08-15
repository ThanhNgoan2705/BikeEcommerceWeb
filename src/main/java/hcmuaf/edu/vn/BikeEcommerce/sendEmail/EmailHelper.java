package hcmuaf.edu.vn.BikeEcommerce.sendEmail;

import hcmuaf.edu.vn.BikeEcommerce.db.DBProperties;

import javax.mail.*;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailHelper {
    static final String username = "longvubike@gmail.com";
    static final String password = "qbtoudxtzddfshdc";

    public static String sendEmail(String to, String subject, String text) throws MessagingException {
        Session session = null;
        try {
            Properties properties = new Properties();
            properties.load(DBProperties.class.getClassLoader().getResourceAsStream("email.properties"));

            session = Session.getInstance(properties, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            return "Authentication failed";
        }
        // Wrap a message in session
        MimeMessage message = new MimeMessage(session);
        message.setSubject(subject);
        message.setFrom(username);
        message.setRecipients(Message.RecipientType.TO, to);
        message.setContent(text, "text/html");
//        message.setText(text);
        try {
            Transport.send(message);
        } catch (Exception e) {
            e.printStackTrace();
            return "Send email failed";
        }
        // Send message

        return "Email sent successfully";
    }
    public static String sendVerifyCode(String to, String code) throws MessagingException {
        String codeReplace= ":code:";
        String contend = HtmlText.verifyCode;
        contend = contend.replace(codeReplace,code);
      return  sendEmail(to,"Veryfy email from BikeLongVu",contend);
    }
    public static String sendOrderConfirm(Order order){
        String contend = HtmlText.verifyCode;

        return sendEmail(to,"Check your Order",contend);
    }

    public static void main(String[] args) throws MessagingException {
//        String text = HtmlText.verifyCode;
        String statuss = sendVerifyCode("20130335@st.hcmuaf.edu.vn","3d4gh6");

        System.out.println(statuss);
    }
}
