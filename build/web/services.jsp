
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services - Harmony Keys</title>
 <link rel="stylesheet" type="text/css" href="css/styles1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <!-- Header Section -->
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
                    <li><a href="services.jsp" class="active">Our Services</a></li>
                    <li><a href="gallery.jsp">Gallery</a></li>
                    <li><a href="reviews.jsp">Reviews</a></li>
                </ul>
            </nav>
            <a href="contact.jsp" class="btn-contact">Contact Us</a>
        </div>
    </header>

    <!-- Main Content Wrapper -->
    <main>
        <!-- Services Section -->
        <section class="services">
            <div class="service-items">
                <div class="service-item">
                    <img src="images/Piano Tuning Services.jpg" alt="Piano Tuning">
                    <h3>Piano Tuning</h3>
                    <p>Per hour<br>US$50</p>
                    <button class="book-btn" onclick="openForm('Piano Tuning')">Book Now</button>
                </div>
                <div class="service-item">
                    <img src="images/9 Tips for Teaching Piano To Young Ages.jpg" alt="Piano Lessons (For Kids)">
                    <h3>Piano Lessons (For Kids)</h3>
                    <p>Per hour<br>US $60</p>
                    <button class="book-btn" onclick="openForm('Piano Lessons (For Kids)')">Book Now</button>
                </div>
                <div class="service-item">
                    <img src="images/Most relaxing piano music.jpg" alt="Piano Lessons (For Adults)">
                    <h3>Piano Lessons (For Adults)</h3>
                    <p>Per hour<br>US $100</p>
                    <button class="book-btn" onclick="openForm('Piano Lessons (For Adults)')">Book Now</button>
                </div>
                <div class="service-item">
                    <img src="images/Piano Music Notes Aesthetic.jpg" alt="Music Sheets For Sale">
                    <h3>Music Sheets For Sale</h3>
                    <p>1 Collection<br>US $50</p>
                    <button class="book-btn" onclick="openForm('Music Sheets For Sale')">Book Now</button>
                </div>
            </div>
        </section>

        <!-- Booking Form Modal -->
        <div id="bookingFormModal" class="modal">
            <div class="modal-content">
                <span class="close-btn" onclick="closeForm()">&times;</span>
                <h2>Book a Service</h2>
                <form action="${pageContext.request.contextPath}/BookingServlet" method="POST" id="bookingForm">
                    <input type="hidden" id="serviceType" name="serviceType">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" required>
                    <label for="date">Preferred Date:</label>
                    <input type="date" id="date" name="date" required>
                    <label for="time">Preferred Time:</label>
                    <input type="time" id="time" name="time" required>
                    <label for="message">Additional Information:</label>
                    <textarea id="message" name="message" rows="4" cols="50"></textarea>
                    <button type="submit">Submit</button>
                </form>
            </div>
        </div>
    </main>

    <!-- Footer Section -->
    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://www.pinterest.com" target="_blank"><i class="fab fa-pinterest"></i></a>
        </div>
        <p>© Copyright Harmony Keys. All rights reserved</p>
    </footer>
    <script>
        function openForm(service) {
            document.getElementById('serviceType').value = service;
            document.getElementById('bookingFormModal').style.display = 'block';
        }

        function closeForm() {
            document.getElementById('bookingFormModal').style.display = 'none';
        }

        document.getElementById('bookingForm').addEventListener('submit', function(e) {
            // No need to prevent default submission if using Formspree
            alert('Booking form submitted!');
            closeForm();
        });
    </script>
</body>
</html>
