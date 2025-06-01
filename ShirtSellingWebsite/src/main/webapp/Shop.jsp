<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <section id="page-header">

        <h2>#stayhome</h2>

        <p>Save more with coupons & up to 70% off</p>


    </section>

     <section id="product1" class="section-p1">
            <h2>Featured Product</h2>
            <p>Summer Collection New Mordern Design</p>
            <div class="pro-container1">
                <c:forEach items="${listP}" var="o"> 
                    <!--                    items chua list va o la bien dem
                                        Tuong tu nhu for(Product o:list)-->
                    <div class="pro shop">
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



   <jsp:include page="Footer.jsp"></jsp:include> 


   
</body>


</html>