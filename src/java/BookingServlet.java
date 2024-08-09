/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.core.config.Configurator;


/**
 *
 * @author Lenovo
 */
@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    static {
        Configurator.initialize(null, "WEB-INF/classes/log4j2.xml");
    }
    private static final Logger LOGGER = LogManager.getLogger(BookingServlet.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    LOGGER.info("BookingServlet started");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String additionalInfo = request.getParameter("message");

        LOGGER.info("Received parameters:");
        LOGGER.info("Name: {}", name);
        LOGGER.info("Email: {}", email);
        LOGGER.info("Phone: {}", phone);
        LOGGER.info("Date: {}", date);
        LOGGER.info("Time: {}", time);
        LOGGER.info("Additional Info: {}", additionalInfo);

        try (Connection conn = DatabaseUtil.getConnection()) {
            LOGGER.info("Database connection established");

            String sql = "INSERT INTO booking_submissions (name, email, phone, preferred_date, preferred_time, additional_info) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, name);
                pstmt.setString(2, email);
               pstmt.setString(3, phone); 
                pstmt.setDate(4, java.sql.Date.valueOf(date));
                pstmt.setObject(5, java.sql.Time.valueOf(time + ":00"));
                pstmt.setString(6, additionalInfo);

                LOGGER.debug("Executing SQL: {}", sql);
                LOGGER.debug("With parameters: {}, {}, {}, {}, {}, {}", name, email, phone, date, time, additionalInfo);

                int rowsAffected = pstmt.executeUpdate();
                LOGGER.info("Rows affected: {}", rowsAffected);

                if (rowsAffected > 0) {
                    LOGGER.info("Booking successful, redirecting to thank you page");
                    response.sendRedirect(request.getContextPath() + "/booking-thank-you.jsp");
                } else {
                    LOGGER.warn("No rows inserted, redirecting to error page");
                    response.sendRedirect(request.getContextPath() + "/booking-error.jsp");
                }
            }
        } catch (SQLException e) {
            LOGGER.error("SQL Error: {}", e.getMessage(), e);
            response.sendRedirect(request.getContextPath() + "/booking-error.jsp");
        } catch (NumberFormatException e) {
            LOGGER.error("Error parsing phone number: {}", e.getMessage(), e);
            response.sendRedirect(request.getContextPath() + "/booking-error.jsp");
        } catch (Exception e) {
            LOGGER.error("Unexpected error: {}", e.getMessage(), e);
            response.sendRedirect(request.getContextPath() + "/booking-error.jsp");
        }
    }
}
