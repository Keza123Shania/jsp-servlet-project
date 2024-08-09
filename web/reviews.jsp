
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/styles1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <title>Reviews - Harmony Keys</title>
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
                    <li><a href="reviews.jsp" class="active">Reviews</a></li>
                    
                </ul>
            </nav>
            <a href="contact.jsp" class="btn-contact">Contact Us</a>
        </div>
    </header>

    <section class="reviews-hero">
        <div class="reviews-hero-content">
           
            <h1>See what our clients have to say about us</h1>
        </div>
    </section>

    <section class="reviews-section">
        <div class="container">
            <h2>Testimonials</h2>
            <div class="reviews-slider">
                <button class="slide-btn" id="prev-btn">&#10094;</button>
                <div class="reviews-wrapper">
                    <div class="review">
                        <p>"Fantastic service! My piano has never sounded better."</p>
                        <h3>- Ineza Mary</h3>
                    </div>
                    <div class="review">
                        <p>"Highly recommend Harmony Keys for all your piano needs."</p>
                        <h3>- Gwiza Ed</h3>
                    </div>
                    <div class="review">
                        <p>"Harmony Keys?unbeatable selection,seamless purchase.</p> <p>Thrilled with my new piano!"</p>
                        <h3>- James Francis Odoki</h3>
                    </div>
                    <div class="review">
                        <p>"Professional and efficient. Great experience overall."</p>
                        <h3>- Emily Johnson</h3>
                    </div>
                   
                </div>
                <button class="slide-btn" id="next-btn">&#10095;</button>
            </div>
        </div>
    </section>
    <div class="separator"></div>

    <section class="faq-section">
        <div class="container">
            <h2>Frequently Asked Questions</h2>
            <div class="faq">
                <div class="faq-item">
                    <button class="faq-question">What services do you offer?</button>
                    <div class="faq-answer">
                        <p>We offer a range of services including piano sales, piano tuning, repair, and restoration.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question">Do you have an online store for piano sales?</button>
                    <div class="faq-answer">
                        <p>We offer a range of services including piano sales, piano tuning, repair, and restoration.</p>
            
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question">How can I book an appointment?</button>
                    <div class="faq-answer">
                        <p>You can book an appointment by contacting us through our website or by calling us directly.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question">Do you offer home visits?</button>
                    <div class="faq-answer">
                        <p>Yes, we offer home visits for tuning and repair services.</p>
                          </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question">What areas do you serve?</button>
                    <div class="faq-answer">
                        <p>We serve the entire Kigali region and nearby areas.</p>            </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question">What financing options are available for piano purchases?</button>
                    <div class="faq-answer">
                        <p>We offer flexible financing plans to make owning a piano more accessible.</p>
          
                          </div>
                </div>
                <div class="faq-item">
                    <button class="faq-question">Can I rent a piano for an event or performance?</button>
                    <div class="faq-answer">
                        <p>Absolutely! We offer piano rentals for concerts, weddings, recitals, and other special occasions. Contact us for availability and pricing.</p>
           </div>
                </div>
               
            </div>
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

 <script>   
 const reviewsWrapper = document.querySelector('.reviews-wrapper');
const prevBtn = document.getElementById('prev-btn');
const nextBtn = document.getElementById('next-btn');
let currentIndex = 0;

prevBtn.addEventListener('click', () => {
    if (currentIndex > 0) {
        currentIndex--;
        reviewsWrapper.style.transform = `translateX(-${currentIndex * 100}%)`;
    }
});

nextBtn.addEventListener('click', () => {
    if (currentIndex < reviewsWrapper.children.length - 1) {
        currentIndex++;
        reviewsWrapper.style.transform = `translateX(-${currentIndex * 100}%)`;
    }
});

    </script>
    <script>
        document.querySelectorAll('.faq-question').forEach(button => {
    button.addEventListener('click', () => {
        const faqItem = button.parentElement;
        const faqAnswer = faqItem.querySelector('.faq-answer');

        faqAnswer.style.display = faqAnswer.style.display === 'block' ? 'none' : 'block';
    });
});

    </script>
</body>
</html>
                                                                                                                                     