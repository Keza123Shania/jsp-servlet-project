/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.core.config.Configurator;


@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    static {
        Configurator.initialize(null, "WEB-INF/classes/log4j2.xml");
    }
    private static final Logger LOGGER = LogManager.getLogger(ContactServlet.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    LOGGER.info("ContactServlet started");
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        LOGGER.info("Received contact submission with the following details:");
        LOGGER.info("First Name: {}", firstName);
        LOGGER.info("Last Name: {}", lastName);
        LOGGER.info("Email: {}", email);
        LOGGER.info("Subject: {}", subject);
        LOGGER.info("Message: {}", message);

        try (Connection conn = DatabaseUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("INSERT INTO contact_submissions (first_name, last_name, email, subject, message) VALUES (?, ?, ?, ?, ?)")) {
            
            pstmt.setString(1, firstName);
            pstmt.setString(2, lastName);
            pstmt.setString(3, email);
            pstmt.setString(4, subject);
            pstmt.setString(5, message);

            LOGGER.debug("Executing SQL statement with parameters: {}, {}, {}, {}, {}", firstName, lastName, email, subject, message);

            int rowsAffected = pstmt.executeUpdate();
            LOGGER.info("Rows affected: {}", rowsAffected);

            if (rowsAffected > 0) {
                LOGGER.info("Contact submission successful, redirecting to thank you page.");
                response.sendRedirect(request.getContextPath() + "/contact-thank-you.jsp");
            } else {
                LOGGER.warn("No rows inserted, redirecting to error page.");
                response.sendRedirect(request.getContextPath() + "/contact-error.jsp");
            }
        } catch (Exception e) {
            LOGGER.error("An error occurred while processing the contact submission: {}", e.getMessage(), e);
            response.sendRedirect(request.getContextPath() + "/contact-error.jsp");
        }
    }
}
