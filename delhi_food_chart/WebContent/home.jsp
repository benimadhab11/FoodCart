<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbconnectivity.Dbconnectivity"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Home Delhi Food Cart</title>
<meta name="description" content="Delhi Food Cart" />
<meta name="keywords" content="Samosa" />
<meta name="robots" content="INDEX,FOLLOW" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />



<link rel="stylesheet" type="text/css" href="style2.css" media="all" />
<script type="text/javascript" src="http://www.innerchef.com/media/js/2731fece31c6752d34173c7145b44c33.js"></script>
<link rel="stylesheet" type="text/css" href="http://www.innerchef.com/skin/frontend/innerchef3.0/default/css/jquery-ui.css">
<script type="text/javascript" src="http://www.innerchef.com/skin/frontend/innerchef3.0/default/js/jquery-ui.js"></script>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:400,500" />

<link rel="stylesheet" type="text/css" href="style.css" media="all" />

 <link rel="stylesheet" href="css/style.css">
 

</head>
<%! 
   ResultSet rs = null;
  Connection con = null;
%>
<%
 	
	
	Dbconnectivity db = new Dbconnectivity();
    con =  db.getConnectivity();
    PreparedStatement ps = con.prepareStatement("select * from menu");
	rs = ps.executeQuery();
	if(rs.next())
	{
		
	
	 
 
%>
<body bgcolor="none">

<div class="wrapper">
        <noscript>
        <div class="global-site-notice noscript">
            <div class="notice-inner">
                <p>
                    <strong>JavaScript seems to be disabled in your browser.</strong><br />
                    You must have JavaScript enabled in your browser to utilize the functionality of this website.                </p>
            </div>
        </div>
    </noscript>
    <div class="page">
        <!-- Modal start -->

 <meta name="author" content="">
    <meta name="apple-itunes-app" content="app-id=1052993793">
    <meta name="google-play-app" content="app-id=com.innerchef.Activities">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="http://www.innerchef.com/skin/frontend/innerchef3.0/default/css/jquery.smartbanner.css" type="text/css" media="screen">
	 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <script src="http://www.innerchef.com/skin/frontend/innerchef3.0/default/js/jquery.smartbanner.js"></script>




  <script>
jQuery(function(){
        // Check the initial Poistion of the Sticky Header
        var stickyHeaderTop = jQuery('#stickyheader').offset().top;
        jQuery(window).scroll(function(){
                if( jQuery(window).scrollTop() > stickyHeaderTop ) {
                        jQuery('#stickyheader').css({position: 'fixed', top: '0px'});
                        jQuery('#stickyalias').css('display', 'block');
                } else {
                        jQuery('#stickyheader').css({position: 'static', top: '0px'});
                        jQuery('#stickyalias').css('display', 'none');
                }
        });
  });
  </script>




<script>
jQuery(document).ready(function () {
    //stick in the fixed 100% height behind the navbar but don't wrap it
    jQuery('#slide-nav.navbar-inverse').after(jQuery('<div class="inverse" id="navbar-height-col"></div>'));
    jQuery('#slide-nav.navbar-default').after(jQuery('<div id="navbar-height-col"></div>'));
    // Enter your ids or classes
    var toggler = '.navbar-toggle';
    var pagewrapper = '#page-content';
    var navigationwrapper = '.navbar-header';
    var menuwidth = '100%'; // the menu inside the slide menu itself
    var slidewidth = '80%';
    var menuneg = '-100%';
    var slideneg = '-80%';
    jQuery("#slide-nav").on("click", toggler, function (e) {
        var selected = jQuery(this).hasClass('slide-active');
        jQuery('#slidemenu').stop().animate({
            left: selected ? menuneg : '0px'
        });
        jQuery('#navbar-height-col').stop().animate({
            left: selected ? slideneg : '0px'
        });
        jQuery(pagewrapper).stop().animate({
            left: selected ? '0px' : slidewidth
        });
        jQuery(navigationwrapper).stop().animate({
            left: selected ? '0px' : slidewidth
        });
        jQuery(this).toggleClass('slide-active', !selected);
        jQuery('#slidemenu').toggleClass('slide-active');
        jQuery('#page-content, .navbar, body, .navbar-header').toggleClass('slide-active');
    });
    var selected = '#slidemenu, #page-content, body, .navbar, .navbar-header';
    jQuery(window).on("resize", function () {
        if (jQuery(window).width() > 767 && jQuery('.navbar-toggle').is(':hidden')) {
            jQuery(selected).removeClass('slide-active');
        }
    });
});
</script>

<div id="stickyheader" class="navbar navbar-default  navbar-static-top searchfltr">
				<div>

					<div class="collapse navbar-collapse main-nav">
						<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
              <div class="container">


                    <a href="/" style="margin: 0; float: none;" class="brand"><img alt="InnerChef-Logo" src="logo_new.png"></a>



                  </div>
						</div>
            <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 crt">
              <ul class="nav navbar-nav">
                   <li>
<a href="insert.jsp">Insert</a>
        </li>
              </ul>
                  </div>

				<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 crt">
                  <ul class="nav navbar-nav">
                       <li>

                        		<script>
                           function changeValue(o){
                             document.getElementById('typechange').value=o;
                             document.getElementById('typechange2').value=o;
                            }
                        </script>
		<a rel="nofollow" onclick="changeValue('http://www.innerchef.com/bangalore/checkout/cart/')" class="inweb" data-toggle="modal"   data-target="#myModal-sign-in">
			<i id="toggle" class="fa fa-shopping-cart countcart" aria-hidden="true" >0</i>
		</a>
						</li>
                  </ul>
              </div>
              </div>
			    <style>
			  @media (max-width:769px) {
			html, body { overflow-x: hidden;	overflow-y: scroll;	}
			 -webkit-overflow-scrolling: touch;
			  #verifyotp > input {    margin-bottom: 10px;    width: 100%;}
			  }
			#slide-nav .dropdown:hover .dropdown-menu {    display: block; }
					 @media only screen and (max-width: 768px) {
  #verifyotp > input {    margin-bottom: 10px;    width: 100%;}
  }
			  </style>
			  			<div class="navbar navbar-inverse navbar-fixed-top mobile" role="navigation" id="slide-nav">
  <div class="container" style="overflow: hidden;">
   <div class="navbar-header">
   <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
		<a class="navbar-toggle">
		  <span class="sr-only">Toggle navigation</span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		 </a>
	 </div>
	 <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 mlogo">
	 <a href="/" class="mobile_logo" ><img src="chats/aloo_chat.jpg"></a>
	 </div>
	  <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 mcart">


		<a onclick="changeValue('http://www.innerchef.com/bangalore/checkout/cart/')" rel="nofollow" class="inweb" data-toggle="modal" data-target="#myModal-sign-in">
	<span class="fa fa-shopping-cart countcart2" aria-hidden="true">0</span>
		</a>

			  </div>
   </div>
   <div id="slidemenu" style="top: 0;">

  <div class="panel-group" style="margin-bottom: 0px; text-align: center;">

    <div class="panel panel-default" style=" border-radius: 0;">
      <div class="panel-heading" style="background-color: #fff; color: #0b6ba3;">
        <h4 class="panel-title">
          <a href="http://www.innerchef.com/bangalore/">Home</a>
        </h4>
      </div>
    </div>
  </div>

  </div>
    <div class="panel-group" style="margin-bottom: 0px; text-align: center;">

    <div class="panel panel-default" style=" border-radius: 0;">
      <div class="panel-heading" style="background-color: #fff; color: #0b6ba3;">
        <h4 class="panel-title">
          	<a rel="nofollow" class="inweb" data-toggle="modal"  data-target="#myModal-sign-up">Sign Up</a>

        </h4>
      </div>
    </div>
  </div>
  <div class="panel-group" style="margin-bottom: 0px; text-align: center;">

    <div class="panel panel-default" style=" border-radius: 0;">
      <div class="panel-heading" style="background-color: #fff; color: #0b6ba3;">
        <h4 class="panel-title">
      Bangalore<br>
		<a onclick="return callurl();" href="#"><i class="fa fa-map-marker"></i> <span style="font-size:12px;">(Change Location)</span></a>
        </h4>
      </div>
    </div>
  </div>
	<div class="container">
  <div class="panel-group" style="margin-bottom: 0px; text-align: center;">

    <div class="panel panel-default" style=" border-radius: 0;">
      <div class="panel-heading" style="background-color: #fff; color: #0b6ba3;">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse168">Ready To Eat  <i class='fa fa-chevron-down'></i></a>
        </h4>
      </div>

    </div>
  </div>
</div>


	 <ul>
	 <li style="margin-left: -10px; padding-top: 20px; list-style:none; text-align: center;"><a style=" border: medium none;" href="http://bit.ly/InnerChefiOSApp" target="blank" title="Download iOS App" ><img width="150" src="http://www.innerchef.com/skin/frontend/innerchef3.0/default//images/apple_app.jpg"></a></li>
	 <li style="margin-left: -10px;  padding-top: 20px; list-style:none; text-align: center;"><a style=" border: medium none;" href="http://bit.ly/InnerChefAndriodApp"  target="blank" title="Download Android App" ><img width="150" src="http://www.innerchef.com/skin/frontend/innerchef3.0/default//images/google_app.jpg"></a></li>
    </ul>

   </div>
  </div>
 </div>
			            </div>
      </div>
	   <div id="stickyalias"></div>
	                          <div class="std"><!-- Header Start -->
<p><header id="myCarousel" class="carousel slide" >
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <style><!--
@media (max-width:769px) {
 .carousel { display:none; }
}
--></style>
<div class="carousel-inner"><!-- forth slide -->
<div class="item active"><a href="#"><img alt="" src="" /></a></div>

<div class="item active"><a href="#"><img alt="" src="" /></a></div>

<div class="item active"><a href="#"><img alt="" src="" /></a></div>

<div class="item active"><a href="#"><img alt="" src="" /></a></div>

<div class="item active"><a href="#"><img alt="" src="" /></a></div>

</div>
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
</header>
<script>
    jQuery('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
</p>
<div class="container">
<div class="row row-offcanvas row-offcanvas-right">
<div class="col-xs-12 col-sm-12">
<div class="row">
<div class="title" style="margin-left: 14px;">
<h3>Chat Menu</h3>
</div>
</div>
</div>
</div>
</div>
<div class="container">
<div class="row row-offcanvas row-offcanvas-right">
<div class="navbar-inverse divbg">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div class="row">
<p>      <!-- Featured recipes Start -->


            <style>
            .plusbox{
                cursor:pointer;
            }
            .rdbox
            {
                cursor:pointer;
            }
            </style>
            <!--<span style="display: none; z-index:9999;" id="waiting" class="please-wait">
            <img class="v-middle" title="Loading next step..." alt="Loading next step..." src="<?php// echo $this->getSkinUrl(); ?>/images/opc-ajax-loader.gif"></span>-->
          <div class="row">

                             <div id="samosa" class="col-xs-12 col-sm-6 col-md-4 col-lg-4" >
 <p id=""></p>
                              <div class="products">



                                                                                            <div class="pimg">
                                <a href="#" title="Samosa Chat">
                                      <img class="img-responsive" src="chats/samosa_chat.jpg" alt="Samosa Chat">
									                  <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                                        <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                                        <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                                    </div>
                                  </a>
                                  <div id='updatevariables'>
                                    <input type='hidden' name='qty' id='productqty1502' value=''/>
                                    <input type="hidden" name="cartid" id="cartid1502" value=''/>
                                    <input type="hidden" name="productid" id="productid1502" value='1502'/>
                                    </div>

                                  </div>
                                                 <div class="ptitle">
					                                                    <div class="bdrveg"><div class="iconveg"></div></div>



                                                                                          Samosa Chat                  </div>
                          <div class="shtdec" style='width:100%'>
                                                                          <div class="bdrveg"><div class="iconveg"></div></div>

										<div class="shtdect"> Samosa Chat Description</div>
                        </div>


                                  <div class="pricedec">


                                    <div class="price">


                                        <div class="price-box">
                                                <span class="regular-price" id="product-price-1502">
                                                    <span class="price">₹30.00</span>
                                                 </span>

                                        </div>



                                    </div>

                                                                <div class="addbox">

                                          <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('1502','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>

                                          <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('1502','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>

                            <div class="rdbox" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/myplusbutton" onclick="showaddme('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/', 150, 1502); shaker();">Add to cart</div>
                            <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/1502/form_key/3RXpGJWhFv4k2Pcw/', 150, 1502); shaker();" data-toggle="modal" data-target="#myModal-1502" class="rdbox">Add to cart</div>
                        </div>
                        <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>

                      <button style="margin-left:5px" onclick="document.getElementById('samosa').remove();"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>





<!-- Vendor Modal start -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                                            <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->

                             <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" >
 <p id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/changescript"></p>
                              <div class="products">



                                                                                            <div class="pimg">
                                <a href="#" title="Sev Puri">
                                      <img class="img-responsive" src="chats/sev_puri.jpg" alt="Sev Puri">
									                                                                                                                         <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                                        <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                                        <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                                    </div>
                                  </a>
                                  <div id='updatevariables'>
                                    <input type='hidden' name='qty' id='productqty609' value=''/>
                                    <input type="hidden" name="cartid" id="cartid609" value=''/>
                                    <input type="hidden" name="productid" id="productid609" value='609'/>
                                    </div>

                                  </div>
                                                 <div class="ptitle">
					                                                    <div class="bdrveg"><div class="iconveg"></div></div>
                                                                                            Sev Puri                    </div>
                          <div class="shtdec" style='width:100%'>
                                                                          <div class="bdrveg"><div class="iconveg"></div></div>

										<div class="shtdect"> Sev Puri Description</div>
                        </div>


                                  <div class="pricedec">


                                    <div class="price">


    <div class="price-box">
                                                                <span class="regular-price" id="product-price-609">
                                            <span class="price">₹20.00</span>                                    </span>

        </div>

                                    </div>
                                                                                        <div class="addbox">

                                                        <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('609','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>

                                                        <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('609','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>

                                          <div class="rdbox" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/myplusbutton" onclick="showaddme('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/', 260, 609); shaker();">Add to cart</div>
                                          <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/609/form_key/3RXpGJWhFv4k2Pcw/', 260, 609); shaker();" data-toggle="modal" data-target="#myModal-609" class="rdbox">Add to cart</div>
                                      </div>
                                      <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>

                                      <button style="margin-left:5px"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>

<!-- Vendor Modal start -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                                            <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
                             <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" >
 <p id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/changescript"></p>
                              <div class="products">



                                                                                            <div class="pimg">
                                <a href="#" title="Ragda Patties">
                                      <img class="img-responsive" src="chats/ragda_patties.jpg" alt="Ragda Patties">
									                                                                                                                         <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                                        <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                                        <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                                    </div>
                                  </a>
                                  <div id='updatevariables'>
                                    <input type='hidden' name='qty' id='productqty549' value=''/>
                                    <input type="hidden" name="cartid" id="cartid549" value=''/>
                                    <input type="hidden" name="productid" id="productid549" value='549'/>
                                    </div>

                                  </div>
                                                 <div class="ptitle">
					                                                    <div class="bdrveg"><div class="iconveg"></div></div>
                                                                                            Ragda Patties                     </div>
                          <div class="shtdec" style='width:100%'>
                                                                          <div class="bdrveg"><div class="iconveg"></div></div>

										<div class="shtdect"> Ragda Patties Description</div>
                        </div>


                                  <div class="pricedec">


                                    <div class="price">


    <div class="price-box">
                                                                <span class="regular-price" id="product-price-549">
                                            <span class="price">₹40.00</span>                                    </span>

        </div>

                                    </div>
                                                                                        <div class="addbox">

                                                        <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('549','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>

                                                        <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('549','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>

                                          <div class="rdbox" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/myplusbutton" onclick="showaddme('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/', 90, 549); shaker();">Add to cart</div>
                                          <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/549/form_key/3RXpGJWhFv4k2Pcw/', 90, 549); shaker();" data-toggle="modal" data-target="#myModal-549" class="rdbox">Add to cart</div>
                                      </div>
                                      <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>
                                    <button style="margin-left:5px"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>


<!-- Vendor Modal start -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                                            <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
                             <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" >
 <p id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/changescript"></p>
                              <div class="products">



                                                                                            <div class="pimg">
                                <a href="#" title="Dahi Puri">
                                      <img class="img-responsive" src="chats/dahi_puri.jpg" alt="Dahi Puri">
									                                                                                                                         <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                                        <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                                        <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                                    </div>
                                  </a>
                                  <div id='updatevariables'>
                                    <input type='hidden' name='qty' id='productqty548' value=''/>
                                    <input type="hidden" name="cartid" id="cartid548" value=''/>
                                    <input type="hidden" name="productid" id="productid548" value='548'/>
                                    </div>

                                  </div>
                                                 <div class="ptitle">
					                                                    <div class="bdrveg"><div class="iconveg"></div></div>
                                                                                        Dahi Puri                    </div>
                          <div class="shtdec" style='width:100%'>
                                                                          <div class="bdrveg"><div class="iconveg"></div></div>

										<div class="shtdect">Dahi Puri Description</div>
                        </div>


                                  <div class="pricedec">


                                    <div class="price">


    <div class="price-box">
                                                                <span class="regular-price" id="product-price-548">
                                            <span class="price">₹30.00</span>                                    </span>

        </div>

                                    </div>
                                                                                        <div class="addbox">

                                                        <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('548','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>

                                                        <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('548','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>

                                          <div class="rdbox" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myplusbutton" onclick="showaddme('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/', 120, 548); shaker();">Add to cart</div>
                                          <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/', 120, 548); shaker();" data-toggle="modal" data-target="#myModal-548" class="rdbox">Add to cart</div>
                                      </div>
                                      <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>
                                    <button style="margin-left:5px"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>


<!-- Vendor Modal start -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                                            <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" >
<p id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/changescript"></p>
                     <div class="products">



                                                                                   <div class="pimg">
                       <a href="#" title="Papdi Chat">
                             <img class="img-responsive" src="chats/papri_chat.jpg" alt="Papdi Chat">
                                                                                                                                  <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                               <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                               <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                           </div>
                         </a>
                         <div id='updatevariables'>
                           <input type='hidden' name='qty' id='productqty548' value=''/>
                           <input type="hidden" name="cartid" id="cartid548" value=''/>
                           <input type="hidden" name="productid" id="productid548" value='548'/>
                           </div>

                         </div>
                                        <div class="ptitle">
                                                     <div class="bdrveg"><div class="iconveg"></div></div>
                                                                              Papdi Chat                   </div>
                 <div class="shtdec" style='width:100%'>
                                                                 <div class="bdrveg"><div class="iconveg"></div></div>

           <div class="shtdect">Papdi Chat Description</div>
               </div>


                         <div class="pricedec">


                           <div class="price">


<div class="price-box">
                                                       <span class="regular-price" id="product-price-548">
                                   <span class="price">₹30.00</span>                                    </span>

</div>

                           </div>
                                                                               <div class="addbox">

                                               <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('548','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>

                                               <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('548','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>

                                 <div class="rdbox" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myplusbutton" onclick="showaddme('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/', 120, 548); shaker();">Add to cart</div>
                                 <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/', 120, 548); shaker();" data-toggle="modal" data-target="#myModal-548" class="rdbox">Add to cart</div>
                             </div>
                             <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>
                           <button style="margin-left:5px"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>


<!-- Vendor Modal start -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                                   <!-- Contact Modal end -->
                                                   </div>
               </div><!--div  class products ends here-->
           </div>
           <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4" >
<p id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/changescript"></p>
            <div class="products">



                                                                          <div class="pimg">
              <a href="#" title="Papdi Chat">
                    <img class="img-responsive" src="chats/aloo_tikki.jpg" alt="Aloo Tikki">
                                                                                                                         <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                      <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                      <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                  </div>
                </a>
                <div id='updatevariables'>
                  <input type='hidden' name='qty' id='productqty548' value=''/>
                  <input type="hidden" name="cartid" id="cartid548" value=''/>
                  <input type="hidden" name="productid" id="productid548" value='548'/>
                  </div>

                </div>
                               <div class="ptitle">
                                            <div class="bdrveg"><div class="iconveg"></div></div>
                                                                     Aloo Tikki                  </div>
        <div class="shtdec" style='width:100%'>
                                                        <div class="bdrveg"><div class="iconveg"></div></div>

  <div class="shtdect">Aloo tikki Description</div>
      </div>


                <div class="pricedec">


                  <div class="price">


<div class="price-box">
                                              <span class="regular-price" id="product-price-548">
                          <span class="price">₹30.00</span>                                    </span>

</div>

                  </div>
                                                                      <div class="addbox">

                                      <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('548','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>

                                      <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('548','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>

                        <div class="rdbox" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/myplusbutton" onclick="showaddme('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/', 120, 548); shaker();">Add to cart</div>
                        <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/548/form_key/3RXpGJWhFv4k2Pcw/', 120, 548); shaker();" data-toggle="modal" data-target="#myModal-548" class="rdbox">Add to cart</div>
                    </div>
                    <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>
                  <button style="margin-left:5px"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>


<!-- Vendor Modal start -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                          <!-- Contact Modal end -->
                                          </div>
      </div><!--div  class products ends here-->
  </div>






<!-- Vendor Modal start -->
            <style>
                @media (max-width: 1024px and min-width:500px)
                .width35 {
                                                            /* new custom width */
    width: 35%;
}
            </style>
<div class="modal fade" id="myModal-vendor1120" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog width35" style="z-index:9999;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="succadd"><h4 class="modal-title" id="">Nutty Squirrel's Profile</h4></div>
      </div>
      <div class="modal-body">
          <div class="container-fluid">
            <div class="text-center"><img src="http://www.innerchef.com/media/catalog/product/cache/4/logo/250x/17f82f742ffe127f42dca9de82fb58b1/ced/csmaketplace/vendor/company_logo1462276562jpg"></div>
            <div class="text-left" style="padding-top:50px "><h4 class="modal-title" >About Nutty Squirrel :</h4></div>
            <div class="text-left" style="padding-top:10px ">At Nutty Squirrel, we are nuts about ice cream and all the ways it can be served in. Come, discover the world of ice cream sandwiches with us.
Now available on InnerChef, order away to enjoy our tubs and ice cream sandwiches in the comfort of your home</div>
            </div>
      </div>
<div class="modal-footer">
			<a href="http://www.innerchef.com/bangalore/become-a-baker" class="btn btn-primary center-block"><b>Become a Baker</b></a>

	</div>
    </div>
  </div>
</div>
                                                        <!-- Vendor Modal end -->
<!-- Contact Modal start -->
            <style>
                @media (max-width: 1024px and min-width:500px)
                .width35 {
                                                            /* new custom width */
    width: 35%;
}
            </style>

<div class="modal fade" id="myModal-contact1120" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog width35">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="succadd"><h4 class="modal-title" id="">Become a Baker</h4></div>
      </div>
      <div class="modal-body">

          <div class="container-fluid">
            <form role="form" class="form-signin" action="" id="contactForm" method="post">
    <label class="sr-only" for="name">Name<span class="reqfield">*</span></label>
    <input type="text" autofocus required="" class="form-control" name="name"  id="name"  placeholder="Name" title="Name" value="">
    <label class="sr-only" for="email">Email address<span class="reqfield">*</span></label>
    <input type="email" autofocus required="" placeholder="Email address" class="form-control" id="email" name="email"  title="Email" value="" class="input-text required-entry validate-email"  autocapitalize="off" autocorrect="off" spellcheck="false" />
    <label class="sr-only" for="Phone Number">Phone Number<span class="reqfield">*</span></label>
    <input name="telephone" id="telephone" placeholder="Phone Number" title="Phone Number" value="" class="form-control" type="tel" />
    <label class="sr-only" for="Address">Address<span class="reqfield">*</span></label>
    <input type="text" autofocus required="" class="form-control" name="address"  id="address"  placeholder="Address" title="Address" value="">
    <label class="sr-only" for="City">City<span class="reqfield">*</span></label>
    <input type="text" autofocus required="" class="form-control" name="city"  id="city"  placeholder="City" title="City" value="">
    <label for="Additional Info" class="sr-only">Additional Info</label>
    <textarea name="comment" id="comment" title="Comment" class="form-control"></textarea>
    <button type="submit" title="Submit" class="btn btn-lg btn-primary btn-block"><span><span>Submit</span></span></button>
</form>
<script type="text/javascript">
//<![CDATA[
    var contactForm = new VarienForm('contactForm', true);
//]]>
</script>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
            </div>
                                                                                                    <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
 
                                            <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
                            <!-- Vendor Modal start  iiii -->
                            
    <!--  smy data -->
     <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
                            <p id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/changescript"></p>
                              <div class="products">



                                                                                            <div class="pimg">
     <!-- table my -->
  
   
     
 <div class="table-title">
<h3>Order</h3>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">Item Name</th>
<th class="text-left">Price</th>
<th class="text-left"></th>
</tr>
</thead>

<%do
  {
	%>
<tbody >
<tr>
<td class="text-left"  style="color:blue;"><%=rs.getString(2) %></td>
<td class="text-left" style="color:blue;"><%=rs.getString(4) %></td>
<!--  <td class="text-left" style="color:blue;"><input type="text" name="qty" ></td> -->
<td class="text-left" style="color:blue;"><a href=adc?cid=<%=rs.getString(1)%>&price=<%=rs.getString(4)%> >Add to cart</a></td>
											 
</tr>
<% }while(rs.next()); 
}
%>
<tr>
<td class="text-left""><a href="vcs">View cart servlet</a></td>
</tr>
 
</tbody>
</table>
                         
       <!-- end table my -->                                                                                                                 <div class="selectdimg" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/mydiv" style='display:none'>
                                        <p class="number" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/found">0</p>
                                        <p class="dec" id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/decid">Item in cart</p>
                                    </div>
                                  </a>
                                   
                                  <div id='updatevariables'>
                                    <input type='hidden' name='qty' id='productqty882' value=''/>
                                    <input type="hidden" name="cartid" id="cartid882" value=''/>
                                    <input type="hidden" name="productid" id="productid882" value='882'/>
                                    </div>

                                  </div>
                                                 <div class="ptitle">
					                                                    <div class="bdrnonveg"><div class="iconnonveg"></div></div>
                                                                                          Bhel Puri                 </div>
                          <div class="shtdec" style='width:100%'>
                                                                            <div class="bdrnonveg"><div class="iconnonveg"></div></div>

										<div class="shtdect">Bhel Puri Description</div>
                        </div>
                                  <div class="pricedec">
                                    <div class="price">
    <div class="price-box">
      <span class="regular-price" id="product-price-882">
        <span class="price">₹40.00</span>                                    </span>
        </div>
           </div>
          <div class="addbox">
   <div style='display:none; margin-left:10px' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('882','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/'); shaker(); myminusfun('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/');"><span class="glyphicon glyphicon-minus"></span></div>
   <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/myminusbutton" class="plusbox" onclick="subtractproduct('882','3RXpGJWhFv4k2Pcw','http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/'); shaker();"><span class="glyphicon glyphicon-minus"></span></div>
                <div style='display:none' id="http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/showmeadd" onclick="setLocationAjax('http://www.innerchef.com/bangalore/checkout/cart/add/uenc/aHR0cDovL3d3dy5pbm5lcmNoZWYuY29tL2JhbmdhbG9yZS8,/product/882/form_key/3RXpGJWhFv4k2Pcw/', 150, 882); shaker();" data-toggle="modal" data-target="#myModal-882" class="rdbox">Add to cart</div>
              </div>
              <a href="UI/index2.html"><button style="margin-left:20px"class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></a>
      <button style="margin-left:5px"class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button>


<!-- Vendor Modal start  uiiii -->
<!-- Vendor Modal end -->
<!-- Contact Modal start -->
                                            <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
    <!-- end my data -->                        
            <style>
                @media (max-width: 1024px and min-width:500px)
                .width35 {
                                                            /* new custom width */
    width: 35%;
}
            </style>
<div class="modal fade" id="myModal-vendor1123" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog width35" style="z-index:9999;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="succadd"><h4 class="modal-title" id="">Nutty Squirrel's Profile</h4></div>
      </div>
      <div class="modal-body">
          <div class="container-fluid">
            <div class="text-center"><img src="http://www.innerchef.com/media/catalog/product/cache/4/logo/250x/17f82f742ffe127f42dca9de82fb58b1/ced/csmaketplace/vendor/company_logo1462276562jpg"></div>
            <div class="text-left" style="padding-top:50px "><h4 class="modal-title" >About Nutty Squirrel :</h4></div>
            <div class="text-left" style="padding-top:10px ">At Nutty Squirrel, we are nuts about ice cream and all the ways it can be served in. Come, discover the world of ice cream sandwiches with us.
Now available on InnerChef, order away to enjoy our tubs and ice cream sandwiches in the comfort of your home</div>
            </div>
      </div>
<div class="modal-footer">
			<a href="http://www.innerchef.com/bangalore/become-a-baker" class="btn btn-primary center-block"><b>Become a Baker</b></a>

	</div>
    </div>
  </div>
</div>
                                                        <!-- Vendor Modal end -->
<!-- Contact Modal start -->
            <style>
                @media (max-width: 1024px and min-width:500px)
                .width35 {
                                                            /* new custom width */
    width: 35%;
}
            </style>

<div class="modal fade" id="myModal-contact1123" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog width35">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <div class="succadd"><h4 class="modal-title" id="">Become a Baker</h4></div>
      </div>
      <div class="modal-body">

          <div class="container-fluid">
            <form role="form" class="form-signin" action="" id="contactForm" method="post">
    <label class="sr-only" for="name">Name<span class="reqfield">*</span></label>
    <input type="text" autofocus required="" class="form-control" name="name"  id="name"  placeholder="Name" title="Name" value="">
    <label class="sr-only" for="email">Email address<span class="reqfield">*</span></label>
    <input type="email" autofocus required="" placeholder="Email address" class="form-control" id="email" name="email"  title="Email" value="" class="input-text required-entry validate-email"  autocapitalize="off" autocorrect="off" spellcheck="false" />
    <label class="sr-only" for="Phone Number">Phone Number<span class="reqfield">*</span></label>
    <input name="telephone" id="telephone" placeholder="Phone Number" title="Phone Number" value="" class="form-control" type="tel" />
    <label class="sr-only" for="Address">Address<span class="reqfield">*</span></label>
    <input type="text" autofocus required="" class="form-control" name="address"  id="address"  placeholder="Address" title="Address" value="">
    <label class="sr-only" for="City">City<span class="reqfield">*</span></label>
    <input type="text" autofocus required="" class="form-control" name="city"  id="city"  placeholder="City" title="City" value="">
    <label for="Additional Info" class="sr-only">Additional Info</label>
    <textarea name="comment" id="comment" title="Comment" class="form-control"></textarea>
    <button type="submit" title="Submit" class="btn btn-lg btn-primary btn-block"><span><span>Submit</span></span></button>
</form>
<script type="text/javascript">
//<![CDATA[
    var contactForm = new VarienForm('contactForm', true);
//]]>
</script>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
            </div>
                                                                                                    <!-- Contact Modal end -->
                                                            </div>
                        </div><!--div  class products ends here-->
                    </div><!--   col-md-4 ends here-->
                          </div>
         <div id='updatevariables'>
                                    <input type='hidden' name='qty' id='productqty1123' value=''/>
                                    <input type="hidden" name="cartid" id="cartid1123" value=''/>
                                    <input type="hidden" name="productid" id="productid1123" value='1123'/>
                                    </div>


    <script type="text/javascript">decorateGeneric($$('ul.products-grid'), ['odd','even','first','last'])</script>

 <div class="toolbar-bottom" style="display:none;">
        <div class="toolbar">
            <div class="sorter">
                            <p class="view-mode">
                                                                <label>View as</label>
                                                                                    <strong title="Grid" class="grid">Grid</strong>
                                                                                                                <a href="http://www.innerchef.com/bangalore/?mode=list" title="List" class="list">List</a>
                                                                                        </p>

            <div class="sort-by">
                <label>Sort By</label>
                <select onchange="setLocation(this.value)" title="Sort By">
                                            <option value="http://www.innerchef.com/bangalore/?dir=asc&amp;order=position" selected="selected">
                            Position                        </option>
                                            <option value="http://www.innerchef.com/bangalore/?dir=asc&amp;order=name">
                            Name                        </option>
                                            <option value="http://www.innerchef.com/bangalore/?dir=asc&amp;order=price">
                            Price                        </option>
                                    </select>
                                    <a href="http://www.innerchef.com/bangalore/?dir=desc&amp;order=position" class="sort-by-switcher sort-by-switcher--asc" title="Set Descending Direction">Set Descending Direction</a>
                            </div>
        </div>
        <div class="pager">
        <div class="count-container">
                            <p class="amount amount--no-pages">
                    <strong>12 Item(s)</strong>
                </p>

            <div class="limiter">
                <label>Show</label>
                <select onchange="setLocation(this.value)" title="Results per page">
                                    <option value="http://www.innerchef.com/bangalore/?limit=16">
                        16                    </option>
                                    <option value="http://www.innerchef.com/bangalore/?limit=32">
                        32                    </option>
                                    <option value="http://www.innerchef.com/bangalore/?limit=48">
                        48                    </option>
                                    <option value="http://www.innerchef.com/bangalore/?limit=64" selected="selected">
                        64                    </option>
                                </select>
            </div>
        </div>


    </div>
</div>
    </div>
<script>
                                      function showaddme(url, pprice, pid)
                                      {
                                          //alert(url);
                                          setLocationAjax(url, pprice, pid);

                                       //   loader(url);
                                          document.getElementById(url+'showmeadd').style.display="block";
                                          document.getElementById(url+'myplusbutton').style.display="none";
                                                    document.getElementById(url+'myminusbutton').style.display="block";
                                                }

                                      </script>
    <script>
    function myminusfun(url)
    {
      //  loader(url);
        var i= document.getElementById(url+'found').innerHTML;
        i--;
        if(i == 0)
        {
            document.getElementById(url+'mydiv').style.display="none";
            document.getElementById(url+'showmeadd').style.display="none";
            document.getElementById(url+'myplusbutton').style.display="block";
            document.getElementById(url+'myminusbutton').style.display="none";
            document.getElementById(url+'found').innerHTML = 0;
            var c = $j('.countcart').text();
            //alert("Count - "+count);
            if(c == 0)
            {
            c = 0;
            }
            var cartval = parseInt(c) - 1 ;
            $j('.countcart').html(cartval).css('display','block');
            $j('.countcart2').html(cartval).css('display','block');
        }
        if(i > 0)
        {
            document.getElementById(url+'found').innerHTML = i;
            var c = $j('.countcart').text();
            //alert("Count - "+count);
            if(c == 0)
            {
            c = 0;
            }
            var cartval = parseInt(c) - 1 ;
            $j('.countcart').html(cartval).css('display','block');
            $j('.countcart2').html(cartval).css('display','block');
        }
        //alert(i);

		if(parseInt(document.getElementById(url+'found').innerHTML)==1)
        {
            document.getElementById(url+'decid').innerHTML='Item in cart';
        }

        else if(parseInt(document.getElementById(url+'found').innerHTML)>1)
        {
            document.getElementById(url+'decid').innerHTML='Items in cart';
        }




    }
    </script>
<script>
function setLocationAjax(url, pprice, pid){

    if(!pprice){pprice = 0;}
      if(!pid){pid = 0;}

	 dataLayer.push({'event': 'AddToCart', 'productId': ''+pid+'', 'currency': 'INR', 'productPrice': ''+pprice+''});
    var $j = jQuery.noConflict();
    var qty = 1;
    var count = $j('.countcart').text();
    //alert("Count - "+count);
    if(count == 0)
    {
        count = 0;
    }
    var cartval = parseInt(count) + 1 ;
    //document.getElementById('mynumber').innerHTML=cartval;
    //alert("Cartval - "+cartval);
    $j('.countcart').html(cartval).css('display','block');
    $j('.countcart2').html(cartval).css('display','block');
    try {
        $j.ajax( {
            type:'post',
            url : url,
            data : {qty:qty},
            success : function(data) {



                if(data) {updatevariables();}

            }
        });
    }
    catch (e) {
        alert(e);
    }
    showmydisplay(url, pprice, pid);
}
function showmydisplay(url, pprice, pid)
{
	var strVar="";
strVar += "<script>dataLayer.push({'event': 'AddToCart', 'productId': '"+pid+"', 'currency': 'INR', 'productPrice': '"+pprice+"'});<\/script> ";
    document.getElementById(url+"changescript").innerHTML = strVar;
        if(document.getElementById(url))
        {
            //alert('found');
            //alert(document.getElementById(url+'found').innerHTML);
            document.getElementById(url+'found').innerHTML=(parseInt(document.getElementById(url+'found').innerHTML)+1);
        }
        else
        {
            //alert('not found');
            document.getElementById(url+'mydiv').style.display="block";
            var mynumber = document.getElementById(url+'found').innerHTML;
            //alert(mynumber);
            mynumber=parseInt(mynumber)+1;
            document.getElementById(url+'found').innerHTML=mynumber;
            //alert('i guess i have added');
        }



		if(parseInt(document.getElementById(url+'found').innerHTML)==1)
        {
            document.getElementById(url+'decid').innerHTML='Item in cart';
        }

        else if(parseInt(document.getElementById(url+'found').innerHTML)>1)
        {
            document.getElementById(url+'decid').innerHTML='Items in cart';
        }
}
function subtractproduct(productid, formkey, url12){
    //alert(cartid);
    //alert(getbaseurl());
    var qty = parseInt(document.getElementById('productqty'+productid).value)-1
    var cartid = document.getElementById('cartid'+productid).value
	var $j = jQuery.noConflict();
    try {
        $j.ajax( {
            type:'post',
            url : getbaseurl()+'checkout/cart/ajaxUpdate',
            data : {qty:qty,id:cartid,form_key:formkey},
            success : function(data) {
                //document.getElementById(url12+'waiting').style.display="none";
                //alert(data);
                if(data) {updatevariables();}
            }
        });
    }
    catch (e) {
        alert(e);
    }
}
function updatevariables(){

    try {
        $j.ajax( {
            type:'get',
            url : getbaseurl()+'checkout/cart/cartdataPlus/',
            success : function(data) {
                //alert(data);
                if(data) {document.getElementById('updatevariables').innerHTML=data;}
            }
        });
    }
    catch (e) {
        alert(e);
    }
}
function getbaseurl(){return "http://www.innerchef.com/bangalore/"; }
function shaker()
{
var $j = jQuery.noConflict();
$j( "#toggle" ).effect('shake', { distance: 5, times: 2 });
}
updatevariables();
</script></p>
</div>
</div>
</div>
</div>
</div></div>        <!-- this has to b
        <div class="main-container col1-layout">
            <div class="main">
                                <div class="col-main">
                                                </div>
            </div>
        </div>
        -->
                    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script type="text/javascript">
    var CaptchaCallback = function(){
        grecaptcha.render('RecaptchaField1', {'sitekey' : '6Lcg8B4TAAAAAKhabLx9zM-dho_9BFdowhfvfl0j', 'callback' : verifyCallback});
        grecaptcha.render('RecaptchaField2', {'sitekey' : '6Lcg8B4TAAAAAKhabLx9zM-dho_9BFdowhfvfl0j', 'callback' : verifyCallback});
        grecaptcha.render('RecaptchaField3', {'sitekey' : '6Lcg8B4TAAAAAKhabLx9zM-dho_9BFdowhfvfl0j', 'callback' : verifyCallback});
    };
</script>
	<script src="//www.google.com/recaptcha/api.js?onload=CaptchaCallback&render=explicit" async defer></script>

    <script type="text/javascript">
		// When the DOM is ready, run this function
		jQuery(document).ready(function() {
		  //Set the carousel options
		  jQuery('#quote-carousel').carousel({
			pause: true,
			interval: 4000,
		  });
		});
	</script>



	<script type="text/javascript">
	var type;
	function messagepop(type){
		//alert(type);
		jQuery(document).ready(function(){
			jQuery.noConflict();
			if(type=='error')
			{
				jQuery("#error").modal();
			}
			else if(type=="sucessfull")
			{
				jQuery("#sucessfull").modal();
			}
		});
	}
	</script>

	<!--footer Start -->
	<!--<div id="foot">-->
		<!--payment Footer -->
		<script type="text/javascript">
			var today = new Date();
			today.setTime(today.getTime());
			var expiress = 1 * 1000 * 60 * 60 * 24;
			var expires_date = new Date(today.getTime()+(expiress));
			Mage.Cookies.expires = expires_date;

		</script>

		<script>
		function setsess(){
			Mage.Cookies.set('subscriptioncheck',true);
		}

function showshowinterested() {
    document.getElementById('showinterested').style.display = 'block';
}

</script>
<script>
var rep = "";
var verifyCallback = function(response) {
	if(response){ rep = response;  }
  };
function contactformcheck(){

if(rep == ""){
    alert("Please verify captcha.");
	return false;
}
else
	return true;
}
</script>
		<!-- Modal -->

		<style>
	.subscription .validation-advice {
    display: block;
    margin-top: 22%;
    position: absolute;
	color: #fff;
}
.referral_popup:hover {    color: #fff !important;}

.bottom div { background-color: #fff;}

@media (max-width:769px) {
	.inputarea {    font-size: 14px;}
	.app_top{display:none;}
	.app_bottom{ display:block; margin-bottom: 10%;}
	.bottom .form { top:0;   left: 10%;    width: 80%;}
	.selectcitybutton {    z-index: 9;}
	.bottom .form img { width:50%; }
}

</style>

		<div class="modal fade subscription" tabindex="-1" aria-hidden="true" aria-labelledby="myModal1"  id="myModal1" role="dialog">
			<div class="modal-dialog" style='z-index:999999'>
				<div class="modal-content" style="border:none;">
				<div class="modal-header" style="float: right;">

					</div>
				 <div class="modal-body">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<img alt="innerchef" src="http://www.innerchef.com/skin/frontend/innerchef3.0/default//images/subscriber_popup_2.png">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 subscriber_button_yes"><button id="interested" onclick="showshowinterested(); setsess();" type="button" >YES PLEASE</button></div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 subscriber_button_no"><button type="button" onclick=" setsess();" class="close" data-dismiss="modal" aria-hidden="true">NO, I'M NOT INTERESTED</button></div>
<div id="showinterested" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 subscribe_submit" style="display:none">
<div class='col-xs-12 col-sm-12 col-md-12 col-lg-12' style=" margin: 0 auto 0 100px; width: 100%; z-index: 99999999; "><div id="RecaptchaField2"></div></div>
					<form action="" method="post" class="validate" target="_parent" id="subscribtion_form" onsubmit="return contactformcheck();">
					<input type="text" class="form-control input-text required-entry validate-email" value="" maxlength="50" name="EMAIL" id="mce-EMAIL" placeholder="eg. hello@innerchef.com"  >
					<input type="hidden" name="b_a541307a867acc5337ff90429_f9520043c9" tabindex="-1" value="">
					<input type="submit" value="GET THE COUPON" name="subscribe" id="mc-embedded-subscribe" class="subscribe_submit_button" />
					<input name="form_key" type="hidden" value="NxYPS7k9IgvlvrtG" />
					</form>

</div>
					</div>
					</div>

			</div>
		</div>
		</div>
		<script type="text/javascript">
    //< ![CDATA[
        var customForm = new VarienForm('subscribtion_form');
    //]]>
</script>


<!-- referral footer -->


<style>

.referral_popup {
    background-color: #1f72b5;
    border-radius: 5px 5px 0 0;
    box-shadow: 0 0 5px 0 #000;
    color: #fff;
    font-size: 17px;
    padding: 8px 21px;
    position: fixed;
    right: -52px;
    top: 50%;
    transform: rotate(270deg);
	-webkit-transform: rotate(270deg);
    z-index: 9;
}

.bottom {  position: relative;}
.bottom .form { border: 1px solid #dddddd;    border-radius: 5px;    top: 10%;    padding: 20px;    position: absolute;    right: 5%;    text-align: center;    width: 80%;}
.bottom .text {  color: #000; font-size: 24px;}
.bottom img { width:100%; }
.paddingtop {    padding-top: 10px;}
.paddingtoponly{ padding-left:0px; padding-top:10px; padding-right:0px;}
.app_smsdes {    border-radius: 0;    margin-top: 10px;}
.bottom .form .btn-primary {    background-color: #000;    border: medium none;}
.paddingnone{ padding:0;}
.paddingall{ padding:10px;}
.referral_popup:hover {    color: #fff;}
html {    scroll-behavior: smooth}
.availablity .dec {    font-size: 22px;}
  @media only screen and (max-width: 768px) {
 .bottom .bordertop { border-top: 1px solid #9a9a9a; }
  }
  </style>

<!-- /.modal -->
		<div class="footer" style="background-color:black">
			<div class="container">
			<!--does it start here-->
      <div class="col-xs-2 col-md-2">

      </div>
					<div class="col-xs-2 col-md-2">
						<a rel="nofollow" href="" style="color:white">Beni</a>
					</div>
      

					<div class="col-xs-2 col-md-2">
					<a rel="nofollow" href="" style="color:white">Gaurav</a>
					</div>
          <div class="col-xs-2 col-md-2">
          <a rel="nofollow" href="" style="color:white">Avinash</a>
          </div>
          <div class="col-xs-2 col-md-2">
          <a rel="nofollow" href="" style="color:white">Ranjeet</a>
          </div>
          <div class="col-xs-2 col-md-2">
          <a rel="nofollow" href="" style="color:white">Rahul</a>
          </div>


			</div>
			<div class="container">

											<div class="col-xs-2 col-md-2" style="color:white">&copy; DUNGEN 2016</div>

			</div>
		</div>


<script type="text/javascript" src="http://getbootstrap.com/2.3.2/assets/js/google-code-prettify/prettify.js"></script>
<script type="text/javascript" src="http://jschr.github.io/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="http://jschr.github.io/bootstrap-modal/js/bootstrap-modal.js"></script>
		<!-- /Footer -->


    </div>
</div>
</body>
</html>
