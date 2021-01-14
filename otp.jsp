<html>
    <head>
        <title>otp</title>
<%@ page language="java"%>
<%@ page import="java.sql.*,java.util.*"%>


   <%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.Session"%>
<%@ page import="javax.mail.Transport"%>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.util.Random" %>
<%
StringBuilder result = new StringBuilder();
   String email = request.getParameter("email") ;
 try
           {
                Properties emailProperties;
                Session mailSession;
                MimeMessage emailMessage;
                String emailPort = "587";
                emailProperties = System.getProperties();
                emailProperties.put("mail.smtp.port", emailPort);
                emailProperties.put("mail.smtp.auth", "true");
                emailProperties.put("mail.smtp.starttls.enable", "true");
                String toEmails = email;

                final String ALPHA_CAPS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                final String ALPHA = "abcdefghijklmnopqrstuvwxyz";
                final String NUMERIC = "01234567890123456789012345";
                Random random=new Random();
                

                for (int i = 0; i < 6; i++) 
                {
                    int index = random.nextInt(ALPHA_CAPS.length());
                    int type = random.nextInt(3);
                    switch (type)
                    {
                        case 0: { result.append(ALPHA_CAPS.charAt(index)); break; }
                        case 1: { result.append(ALPHA.charAt(index)); break; }
                        case 2: { result.append(NUMERIC.charAt(index)); break; }
                    }
                }
                
                String emailSubject = "[PIZZA HUB] Email Verification";
                String emailBody = "This is an "+", OTP for Email Verification . " +
                        "The Verfication Code is = "+result;
				System.out.println(result);		
                mailSession = Session.getDefaultInstance(emailProperties, null);
                emailMessage = new MimeMessage(mailSession);
                emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmails));
                emailMessage.setSubject(emailSubject);
                emailMessage.setContent(emailBody, "text/html");
                String emailHost = "smtp.gmail.com";
                String fromUser = "course4jobcomp@gmail.com";//just the id alone without @gmail.com
                String fromUserEmailPassword = "Course4job!Course4job!";
                Transport transport = mailSession.getTransport("smtp");
                transport.connect(emailHost, fromUser, fromUserEmailPassword);
                transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
                transport.close();
                System.out.println("Email sent successfully.");
				out.print("Email sent successfully.");
    
           }
            catch (Exception e) 
            {
                out.print("<h1>email error</h1>" + e );
                System.out.println("Error In Sending Mail");
                e.printStackTrace();
            }
			
			%>
<%
try{
   
   String uname=request.getParameter("email");
           session.setAttribute("sess",uname);
   
   
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/conn?useUnicode=true&useJDBCCopliantTimezoneShift=true&useLegacydatetimeCode=false&serverTimezone=UTC","root","");
	String email1=request.getParameter("email");
	String otp = result.toString();
	
	
	PreparedStatement ps=con.prepareStatement("insert into otp values(?,?)");
	ps.setString(1,email1);
	ps.setString(2,otp);
	
	
	int x=ps.executeUpdate();
   
     String site = "confirmotp.jsp";
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location",site);
}
catch(Exception e)
{
	out.println(" ");
}
%>
  
    </head>
</html>