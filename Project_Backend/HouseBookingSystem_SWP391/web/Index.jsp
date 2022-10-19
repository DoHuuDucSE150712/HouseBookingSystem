<%-- 
    Document   : Index
    Created on : Oct 4, 2022, 8:31:55 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="StyleSheet.css">
        <link rel="stylesheet" href="room/room.html">
    </head>
    <body>
        <!-- header section starts  -->

        <header>

            <div id="menu-bar" class="fas fa-bars"></div>

            <a href="#" class="logo"><span>H</span>ouse<span>B</span>ooking</a>

            <nav class="navbar">
                <a href="#home">home</a>
                <a href="#book">book</a>
                <a href="#packages">room</a>
                <a href="#services">services</a>
                <a href="#gallery">gallery</a>
                <a href="#review">review</a>
                <a href="#contact">contact</a>
            </nav>

            <div class="icons">
                <i class="fas fa-search" id="search-btn"></i>
                <i class="fas fa-user" id="login-btn"></i>
            </div>

            <form action="" class="search-bar-container">
                <input type="search" id="search-bar" placeholder="search here...">
                <label for="search-bar" class="fas fa-search"></label>
            </form>

        </header>

        <!-- header section ends -->
        <!-- login form container  -->

        <div class="login-form-container">

            <i class="fas fa-times" id="form-close"></i>

            <form action="LoginServlet" method="post">
                <h3>login</h3>
                <input type="text" name="username" class="box" placeholder="enter your email">
                <input type="password" name="password" class="box" placeholder="enter your password">
                <input type="submit" value="login now" class="btn">
                <input type="checkbox" id="remember">
                <label for="remember">remember me</label>
                <p>forget password? <a href="#">click here</a></p>
                <p>don't have and account? <a href="Register.jsp">register now</a></p>
            </form>

        </div>

        <!-- home section starts  -->

        <section class="home" id="home">
            <div class="content">
                <h3>adventure is worthwhile</h3>
                <p>dicover new places with us, adventure awaits</p>
                <a href="#" class="btn">discover more</a>
            </div>

            <div class="controls">
                <span class="vid-btn active" data-src="Images/vi-1.mp4"></span>
                <span class="vid-btn" data-src="Images/vi-2.mp4"></span>
                <span class="vid-btn" data-src="Images/vid-3.mp4"></span>
                <span class="vid-btn" data-src="Images/vid-4.mp4"></span>
                <span class="vid-btn" data-src="Images/vid-5.mp4"></span>
            </div>
            <div class="video-container">
                <video width="320" height="240" id="video-slider" loop autoplay muted>
                    <source src="Images/vi-1.mp4" type="video/mp4">
                </video>
            </div>

        </section>

        <!-- home section ends -->
        <!-- book section starts  -->

        <section class="book" id="book">

            <h1 class="heading">
                <span>b</span>
                <span>o</span>
                <span>o</span>
                <span>k</span>
                <span class="space"></span>
                <span>n</span>
                <span>o</span>
                <span>w</span>
            </h1>

            <div class="row">

                <div class="image">
                    <img src="Images/vn.jpg" alt=""/>
                </div>
                <form action="GetLocationServlet">
                    <div class="inputBox">
                        <h3>where to</h3>
                        <select class="required">
                            <option>Choose your city</option>
                            <c:forEach items="${requestScope.LISTLOCATION}" var="l">
                                <option value="${l.id}">${l.name}</option>
                             <p id="location"></p>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="inputBox">
                        <h3>how many</h3>
                        <input type="number" placeholder="number of guests">
                    </div>
                    <div class="inputBox">
                        <h3>arrivals</h3>
                        <input type="date">
                    </div>
                    <div class="inputBox">
                        <h3>leaving</h3>
                        <input type="date">
                    </div>
                    <!-- <input type="submit" class="btn" value="book now" href="#packages" >  -->
                    <a href="UserListHouseServlet" class="btn">book now</a>

                </form>

            </div>

        </section>

        <!-- book section ends -->
        <!-- packages section starts  -->

        <section class="packages" id="packages">

            <h1 class="heading">
                <span>r</span>
                <span>o</span>
                <span>o</span>
                <span>m</span> 
            </h1>

            <div class="box-container">

                <div class="box">
                    <img src="Images/dn .jpg" alt=""/>
                    <div class="content">
                        <h3> <i class="fas fa-map-marker-alt"></i> Muong Thanh Luxury  Hotel </h3>
                        <p>ks</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div> 
                        <div class="price"> $90.00 <span>$120.00</span> </div>
                        <a href="room_MT.html" class="btn">book now</a>
                    </div>
                </div>

                <div class="box">
                    <img src="Images/hl.png" alt=""/>
                    <div class="content">
                        <h3> <i class="fas fa-map-marker-alt"></i> Halong Capella Cruise </h3>
                        <p>ks</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div> 
                        <div class="price"> $90.00 <span>$120.00</span> </div>
                        <a href="#" class="btn">book now</a>
                    </div>
                </div>

                <div class="box">
                    <img src="Images/sapa.png" alt=""/>
                    <div class="content">
                        <h3> <i class="fas fa-map-marker-alt"></i> KK Sapa Hotel </h3>
                        <p>ks</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div> 
                        <div class="price"> $90.00 <span>$120.00</span> </div>
                        <a href="#" class="btn">book now</a>
                    </div>
                </div>

                <div class="box">
                    <img src="Images/dalat.png" alt=""/>
                    <div class="content">
                        <h3> <i class="fas fa-map-marker-alt"></i> Du Parc Hotel Dalat </h3>
                        <p>ks</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div> 
                        <div class="price"> $90.00 <span>$120.00</span> </div>
                        <a href="#" class="btn">book now</a>
                    </div>
                </div>

                <div class="box">
                    <img src="Images/condao.png" alt=""/>
                    <div class="content">
                        <h3> <i class="fas fa-map-marker-alt"></i> Six Senses Con Dao </h3>
                        <p>ks</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div> 
                        <div class="price"> $90.00 <span>$120.00</span> </div>
                        <a href="#" class="btn">book now</a>
                    </div>
                </div>

                <div class="box">
                    <img src="Images/nhatrang.png" alt=""/>
                    <div class="content">
                        <h3> <i class="fas fa-map-marker-alt"></i> Comodo Nha Trang Hotel </h3>
                        <p>ks</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div> 
                        <div class="price"> $90.00 <span>$120.00</span> </div>
                        <a href="#" class="btn">book now</a>
                    </div>
                </div>

            </div>

        </section>

        <!-- packages section ends -->
        <!-- services section starts  -->

        <section class="services" id="services">

            <h1 class="heading">
                <span>s</span>
                <span>e</span>
                <span>r</span>
                <span>v</span>
                <span>i</span>
                <span>c</span>
                <span>e</span>
                <span>s</span>
            </h1>

            <div class="box-container">

                <div class="box">
                    <i class="fas fa-hotel"></i>
                    <h3>affordable hotels</h3>
                    <p>...</p>
                </div>
                <div class="box">
                    <i class="fas fa-utensils"></i>
                    <h3>food and drinks</h3>
                    <p>...</p>
                </div>
                <div class="box">
                    <i class="fas fa-bath"></i>
                    <h3>Bath</h3>
                    <p>...</p>
                </div>
                <div class="box">
                    <i class="fas fa-globe-asia"></i>
                    <h3>around the world</h3>
                    <p>...</p>
                </div>
                <div class="box">
                    <i class="fas fa-plane"></i>
                    <h3>fastest travel</h3>
                    <p>...</p>
                </div>
                <div class="box">
                    <i class="fas fa-hiking"></i>
                    <h3>adventures</h3>
                    <p>...</p>
                </div>

            </div>

        </section>

        <!-- services section ends -->
        <!-- gallery section starts  -->

        <!-- <section class="gallery" id="gallery">
    
            <h1 class="heading">
                <span>g</span>
                <span>a</span>
                <span>l</span>
                <span>l</span>
                <span>e</span>
                <span>r</span>
                <span>y</span>
            </h1>
    
            <div class="box-container">
    
                <div class="box">
                    <img src="images/g-1.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-2.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-3.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-4.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-5.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-6.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-7.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-8.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
                <div class="box">
                    <img src="images/g-9.jpg" alt="">
                    <div class="content">
                        <h3>amazing places</h3>
                        <p>...</p>
                        <a href="#" class="btn">see more</a>
                    </div>
                </div>
    
            </div>
    
        </section> -->

        <!-- gallery section ends -->
        <!-- review section starts  -->

        <section class="review" id="review">

            <h1 class="heading">
                <span>r</span>
                <span>e</span>
                <span>v</span>
                <span>i</span>
                <span>e</span>
                <span>w</span>
            </h1>

            <div class="swiper-container review-slider">

                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="box">
                            <img src="Images/pic4.png" alt=""/>
                            <h3>Nam</h3>
                            <p>...</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="box">
                            <img src="Images/pic4.png" alt=""/>
                            <h3>Kiet</h3>
                            <p>...</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="box">
                            <img src="Images/trung.jpg" alt=""/>
                            <h3>Pham Hoang Trung</h3>
                            <p>...</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="box">
                            <img src="Images/Duc.jpg" alt=""/>
                            <h3>Do Huu Duc</h3>
                            <p>...</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="box">
                            <img src="Images/pic4.png" alt=""/>
                            <h3>Hy</h3>
                            <p>...</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div>
                    </div>
                    </section>

                    <!-- review section ends -->
                    <!-- contact section starts  -->

                    <section class="contact" id="contact">

                        <h1 class="heading">
                            <span>c</span>
                            <span>o</span>
                            <span>n</span>
                            <span>t</span>
                            <span>a</span>
                            <span>c</span>
                            <span>t</span>
                        </h1>

                        <div class="row">

                            <div class="image">
                                <img src="Images/travel.jpg" alt=""/>
                            </div>

                            <form action="">
                                <div class="inputBox">
                                    <input type="text" placeholder="name">
                                    <input type="email" placeholder="email">
                                </div>
                                <div class="inputBox">
                                    <input type="number" placeholder="number">
                                    <input type="text" placeholder="subject">
                                </div>
                                <textarea placeholder="message" name="" id="" cols="30" rows="10"></textarea>
                                <input type="submit" class="btn" value="send message">
                            </form>

                        </div>

                    </section>

                    <!-- contact section ends -->
                    <!-- brand section  -->
                    <!--<section class="brand-container">
                
                        <div class="swiper-container brand-slider">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide"><img src="images/brand.png" alt=""></div>
                                <div class="swiper-slide"><img src="images/2.jpg" alt=""></div>
                                <div class="swiper-slide"><img src="images/3.jpg" alt=""></div>
                                <div class="swiper-slide"><img src="images/4.jpg" alt=""></div>
                                <div class="swiper-slide"><img src="images/5.jpg" alt=""></div>
                                <div class="swiper-slide"><img src="images/6.jpg" alt=""></div>
                            </div>
                        </div>
                
                    </section>-->

                    <!-- footer section  -->

                    <section class="footer">

                        <div class="box-container">

                            <div class="box">
                                <h3>about us</h3>
                                <p>We are team ... This is my our project for SWP391</p>
                            </div>
                            <div class="box">
                                <h3>locations</h3>
                                <a href="#">Ha Long</a>
                                <a href="#">Da Nang</a>
                                <a href="#">Con Dao</a>
                                <a href="#">Da Lat</a>
                                <a href="#">Nha Trang</a>
                                <a href="#">SaPa</a>
                            </div>
                            <div class="box">
                                <h3>quick links</h3>
                                <a href="#home">home</a>
                                <a href="#book">book</a>
                                <a href="#packages">packages</a>
                                <a href="#services">services</a>
                                <a href="#gallery">gallery</a>
                                <a href="#review">review</a>
                                <a href="#contact">contact</a>
                            </div>
                            <div class="box">
                                <h3>follow us</h3>
                                <a href="https://www.facebook.com/huuduc.devil">facebook</a>
                                <a href="#">instagram</a>
                                <a href="#">twitter</a>
                                <a href="#">linkedin</a>
                            </div>

                        </div>

                        <h1 class="credit"> created by <span> Trung, Đức, Hy, Nam, Kiệt </span> | SWP391 </h1>

                    </section>
















                    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

                    <!-- custom js file link  -->
                    <script src="JavaScript.js"></script>
                    </body>
                    </html>
