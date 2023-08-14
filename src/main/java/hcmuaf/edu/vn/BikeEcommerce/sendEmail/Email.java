package hcmuaf.edu.vn.BikeEcommerce.sendEmail;

import hcmuaf.edu.vn.BikeEcommerce.db.DBProperties;

import javax.mail.*;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class Email {
    final String username = "BikeEcommerceVN@gmail.com";
    final String password = "your_password";

    public String sendEmail(String to, String subject, String text) throws MessagingException {
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
        message.setText(text);
        try {
            Transport.send(message);
    } catch (Exception e) {
            e.printStackTrace();
            return "Send email failed";
        }
        // Send message

        return "Email sent successfully";
    }
}
