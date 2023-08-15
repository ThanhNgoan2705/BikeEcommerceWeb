package hcmuaf.edu.vn.BikeEcommerce.sendEmail;

import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateVerifyCode;

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
            properties.load(EmailHelper.class.getClassLoader().getResourceAsStream("email.properties"));

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
        String contend = HtmlReader.readFileHtml(HtmlReader.verifyCode);
        contend = contend.replace(codeReplace,code);
      return  sendEmail(to,"Veryfy email from BikeLongVu",contend);
    }

    public static String sendResetPass(String to, String link) throws MessagingException {
        String linkReplace= ":link:";
        String contend = HtmlReader.resetPass;
        contend = contend.replace(linkReplace,link);
        return sendEmail(to,"Reset password",contend);
    }

//    public static String sendOrderConfirm(Order order) throws MessagingException{
//        String contend = HtmlText.verifyCode;
//
//        return sendEmail(to,"Check your Order",contend);
//    }

    public static void main(String[] args) throws MessagingException {
//        String text = HtmlText.verifyCode;
        String statuss = sendVerifyCode("20130166@st.hcmuaf.edu.vn", GenerateVerifyCode.generateVerifyCode());

        System.out.println(statuss);
    }
}
