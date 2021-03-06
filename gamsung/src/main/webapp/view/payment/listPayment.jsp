<%@ page contentType="text/html; charset=utf-8" %>
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
 
    <!-- Favicons -->
    <meta name="msapplication-TileImage" content="/resources/images/favicons/ms-icon-144x144.png">    
    <meta name="msapplication-TileColor" content="#ffffff">  
    <meta name="theme-color" content="#ffffff">
   
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
  	
  	
  	<!-- ### listPayment resources Start ### -->
 	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
 	<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script> 
 	<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
  	
  	
  	<script type="text/javascript">
  				
		$(document).ready(function(){ 
			
			const userRole = $("#userRole").val();
			
			if(userRole == "ADMIN"){
				
				let table = $("#myTable").DataTable({
					"columnDefs": [{
				        "defaultContent": "-",
				        "targets": "_all"
				      }],
		    	    "language": {
		    	        "emptyTable": "????????? ??????",
		    	        "lengthMenu": "???????????? _MENU_ ??? ??????",
		    	        "info": "?????? _START_ - _END_ / _TOTAL_???",
		    	        "infoEmpty": "????????? ??????",
		    	        "infoFiltered": "( _MAX_?????? ??????????????? ???????????? )",
		    	        "search": "?????? ??????: ",
		    	        "zeroRecords": "???????????? ????????? ??????",
		    	        "loadingRecords": "?????????...",
		    	        "processing":     "?????????...",
		    	        "paginate": {
		    	            "next": " ?????? ",
		    	            "previous": " ?????? "
		    	        }
		    	    },
					pageLength: 10,
					bPaginate: true,
					bLengthChange: true,
	                lengthMenu : [ [ 3, 5, 10, 25, 50, 100, -1 ], [ 3, 5, 10,  25, 50, 100, "All" ] ],
					processing: true,
					serverSide: false,
					responsive: true,
					scrollX: true,
					scrollY: 450,
					ordering: true,				
					searching: true,
					footerCallback:function(){
						
						var api = this.api(), data;
						var result = 0;
						
						api.column(5, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(5).footer()).html(result.toLocaleString()+'???'); 
						
						result=0;
						api.column(11, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(11).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(12, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(12).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(13, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(13).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(15, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(15).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(16, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(16).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(17, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(17).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(21, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(21).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(22, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(22).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(23, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(23).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(24, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(24).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(25, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(25).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(26, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(26).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(27, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(27).footer()).html(result.toLocaleString()+'???');				
					
					},

					columnDefs: [
						{ targets: 0,  width: 170 },
						{ targets: 1,  width: 120 },
						{ targets: 2,  width: 450 },
						{ targets: 3,  width: 270 },
						{ targets: 4,  width: 270 },
						{ targets: 5,  width: 120 },
						{ targets: 6,  width: 220 },
						{ targets: 7,  width: 220 },
						{ targets: 8,  width: 370 },
						{ targets: 9,  width: 100 },
						{ targets: 10, width: 140 },
						{ targets: 11, width: 120 },
						{ targets: 12, width: 120 },
						{ targets: 13, width: 120 },
						{ targets: 14, width: 100 },
						{ targets: 15, width: 140 },
						{ targets: 16, width: 140 },
						{ targets: 17, width: 140 },
						{ targets: 18, width: 220 },
						{ targets: 19, width: 100 },
						{ targets: 20, width: 320 },
						{ targets: 21, width: 120 },
						{ targets: 22, width: 120 },
						{ targets: 23, width: 120 },
						{ targets: 24, width: 120 },
						{ targets: 25, width: 140 },
						{ targets: 26, width: 140 },
						{ targets: 27, width: 140 }
					],
					ajax : {
					    url :"/payment/rest/listPayment",
					    type :"POST",
					    dataSrc :''	    
					},
					columns : [
					    {targets: 0, data: "paymentNo"},
					    {targets: 1, data: "paymentStatus",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        switch (data) {
				                        case 1: info = '???????????????'; break;
				                        case 2: info = '????????????'; break;
				                        case 3: info = '????????????'; break;				 
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 2, data: "paymentProduct"},
					    {targets: 3, data: "paymentSender"},
					    {targets: 4, data: "paymentReceiver"},
					    {targets: 5, data: "paymentProductPriceTotal"},
					    {targets: 6, data: "paymentRegTime"},
					    {targets: 7, data: "paymentCode",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        switch (data) {
				                        case 'P0': info = '????????? ?????????'; break;
				                        case 'P1': info = '????????? ??????'; break;
				                        case 'P2': info = '????????? ??????'; break;
				                        case 'R0': info = '?????? ?????????'; break;
				                        case 'R1': info = '?????? ??????'; break;
				                        case 'R2': info = '?????? ?????? ??????'; break;
				                        case 'R3': info = '?????? ???????????? 2??????'; break;
				                        case 'R4': info = '?????? ???????????? 3??????'; break;
				                        case 'R5': info = '?????? ???????????? 4??????'; break;
				                        case 'R6': info = '?????? ???????????? 5??????'; break;
				                        case 'R7': info = '?????? ???????????? 6??????'; break;
				                        case 'R8': info = '?????? ???????????? 7??????'; break;
				                        case 'A0': info = '?????? ?????????'; break;
				                        case 'A1': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A2': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A3': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A4': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A5': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'A6': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A7': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A8': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A9': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A10': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'A11': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A12': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A13': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A14': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A15': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'A16': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A17': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A18': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A19': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A20': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'T0': info = '???????????? ?????????'; break;
				                        case 'T1': info = '????????????'; break;               
			                        }
			                        return info;
			                    }
			                    return data;
			                }   
					    },
					    {targets: 8, data: "paymentReferenceNum",
					    	render: function ( data, type, row, meta ) {
					    		
					    		var refNum = "";				    							    		
					    		console.log(data);
					    				    							    		
					    		if(data.charAt(1) == 'R'){
					    			
					    			refNum = data.substring(1,7);
					    			refNum = refNum.trim();
					    			
					    			console.log("R : "+data.charAt(1));
					    			console.log("R : "+refNum);
					    			
					    			return '<a href="/campGeneral/getMyReservation?reservationNo='+refNum+'">'+data+' ????????????</a>';
					    			
					    		} else if(data.substring(1,5) == 'PROD'){
					    			
					    			refNum = data.substring(1,10);
					    			refNum = refNum.trim();
					    			
					    			console.log("P : "+data.substring(1,5));
					    			console.log("P : "+refNum);
					    			
					    			return '<a href="/auction/getAuctionProduct?auctionProductNo='+refNum+'">'+data+' ????????????</a>';
					    			
					    		} else {
					    			return data;
					    		}   		
					        }	    
					    },
					    {targets: 9, data: "paymentReferenceFee"},
					    {targets: 10, data: "paymentMethod",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        switch (data) {
				                        case 'card': info = '????????????/????????????'; break;
				                        case 'samsung': info = '????????????'; break;
				                        case 'trans': info = '????????? ????????????'; break;
				                        case 'vbank': info = '?????? ??????'; break;
				                        case 'phone': info = '????????? ????????????'; break;				 
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 11, data: "paymentPriceTotal",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 12, data: "paymentPricePay",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 13, data: "paymentPriceFee",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 14, data: "paymentMethodSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == 'point') {
			                        	info = '???????????????';
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 15, data: "paymentPriceTotalSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 16, data: "paymentPricePaySecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 17, data: "paymentPriceFeeSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 18, data: "paymentRefundRegTime"},
					    {targets: 19, data: "paymentRefundCode"},
					    {targets: 20, data: "paymentRefundReferenceNum"},
					    {targets: 21, data: "paymentRefundReferenceFee"},
					    {targets: 22, data: "paymentRefundPriceTotal",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 23, data: "paymentRefundPricePay",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 24, data: "paymentRefundPriceFee",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 25, data: "paymentRefundPriceTotalSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 26, data: "paymentRefundPricePaySecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 27, data: "paymentRefundPriceFeeSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    }
					]
				
				});
			
			/////////////////////////////////////////////////////////////////////////////////// 
			} else {
				
				let table = $("#myTable").DataTable({
					"columnDefs": [{
				        "defaultContent": "-",
				        "targets": "_all"
				      }],
		    	    "language": {
		    	        "emptyTable": "????????? ??????",
		    	        "lengthMenu": "???????????? _MENU_ ??? ??????",
		    	        "info": "?????? _START_ - _END_ / _TOTAL_???",
		    	        "infoEmpty": "????????? ??????",
		    	        "infoFiltered": "( _MAX_?????? ??????????????? ???????????? )",
		    	        "search": "?????? ??????: ",
		    	        "zeroRecords": "???????????? ????????? ??????",
		    	        "loadingRecords": "?????????...",
		    	        "processing":     "?????????...",
		    	        "paginate": {
		    	            "next": " ?????? ",
		    	            "previous": " ?????? "
		    	        }
		    	    },
					pageLength: 10,
					bPaginate: true,
					bLengthChange: true,
	                lengthMenu : [ [ 3, 5, 10, 25, -1 ], [ 3, 5, 10, 25, "All" ] ],
					processing: true,
					serverSide: false,
					responsive: true,
					scrollX: true,
					scrollY: 450,
					ordering: true,				
					searching: true,
					footerCallback:function(){
						
						var api = this.api(), data;
						var result = 0;
						
						api.column(5, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(5).footer()).html(result.toLocaleString()+'???'); 
						
						result=0;
						api.column(10, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(10).footer()).html(result.toLocaleString()+'???');
												
						result=0;
						api.column(12, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(12).footer()).html(result.toLocaleString()+'???');
						
						result=0;
						api.column(16, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(16).footer()).html(result.toLocaleString()+'???');						
						
						result=0;
						api.column(17, {search:'applied'}).data().each(function(data,index){
						    result += parseFloat(data);
						});
						$(api.column(17).footer()).html(result.toLocaleString()+'???');
					
					},

					columnDefs: [
						{ targets: 0,  width: 120 },
						{ targets: 1,  width: 120 },
						{ targets: 2,  width: 450 },
						{ targets: 3,  width: 270 },
						{ targets: 4,  width: 270 },
						{ targets: 5,  width: 120 },
						{ targets: 6,  width: 220 },
						{ targets: 7,  width: 220 },
						{ targets: 8,  width: 370 },
						{ targets: 9,  width: 140 },
						{ targets: 10, width: 140 },
						{ targets: 11, width: 120 },
						{ targets: 12, width: 140 },
						{ targets: 13, width: 220 },
						{ targets: 14, width: 100 },
						{ targets: 15, width: 320 },
						{ targets: 16, width: 120 },
						{ targets: 17, width: 140 }
					],
					ajax : {
					    url :"/payment/rest/listPayment",
					    type :"POST",
					    dataSrc :''	    
					},
					columns : [
					    {targets: 0, data: "paymentNo"},
					    {targets: 1, data: "paymentStatus",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        switch (data) {
				                        case 1: info = '???????????????'; break;
				                        case 2: info = '????????????'; break;
				                        case 3: info = '????????????'; break;					 
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 2, data: "paymentProduct"},
					    {targets: 3, data: "paymentSender"},
					    {targets: 4, data: "paymentReceiver"},
					    {targets: 5, data: "paymentProductPriceTotal"},
					    {targets: 6, data: "paymentRegTime"},
					    {targets: 7, data: "paymentCode",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        switch (data) {
				                        case 'P0': info = '????????? ?????????'; break;
				                        case 'P1': info = '????????? ??????'; break;
				                        case 'P2': info = '????????? ??????'; break;
				                        case 'R0': info = '?????? ?????????'; break;
				                        case 'R1': info = '?????? ??????'; break;
				                        case 'R2': info = '?????? ?????? ??????'; break;
				                        case 'R3': info = '?????? ???????????? 2??????'; break;
				                        case 'R4': info = '?????? ???????????? 3??????'; break;
				                        case 'R5': info = '?????? ???????????? 4??????'; break;
				                        case 'R6': info = '?????? ???????????? 5??????'; break;
				                        case 'R7': info = '?????? ???????????? 6??????'; break;
				                        case 'R8': info = '?????? ???????????? 7??????'; break;
				                        case 'A0': info = '?????? ?????????'; break;
				                        case 'A1': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A2': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A3': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A4': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A5': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'A6': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A7': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A8': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A9': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A10': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'A11': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A12': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A13': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A14': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A15': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'A16': info = '?????? A?????? ???????????? ?????????'; break;
				                        case 'A17': info = '?????? B?????? ???????????? ?????????'; break;
				                        case 'A18': info = '?????? C?????? ???????????? ?????????'; break;
				                        case 'A19': info = '?????? D?????? ???????????? ?????????'; break;
				                        case 'A20': info = '?????? E?????? ???????????? ?????????'; break;
				                        case 'T0': info = '???????????? ?????????'; break;
				                        case 'T1': info = '????????????'; break;               
			                        }
			                        return info;
			                    }
			                    return data;
			                }   
					    },
					    {targets: 8, data: "paymentReferenceNum",
					    	render: function ( data, type, row, meta ) {
					    		
					    		var refNum = "";				    							    		
					    		console.log(data);
					    				    							    		
					    		if(data.charAt(1) == 'R'){
					    			
					    			refNum = data.substring(1,7);
					    			refNum = refNum.trim();
					    			
					    			console.log("R : "+data.charAt(1));
					    			console.log("R : "+refNum);
					    			
					    			return '<a href="/campGeneral/getMyReservation?reservationNo='+refNum+'">'+data+' ????????????</a>';
					    			
					    		} else if(data.substring(1,5) == 'PROD'){
					    			
					    			refNum = data.substring(1,10);
					    			refNum = refNum.trim();
					    			
					    			console.log("P : "+data.substring(1,5));
					    			console.log("P : "+refNum);
					    			
					    			return '<a href="/auction/getAuctionProduct?auctionProductNo='+refNum+'">'+data+' ????????????</a>';
					    			
					    		} else {
					    			return data;
					    		}   		
					        }	    
					    },
					    {targets: 9, data: "paymentMethod",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        switch (data) {
				                        case 'card': info = '????????????/????????????'; break;
				                        case 'samsung': info = '????????????'; break;
				                        case 'trans': info = '????????? ????????????'; break;
				                        case 'vbank': info = '?????? ??????'; break;
				                        case 'phone': info = '????????? ????????????'; break;				 
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 10, data: "paymentPriceTotal",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 11, data: "paymentMethodSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == 'point') {
			                        	info = '???????????????';
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 12, data: "paymentPriceTotalSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 13, data: "paymentRefundRegTime"},
					    {targets: 14, data: "paymentRefundCode"},
					    {targets: 15, data: "paymentRefundReferenceNum"},
					    {targets: 16, data: "paymentRefundPriceTotal",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    },
					    {targets: 17, data: "paymentRefundPriceTotalSecond",
					    	render: function(data, type) {
			                    if (type === 'display') {
			                        let info = '';		 
			                        if (data == '0') {
			                        	info = '';
			                        } else {
			                        	info = data;
			                        }
			                        return info;
			                    }
			                    return data;
			                }  					    
					    }
				
					]
				
				});
				
			}			
			
			/* Column??? ???????????? ?????? */
			$('#myTable_filter').prepend('<select id="select"></select>');
			
			$('#myTable > thead > tr').children().each(function (indexInArray, valueOfElement) { 
				$('#select').append('<option>'+valueOfElement.innerHTML+'</option>');
			});
				
			$('.dataTables_filter input').unbind().bind('keyup', function () {
		        var colIndex = document.querySelector('#select').selectedIndex;
		        table.column(colIndex).search(this.value).draw();
		    });
			
	        
		});
		

	</script>
  	<!-- ### listPayment resources End ### -->
  	
  	
  	<!-- ?????? Start -->
  	<script type="text/javascript">  	

		
	</script>
	<!-- ?????? End --> 	 	

	<style>
	    body > div.container-fluid{
	        margin-top: 60px;
	    }
	    
	    .form-horizontal .control-label{
	        text-align: left;
	    	
	</style>	


</head>

<body>

	<!-- header -->
	<c:if test="${user.role != 'BUSINESS' }">
		<jsp:include page="/view/common/header.jsp"/>
	</c:if>
	
	<c:if test="${user.role == 'BUSINESS' }">
		<jsp:include page="/view/common/headerCampBusiness.jsp" />
	</c:if>

<div class="container-fluid">	
	<div class="col-xs-1">
	</div>
	<div class="col-xs-10">
		<form role="form">
		
	  	<input type="hidden" id="userRole" name="userRole" value="${user.role}">
		<input type="hidden" id="userId" name="userId" value="${user.id}">
			
			<!-- ?????? Start -->
			<div class="row">  
				<h3 class="col-sm-2 mb-0">&nbsp;&nbsp;&nbsp;&nbsp;????????????</h3>	  		
			</div>
			<!-- ?????? End -->
				
			<hr class="divider-w mt-10 mb-20">
			
			<!-- ?????? Start -->			   
			<div class="row">
		
			<table id="myTable" class="ui celled table">
								
				<thead>
					<tr>		  	  
						<th>????????????</th>
						<th>??????</th>
						<th>??????</th>
						<th>????????????</th>
						<th>????????????</th>
						<th>??? ??????</th>
						<th>????????????</th>
						<th>????????????</th>
						<th>????????????</th>
							<c:if test="${user.role == 'ADMIN' }">
								<th>?????????(%)</th>
							</c:if>						
						<th>??????????????????</th>
						<th>?????????????????????</th>
							<c:if test="${user.role == 'ADMIN' }">
								<th>?????????????????????</th>
								<th>?????????????????????</th>
							</c:if>						
						<th>???????????????</th>
						<th>????????????????????????</th>
							<c:if test="${user.role == 'ADMIN' }">
								<th>????????????????????????</th>
								<th>????????????????????????</th>
							</c:if>						
						<th>????????????</th>
						<th>????????????</th>
						<th>??????????????????</th>
							<c:if test="${user.role == 'ADMIN' }">
								<th>???????????????(%)</th>
							</c:if>							
						<th>?????????????????????</th>
							<c:if test="${user.role == 'ADMIN' }">
								<th>?????????????????????</th>
								<th>?????????????????????</th>
							</c:if>
						<th>????????????????????????</th>						
							<c:if test="${user.role == 'ADMIN' }">
								<th>????????????????????????</th>
								<th>????????????????????????</th>	  
							</c:if>							
					</tr>
				</thead>
				
				<tfoot>
					<tr>
						<!-- ?????? ?????? -->
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
							<c:if test="${user.role == 'ADMIN' }">
								<th></th>
							</c:if>
						<th></th>
						<th></th>
							<c:if test="${user.role == 'ADMIN' }">
								<th></th>
								<th></th>
							</c:if>
						<th></th>
						<th></th>
							<c:if test="${user.role == 'ADMIN' }">
								<th></th>
								<th></th>
							</c:if>
						<th></th>
						<th></th>
						<th></th>
							<c:if test="${user.role == 'ADMIN' }">
								<th></th>
							</c:if>
						<th></th>
							<c:if test="${user.role == 'ADMIN' }">
								<th></th>
								<th></th>
							</c:if>
						<th></th>
							<c:if test="${user.role == 'ADMIN' }">
								<th></th>
								<th></th>
							</c:if>
					</tr>
				</tfoot>
				
			</table>		
		       	  
			</div>
			<!-- ?????? End -->		
	
		</form>
		</div>
	</div>			
</div>

</body>
</html>