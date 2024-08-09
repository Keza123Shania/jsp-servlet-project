<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/styles1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <title>Gallery - Harmony Keys</title>
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
                   <li><a href="gallery.jsp" class="active">Gallery</a></li>
                    <li><a href="reviews.jsp">Reviews</a></li>
                    
                </ul>
            </nav>
            <a href="contact.jsp" class="btn-contact">Contact Us</a>
        </div>
    </header>

   

    <section class="gallery-section">
        <div class="gallery-container">
            <h1 class="gallery-hero">Explore Our Collection of Pianos</h1>
            <div class="separator"></div>
            <div class="gallery-grid">
                <div class="gallery-item">
                    <img src="images/U1 and U3 Upright Pianos - Yamaha USA.jpg" alt="Piano 1" data-title="Upright Piano (Yamaha U1)" data-description="Compact and versatile. The Yamaha U1 upright piano offers warm tones, responsive action, and a classic design." data-price="Price: $55000">
                </div>
                <div class="gallery-item">
                    <img src="images/Roland RD-2000 Stage Piano - Modelling and Sampling - WORLD PIANO NEWS.jpg" alt="Piano 2" data-title="Digital Piano (Roland RD-2000)" data-description="Modern innovation at your fingertips. The Roland RD-2000 digital piano features realistic touch, customizable sounds, and MIDI capabilities." data-price="Price: $2000">
                </div>
                <div class="gallery-item">
                    <img src="images/kawai baby grand canada.jpg" alt="Piano 3" data-title="Baby Grand Piano (Kawai GL-10)" data-description="Compact yet powerful. The Kawai GL-10 baby grand piano combines elegance with space-saving design." data-price="Price: $12000">
                </div>
                <div class="gallery-item">
                    <img src="images/Screenshot (213).png" alt="Piano 4" data-title="Grand Piano (Steinway Model D)" data-description="The epitome of elegance and craftsmanship. Our Steinway Model D grand piano delivers rich, resonant tones and impeccable touch." data-price="Price: $85000">
                    </div>
                
                <div class="gallery-item">
                    <img src="images/Max KB1 Electric Keyboard with Stand - 61 Keys.jpg" alt="Piano 5" data-title="Electric Keyboard (Nord Stage 3)" data-description="Portable and expressive. The Nord Stage 3 electric keyboard suits beginners and professionals alike, with a wide range of sounds." data-price="Price: $2800">
                    
                        </div>
             
                <div class="gallery-item">
                    <img src="images/New from Bösendorfer (January 2020).jpg" alt="Piano 6" data-title="Concert Grand Piano (Bösendorfer 280VC)" data-description="Unparalleled beauty and power. The Bösendorfer 280VC concert grand piano is a masterpiece for professional pianists." data-price="Price: $150000">
                    
                    </div>
               
                <div class="gallery-item">
                    <img src="images/Yamaha C7X SH2 Silent Piano - Polished Ebony.jpg" alt="Piano 7" data-title="Silent Piano (Yamaha Silent SH2)" data-description="Innovative practice experience. The Yamaha Silent SH2 combines acoustic and digital features, allowing silent playing with headphones." data-price="Price: $8500">
                  
                    </div>
               
                <div class="gallery-item">
                    <img src="images/Kawai K300 Upright White Polish Piano White.jpg" alt="Piano 8" data-title="Studio Upright Piano (Kawai K300)" data-description="Ideal for practice and performance. The Kawai K300 studio upright piano offers clear tones and a responsive touch." data-price=" Price: $4600">
                  
                </div>
                <div class="gallery-item">
                    <img src="images/Roland - GP-6 _ Digital Piano.jpg" alt="Piano 9" data-title="Hybrid Piano (Roland GP609)" data-description="Best of both worlds. The Roland GP609 hybrid piano combines acoustic authenticity with digital versatility." data-price="Price: $10000">
                   
                </div>
            
        </div>
    </section>

    <div id="lightbox" class="lightbox">
        <div class="lightbox-content">
            <span class="close">&times;</span>
            <img class="lightbox-img" src="" alt="">
            <div class="lightbox-caption">
                <h3 class="lightbox-title"></h3>
                <p class="lightbox-description"></p>
                <p class="lightbox-price"></p>
            </div>
        </div>
    </div>

    <footer>
        <div class="social-icons">
            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://www.pinterest.com" target="_blank"><i class="fab fa-pinterest"></i></a>
        </div>
        <p>© Copyright Harmony Keys. All rights reserved</p>
    </footer>

    <script> 
    const lightbox = document.getElementById('lightbox');
const lightboxImg = document.querySelector('.lightbox-img');
const lightboxTitle = document.querySelector('.lightbox-title');
const lightboxDescription = document.querySelector('.lightbox-description');
const lightboxPrice = document.querySelector('.lightbox-price');
const closeBtn = document.querySelector('.close');

document.querySelectorAll('.gallery-item img').forEach(img => {
    img.addEventListener('click', () => {
        lightbox.style.display = 'block';
        lightboxImg.src = img.src;
        lightboxTitle.textContent = img.getAttribute('data-title');
        lightboxDescription.textContent = img.getAttribute('data-description');
        lightboxPrice.textContent = img.getAttribute('data-price');
    });
});

closeBtn.addEventListener('click', () => {
    lightbox.style.display = 'none';
});

lightbox.addEventListener('click', (e) => {
    if (e.target === lightbox) {
        lightbox.style.display = 'none';
    }
});



    </script>
</body>
</html>

