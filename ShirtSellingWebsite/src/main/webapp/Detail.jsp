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

    <section id="prodetails" class="section-p1">
        <div class="single-pro-image">
            
<img src="${detail.image}" width="100%" id="MainImg" alt="sproduct_img">

<div class="small-img-group">
    <div class="small-img-col">
        <img src="image/f1.jpg" width="100%" class="small-img" alt="small_image">
    </div>
    <div class="small-img-col">
        <img src="image/f2.jpg" width="100%" class="small-img" alt="small_image">
    </div>
    <div class="small-img-col">
        <img src="image/f3.jpg" width="100%" class="small-img" alt="small_image">
    </div>
    <div class="small-img-col">
        <img src="image/f4.jpg" width="100%" class="small-img" alt="small_image">
    </div>
</div>
        </div>
        
        <div class="single-pro-details">
<h6><a href="HomeControll">Home</a> / T-Shirt</h6>
<h4> ${detail.name}</h4>
<h2>${detail.price}</h2>
<select required>
    <option value="" hidden>Select Size</option>
     <option>XL</option>
      <option>XXL</option>
       <option>Small</option>
        <option>Large</option>
      ]
</select>
<input type="number" value="1" min="1">
<button class="normal">Add To Cart</button>
<h4>Product Details</h4>
<span>
    ${detail.description}
   </span>
        </div>
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
   
   <jsp:include page="Footer.jsp"></jsp:include> 

<script>
    var MainImg=document.getElementById("MainImg");
    var small_img=document.getElementsByClassName("small-img");

    small_img[0].onclick=function(){
        MainImg.src=small_img[0].src;
    }
    small_img[1].onclick= () =>{
        MainImg.src=small_img[1].src;
    }
    small_img[2].onclick= () =>{
        MainImg.src=small_img[2].src;
    }
    small_img[3].onclick=function(){
        MainImg.src=small_img[3].src;
    }

</script>

    
</body>


</html>