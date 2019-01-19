/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author demonslight998
 */
public class EmailDao {

  public static void SendEmail(String host, String port,
          final String userName, final String password, String toAddress, String cc,
          String subject, String message) throws AddressException, MessagingException {
    // sets SMTP server properties
    Properties properties = new Properties();
    properties.put("mail.smtp.host", host);
    properties.put("mail.smtp.port", port);
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");

    // creates a new session with an authenticator
    Authenticator auth = new Authenticator() {
      public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(userName, password);
      }
    };
    Session session = Session.getInstance(properties, auth);
    // creates a new e-mail message
    Message msg = new MimeMessage(session);

    msg.setFrom(new InternetAddress(userName));
    InternetAddress[] toAddresses = {new InternetAddress(toAddress)};
    InternetAddress[] toCC = {new InternetAddress(cc)};
    msg.setRecipients(Message.RecipientType.TO, toAddresses);
    msg.setRecipients(Message.RecipientType.CC, toCC);
    msg.setSubject(subject);
    msg.setSentDate(new Date());
    msg.setText(message);

    // sends the e-mail
    Transport.send(msg);
  }
}