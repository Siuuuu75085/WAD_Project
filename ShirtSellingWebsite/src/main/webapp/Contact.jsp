<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce Website</title>
   <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/52238e877f.js" crossorigin="anonymous"></script>
</head>

<body>

     <jsp:include page="Header.jsp"></jsp:include> 

    <section id="page-header" class="about-header">

        <h2>#Let's talk</h2>

        <p>Leave a message, we love to hear from you!</p>


    </section>

<section id="contact-details" class="section-p1">
    <div class="details">
        <span>GET IN TOUCH</span>
        <h2>Visit one of our agency locations or contact us today</h2>
        <h3>Head Office</h3>
        <div>
          <li>
            <i class="fa-solid fa-map-location-dot"></i>
            <p>123 Lotus Street, Ward 5, District 3, Ho Chi Minh City, Vietnam </p>
          </li>  
          <li>
            <i class="fa-solid fa-envelope"></i>
            <p>sunnyshop.vn24@gmail.com </p>
          </li>  
          <li>
            <i class="fa-solid fa-phone"></i>
            <p>0912 345 678 </p>
          </li>  
          <li>
            <i class="fa-solid fa-clock"></i>
            <p>Monday ? Saturday: 8:30 AM ? 7:00 PM </p>
          </li>  
        </div>
        
    </div>

<div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.731252767268!2d106.67299179999996!3d10.755183500000005!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752efc55c78803%3A0xe89221a89435861e!2sShop%20Quan%20Ao%20Su%20su!5e0!3m2!1svi!2s!4v1748101097075!5m2!1svi!2s"
     width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
</section>

<section id="form-details">
    <form action="">
        <span>LEAVE A MESSAGE</span>
        <h2>We love to hear from you</h2>
        <input type="text" placeholder="Your Name">
        <input type="text" placeholder="E-mail">
        <input type="text" placeholder="Subject">
        <textarea name="" id="" cols="30" rows="10" placeholder="Your Message"></textarea>
        <button class="normal">Submit</button>
<!-- <button> defaults to type="submit"when used inside a <form> without a specified type -->
    <!-- It can be customized (e.g., with icons or inner HTML), unlike <input type="submit">, which only displays text. -->
    </form>
<div class="people">
    <div>
        <img src="image/1.png" alt="the people">
        <p><span>John Doe</span> Senior Marketing Manager<br> Phone: 000123458<br>Email: cantact@example.com</p>

    </div>
     <div>
        <img src="image/2.png" alt="the people">
        <p><span>Will Smith</span> Senior Marketing Manager<br> Phone: 000123458<br>Email: cantact@example.com</p>

    </div>
     <div>
        <img src="image/3.png" alt="the people">
        <p><span>Alexander The Third</span> Senior Marketing Manager<br> Phone: 000123458<br>Email: cantact@example.com</p>

    </div>
</div>
</section>


    <jsp:include page="Footer.jsp"></jsp:include><footer class="section-p1">
<div class="col-left">
 <div class="col">

            <h4>Contact</h4>
            <p><strong>Address: </strong> 123 Truong Duong Road, Street 32, Ha Noi</p>
            <p><strong>Phone:</strong> +01 2222 365/(+84) 01 2345 6789</p>
            <p><strong>Hours:</strong> 10:00 -18:00, Mon - Sat</p>
        </div>

</div>
       

        <div class="col-right">
            <div class="col">
                <h4>My Account</h4>
                <a href="#">Sign In</a>
                <a href="#">View Cart</a>
                <a href="#">My Wishlist</a>
                <a href="#">Help</a>

            </div>

            <div class="col">
                <h4>Follow us</h4>
                <div class="icon">
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-pinterest-p"></i>
                    <i class="fab fa-youtube"></i>
                </div>
            </div>

        </div>



        <div class="copyright">
            <p>© 1996-2025, Amazong.com - Ecommerce Project</p>
        </div>
    </footer>


    <script src="script.js"></script>
</body>


</html>