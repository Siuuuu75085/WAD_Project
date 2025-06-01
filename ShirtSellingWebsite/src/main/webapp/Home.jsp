<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

        <section id="hero">
            <h4>Trade-in-offer</h4>
            <h2>Super value deals</h2>
            <h1>On all products</h1>
            <p>Save more with coupons & up to 70% off</p>
            <button>Shop now</button>

        </section>

        <section id="feature" class="section-p1">
            <h2>Categories</h2>
            <p>Choose what you desired!</p>
            <div class="category_container">
              <c:forEach  items="${listC}" var="o">
                <div class="fe-box">
                    <img src="image/f1.png" alt="">
                    <a href="CategoryControl?cid=${o.cid}"><h6>${o.cname}</h6></a> 
<!--Khi vao click vao se goi toi sevlet co duong dan la category va truyen vao 1
bien cid-->
                </div>
            </c:forEach>   
            </div>
               
            
            
        </section>

        <section id="product1" class="section-p1">
            <h2>Featured Product</h2>
            <p>Summer Collection New Mordern Design</p>
            <div class="pro-container">
                <c:forEach items="${listP}" var="o"> 
                    <!--                    items chua list va o la bien dem
                                        Tuong tu nhu for(Product o:list)-->
                    <div class="pro">
                        <img src="${o.image}" alt="">
                        <div class="des">
                            <span>${o.title}</span>
                            <h5>${o.name}</h5>
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4>${o.price}</h4>
                        </div>
                        <a href="DetailControl?pid=${o.id}"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                </c:forEach> 
            </div>
        </section>

        <section id="banner" class="section-m1 ">
            <h4>Repair Services</h4>
            <h2>Up to <span>70% Off</span> - All t-Shirts & Accessories</h2>
            <button class="normal">Explore more</button>
        </section>

        <section id="product1" class="section-p1">
            <h2>New Arrivals</h2>
            <p>Summer Collection New Mordern Design</p>
            <div class="pro-container">


                <c:forEach items="${newP}" var="o"> 
                    <div class="pro">
                        <img src="${o.image}" alt="">
                        <div class="des">
                            <span>${o.title}</span>
                            <h5>${o.name}</h5>
                            <div class="star">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4>${o.price}</h4>
                        </div>
                        <a href="DetailControl?pid=${o.id}"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                </c:forEach> 

            </div>
        </section>

        <section id="sm-banner" class="section-p1">
            <div class="banner-box">
                <h4>crazy deals</h4>
                <h2>buy 1 get 1 free</h2>
                <span>The best classic dress is on sale at care</span>
                <button class="white">Learn more</button>
            </div>
            <div class="banner-box banner-box2">
                <h4>sring/summber</h4>
                <h2>buy 1 get 1 free</h2>
                <span>The best classic dress is on sale at care</span>
                <button class="white">Collection</button>
            </div>
        </section>

        <section id="banner3">
            <div class="banner-box ">

                <h2>SEASONAL SALE</h2>
                <h3>Winter collection -50% OFF</h3>

            </div>
            <div class="banner-box banner-box2 ">

                <h2>NEW FOOTWEAR COLLECTION</h2>
                <h3>Spring/Summer 2022</h3>

            </div>
            <div class="banner-box banner-box3">

                <h2>T-SHIRTS</h2>
                <h3>New Trendy Prints</h3>

            </div>


        </section>

         <jsp:include page="Footer.jsp"></jsp:include> 


      
    </body>


</html>