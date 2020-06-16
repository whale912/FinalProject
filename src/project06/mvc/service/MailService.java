package project06.mvc.service;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import project06.mvc.vo.Mail;

@Service
public class MailService {

	@Autowired(required=false)
	private JavaMailSender sender;
	
	public void sendMail(Mail email) throws MessagingException {
		
		MimeMessage msg= sender.createMimeMessage();
		
		msg.setSubject(email.getSubject());
		msg.setRecipient(RecipientType.TO, new InternetAddress(email.getReceiver()));
		msg.setText(email.getContent());
		
		
		
		sender.send(msg);
	}
}
