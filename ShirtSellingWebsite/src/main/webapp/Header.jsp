<%-- 
    Document   : Header
    Created on : Jun 1, 2025, 4:15:56 PM
    Author     : ZBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<section id="header">
    <a href="HomeControll"><img src="image/LionLogo.png"
                                style="width: 70px;height:100%;" class="logo" alt="My logo"></a>
    <div>
        <ul id="navbar">
            <li><a class="${activePage=="home"?"active":""}" href="HomeControll">Home</a></li>
            <li><a class="${activePage=="shop"?"active":""}" href="ShopControl">Shop</a></li>
                <c:if test="${sessionScope.acc !=null}">
                <li><a href="#">Hello ${sessionScope.acc.user}</a></li>
                <li><a href="LogOutControl">Logout</a></li>
                </c:if>
                <c:if test="${sessionScope.acc ==null}">
                <li><a href="login.jsp">Login</a></li>
                </c:if>
            <li><a href="About.jsp">About</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
            <li id="lg-bag"><a href="Cart.jsp"> <i class="fa-solid fa-cart-shopping"></i></a></li>

            <form action="SearchControl" method="post">
                <button type="submit"><i class="fa fa-search"></i></button>
                <input type="text" placeholder="Search..." name="search" value="${txtS}" >

            </form>


            <a href="#" id="close"><i class="fa-solid fa-xmark"></i></a>
        </ul>
    </div>
    <div id="mobile">
        <a href="Cart.jsp"> <i class="fa-solid fa-cart-shopping"></i></a></li>

        <i id="bar" class="fas fa-outdent"></i>

    </div>
</section>

