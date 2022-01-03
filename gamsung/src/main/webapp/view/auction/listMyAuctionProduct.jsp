<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--  
    Document Title
    =============================================
    -->
    <title>Titan | Multipurpose HTML5 Template</title>
    <!--  
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57"	href="../../resources/images/favicons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"	href="../../resources/images/favicons/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"	href="../../resources/images/favicons/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"	href="../../resources/images/favicons/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="../../resources/images/favicons/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="../../resources/images/favicons/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="../../resources/images/favicons/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="../../resources/images/favicons/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="../../resources/images/favicons/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192" href="../../resources/images/favicons/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="../../resources/images/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="../../resources/images/favicons/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="../../resources/images/favicons/favicon-16x16.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="../../resources/images/favicons/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
    <!--  
    Stylesheets
    =============================================
    
    -->
<link href="../../resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Template specific stylesheets-->
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Volkhov:400i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<link href="../../resources/lib/animate.css/animate.css" rel="stylesheet">
<link href="../../resources/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../../resources/lib/et-line-font/et-line-font.css" rel="stylesheet">
<link href="../../resources/lib/flexslider/flexslider.css" rel="stylesheet">
<link href="../../resources/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
<link href="../../resources/lib/owl.carousel/dist/assets/owl.theme.default.min.css"	rel="stylesheet">
<link href="../../resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
<link href="../../resources/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">
<!-- Main stylesheet and color file-->
<link href="../../resources/css/style.css" rel="stylesheet">
<link id="color-scheme" href="../../resources/css/colors/default.css" rel="stylesheet">

<style type="text/css">
</style>

</head>
  <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
      <div class="page-loader">
        <div class="loader">Loading...</div>
      </div>
	<jsp:include page="../common/header.jsp"></jsp:include>
      <div class="main">
        <section class="module-small">
          <div class="container">
            <div class="row">
              <div class="col-sm-4 col-md-3 sidebar">
                <div class="widget">
                  <form role="form">
                    <div class="search-box">
                      <input class="form-control" type="text" placeholder="Search..."/>
                      <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
                    </div>
                  </form>
                </div>
                <div class="widget">
                  <h5 class="widget-title font-alt">캠핑</h5>
                  <ul class="icon-list">
                    <li><a>살라살라</a></li>
                    <li><a>살라살라</a></li>
                    <li><a>살라살라</a></li>
                  </ul>
                </div>
                <div class="widget">
                  <h5 class="widget-title font-alt">중고상품</h5>
                  <ul class="icon-list">
                    <li id="listAddProduct"><a>등록한 상품 목록</a></li>
                    <li id="auctionHistory"><a>경매 내역</a></li>
                    <li id="reviewHistory"><a>리뷰 내역</a></li>
                  </ul>
                </div>
               
              </div>
              <div class="col-sm-8 col-md-9">
                <div class="post">
                <section class="module">
		          <div class="container">
		            <div class="row multi-columns-row">
		              <div class="col-sm-8">
		              	<c:forEach var="auctionProduct" items="${list}">
		                <div class="menu">
		                  <div class="row">
		                    <div class="col-sm-8">
		                      <h4 class="menu-title font-alt">${auctionProduct.auctionProductName}</h4>
		                      <c:if test="${auctionProduct.auctionStatus eq 'WAIT'}">
			                      <div class="menu-detail font-serif"><i class="fa fa-fw">&#xF129;</i> 낙찰된 상품입니다.</div>
		                      </c:if>
		                      <c:if test="${auctionProduct.auctionStatus eq 'CONFIRM'}">
			                      <div class="menu-detail font-serif"><i class="fa fa-fw">&#xF129;</i> 거래완료된 상품입니다.</div>
		                      </c:if>
		                      <c:if test="${auctionProduct.auctionStatus eq 'FAIL'}">
			                      <div class="menu-detail font-serif"><i class="fa fa-fw">&#xF129;</i> 유찰된 상품입니다.</div>
		                      </c:if>
		                      <c:if test="${auctionProduct.auctionStatus eq 'WITHDRAWAL'}">
			                      <div class="menu-detail font-serif"><i class="fa fa-fw">&#xF129;</i> 중도 철회된 상품입니다.</div>
		                      </c:if>
		                      <c:if test="${auctionProduct.auctionStatus eq 'CANCEL'}">
			                      <div class="menu-detail font-serif"><i class="fa fa-fw">&#xF129;</i> 낙찰 취소된 상품입니다.</div>
		                      </c:if>
		                    </div>
		                    <div class="col-sm-4 menu-price-detail">
		                      <h4 class="menu-price font-alt"><fmt:formatNumber type="number" maxFractionDigits="3" value="${auctionProduct.hopefulBidPrice}"/>원</h4>
		                      <h4 class="menu-price font-alt"><i class="fa fa-fw">&#xF0C0;</i>${auctionProduct.productViewCount}</h4>
		                    </div>
		                  </div>
		                </div>
		               	</c:forEach>
		              </div>
		            </div>
		          </div>
		          <div class="container">
		            <div class="row multi-columns-row">
		              <div class="col-sm-8">
		              	<div class="row">
		              		<div class="col-sm-12">
		              			<div class="pagination font-alt">
		              				<a><i class="fa fa-angle-left"></i></a>
										<c:forEach begin="1" end="${totalCount}/10" step="1">
											<a class="active nav" >j</a>
										</c:forEach>
									<a><i class="fa fa-angle-right"></i></a>
								</div>
							</div>
						</div>
		        	  </div>
		          </div>
		       	</div>
	        	</section>												           
                </div>
              </div>
         
            </div>
          </div>
        </section>
        <div class="module-small bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">About Titan</h5>
                  <p>The languages only differ in their grammar, their pronunciation and their most common words.</p>
                  <p>Phone: +1 234 567 89 10</p>Fax: +1 234 567 89 10
                  <p>Email:<a href="#">somecompany@example.com</a></p>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Recent Comments</h5>
                  <ul class="icon-list">
                    <li>Maria on <a href="#">Designer Desk Essentials</a></li>
                    <li>John on <a href="#">Realistic Business Card Mockup</a></li>
                    <li>Andy on <a href="#">Eco bag Mockup</a></li>
                    <li>Jack on <a href="#">Bottle Mockup</a></li>
                    <li>Mark on <a href="#">Our trip to the Alps</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Blog Categories</h5>
                  <ul class="icon-list">
                    <li><a href="#">Photography - 7</a></li>
                    <li><a href="#">Web Design - 3</a></li>
                    <li><a href="#">Illustration - 12</a></li>
                    <li><a href="#">Marketing - 1</a></li>
                    <li><a href="#">Wordpress - 16</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-sm-3">
                <div class="widget">
                  <h5 class="widget-title font-alt">Popular Posts</h5>
                  <ul class="widget-posts">
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="assets/images/rp-1.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Designer Desk Essentials</a></div>
                        <div class="widget-posts-meta">23 january</div>
                      </div>
                    </li>
                    <li class="clearfix">
                      <div class="widget-posts-image"><a href="#"><img src="assets/images/rp-2.jpg" alt="Post Thumbnail"/></a></div>
                      <div class="widget-posts-body">
                        <div class="widget-posts-title"><a href="#">Realistic Business Card Mockup</a></div>
                        <div class="widget-posts-meta">15 February</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr class="divider-d">
        <footer class="footer bg-dark">
          <div class="container">
            <div class="row">
              <div class="col-sm-6">
                <p class="copyright font-alt">&copy; 2017&nbsp;<a href="index.html">TitaN</a>, All Rights Reserved</p>
              </div>
              <div class="col-sm-6">
                <div class="footer-social-links"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-dribbble"></i></a><a href="#"><i class="fa fa-skype"></i></a>
                </div>
              </div>
            </div>
          </div>
        </footer>
      </div>
      <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>
    </main>
    <!--  
    JavaScripts
    =============================================
    -->
	<script src="../../resources/lib/jquery/jquery.js"></script>
    <script src="../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../resources/lib/wow/wow.js"></script>
	<script src="../../resources/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
	<script src="../../resources/lib/isotope/isotope.pkgd.js"></script>
	<script src="../../resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
	<script src="../../resources/lib/flexslider/jquery.flexslider.js"></script>
	<script src="../../resources/lib/owl.carousel/dist/owl.carousel.min.js"></script>
	<script src="../../resources/lib/smoothscroll.js"></script>
	<script src="../../resources/lib/magnific-popup/jquery.magnific-popup.js"></script>
	<script src="../../resources/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
	<script src="../../resources/js/plugins.js"></script>
	<script src="../../resources/js/main.js"></script>
	<script>
		$(function(){
			$('#listAddProduct').on('click',function(){
				$.ajax({url:"list.html",

					success:function(result) {

					$("#div1").html(result);

					}
				});
			});
		});
	</script>
  </body>
</html>