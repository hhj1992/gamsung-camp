<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>

<html lang="ko">

<head>

	<meta charset="utf-8">
	
	<!-- Bootstrap, jQuery CDN -->
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<script src="/resources/lib/jquery/jquery.js"></script>
    <script src="/resources/lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="/resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
  	<link rel="stylesheet" href="/resources/lib/bootstrap/css/bootstrap.min.css"></link>  	
  	
  	
  	<!-- ### headerCampBusiness resources Start ### -->
  	<script src="/resources/lib/jquery/jquery.js"></script>
    
    <!-- Favicons -->
    <meta name="msapplication-TileImage" content="/resources/images/favicons/ms-icon-144x144.png">    
    <meta name="msapplication-TileColor" content="#ffffff">  
    <meta name="theme-color" content="#ffffff">
   
    <!-- Stylesheets -->
    
    <!-- Default stylesheets-->
    <link href="/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Template specific stylesheets-->
    <link href="/resources/lib/animate.css/animate.css" rel="stylesheet">
    <link href="/resources/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="/resources/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="/resources/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="/resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="/resources/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">       
    
    <!-- Main stylesheet and color file-->
    <link href="/resources/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="/resources/css/colors/default.css" rel="stylesheet">  
  	<!-- ### headerCampBusiness resources End ### -->
  
  	<style>
	  body {
            padding-top : 50px;
        }
    </style>

	<script type="text/javascript">
	
		function fncGetList(currentPage) {
			$("#currentPage").val(currentPage)
			$("form").attr("method" , "POST").attr("action" , "/campBusiness/listCamp").submit();
		}
	
		$(function() {
			 
			$( "button.btn.btn-default"  ).on("click" , function() {
				fncGetList(1);
			}); 
			 
			$( "td:nth-child(2)" ).on("click" , function() {
				self.location ="/campBusiness/getCamp?campNo="+$(this).attr("data-campNo");
			});
						
			//==> LINK Event End User ?????? ????????? ????????? 
			$( "td:nth-child(2)" ).css("color" , "red");		
		
		});	
    
	</script>
</head>

<body>

	<!-- ToolBar -->
	<jsp:include page="/view/common/headerCampBusiness.jsp" />
   	
   	<!-- Page Start -->
	<div class="container">
		<div class="page-header text-info">
			<h3>????????? ?????? ??????</h3>
	    </div>
	    
	    <!-- ?????? -->
	    <div class="row">
	    
	    	<div class="col-md-6 text-left">
				<p class="text-primary">
		    		??????  ${resultPage.totalCount} ??????, ?????? ${resultPage.currentPage}  ?????????
		    	</p>
			</div>
		
			<div class="col-md-6 text-right">
				<form class="form-inline" name="detailForm">
			    
					<div class="form-group">
						<select class="form-control" name="searchCondition" >
							<option value="0" ${! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>????????????</option>
							<option value="1" ${! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>????????????</option>
							<option value="2" ${! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>????????????</option>
						</select>
					</div>
					  
					<div class="form-group">
						<label class="sr-only" for="searchKeyword">?????????</label>
					    <input type="text"  class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="?????????"
					    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
					</div>
					  
					<button type="button" class="btn btn-info">??????</button>
					  
					<!-- PageNavigation Page value -->
					<input type="hidden" id="currentPage" name="currentPage" value=""/>
				  
				</form>
	    	</div>
	    
	    </div>
	    
		<!-- ?????? -->
		<br>
		<table class="table table-hover table-striped" >
      
			<thead>
				<tr>
            		<th align="left">No</th>
            		<th align="left">????????????</th>
          			<th align="left">??????</th>
          			<th align="left">?????? ?????????</th>      			
          			<th align="left">?????? ?????????</th>
           			<th align="left">?????????</th>          	
           			<th align="left">Blind</th>          			
				</tr>
       		</thead>
       		
       		<tbody>     
				<c:set var="i" value="0" />
		  		<c:forEach var="camp" items="${list}">
					<c:set var="i" value="${ i+1 }" />
					<tr>
			  			<td align="left">${ i }</td>				
			  			<td align="left" data-campNo="${camp.campNo}">${camp.user.campName}</td>
          				<td align="left">${camp.campRate}</td>
          				<td align="left">${camp.campReservationCount}</td>
          				<td align="left">${camp.campViewCountCurrentMonth}</td>
	           			<td align="left">${camp.campRegDate}</td>
	           			<td align="left">
	 						<c:if test="${ empty camp.deleteFlag || camp.deleteFlag == 'true'}">		
								T
							</c:if>	
	           			</td> 
					</tr>
          		</c:forEach>
        	</tbody>
      
      </table>
	  
 	</div>
 	
 	<!-- PageNavigation -->
	<jsp:include page="./pageNavigator_new.jsp"/>
	
</body>

</html>
	