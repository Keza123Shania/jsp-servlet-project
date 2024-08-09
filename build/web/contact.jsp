
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/styles1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <title>Contact Us - Harmony Keys</title>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <!-- Placeholder for logo -->
                <img src="images/play.png" alt="Harmony Keys Logo">
                <h2 style="display: inline-block; margin-left: 10px; font-family:'Poppins', sans-serif; font-weight: bold; color: #333;">HARMONY KEYS</h2>
            </div>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="services.jsp">Our Services</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="reviews.jsp">Reviews</a></li>
                    
                </ul>
            </nav>
            <a href="contact.jsp" class="btn-contact" class="active">Contact Us</a>
        </div>
    </header>

    <section class="contact-hero">
        <div class="contact-hero-content">
            <h1>Contact Us</h1>
            <p>We are here to assist you with any questions or concerns you may have.</p>
        </div>
    </section>
    <section class="contact-form-section">
        <div class="container">
            <div class="contact-form">
                <h2>Get in Touch</h2>
                <form action="${pageContext.request.contextPath}/ContactServlet" method="POST">
                    <div class="form-group">
                        <label for="fname">First Name *</label>
                        <input type="text" id="fname" name="fname" required>
                    </div>
                    <div class="form-group">
                        <label for="lname">Last Name *</label>
                        <input type="text" id="lname" name="lname" required>
                    </div>
                   <div class="form-group">
                        <label for="email">Email *</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="subject"> Subject *</label>
                        <input type="text" id="subject" name="subject" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Message *</label>
                        <textarea id="message" name="message" rows="5" required></textarea>
                    </div>
                    <button type="submit" class="btn-submit">Submit</button>
                </form>
            </div>
        </div>
    </section>
    <div class="separator"></div>
    <section class="opening-hours">
        <div class="container">
            <h2>Opening Hours</h2>
           
            <ul>
                <li>Monday - Friday: 9:00 AM - 6:00 PM</li>
                <li>Saturday: 10:00 AM - 4:00 PM</li>
                <li>Sunday: Closed</li>
            </ul>
        </div>
    </section>
    <div class="separator"></div>

    <section class="google-map">
        <div class="container">
            <h2>Find Us Here</h2>
          
            <iframe
  src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15955.91742492515!2d30.0589!3d-1.9492!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x19d8b8e9f5a0c3c7%3A0x6e5e4b8e8f8b8a7a!2sKigali%20Heights!5e0!3m2!1sen!2srw!4v1627639329788!5m2!1sen!2srw&center=-1.9529,30.0927&zoom=15"
  width="100%" height="400" style="border:0;" allowfullscreen="">
</iframe>
</div>
    </section>

    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://www.pinterest.com" target="_blank"><i class="fab fa-pinterest"></i></a>
        </div>
        <p>© Copyright Harmony Keys. All rights reserved</p>
    </footer>
    
 
   </body>
</html>

    
   