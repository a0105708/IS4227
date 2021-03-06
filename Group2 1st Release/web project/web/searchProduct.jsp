<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>BOX SHOP a E-commerce online Shopping Category Flat Bootstarp responsive Website Template| Products :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="BOX SHOP Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start slider -->
<script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
<!--end slider -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
				<script type="text/javascript">
			$(window).load(function() {
				$("#flexiselDemo").flexisel({
					visibleItems: 5,
					animationSpeed: 1000,
					autoPlay: true,
					autoPlaySpeed: 3000,    		
					pauseOnHover: true,
					enableResponsiveBreakpoints: true,
			    	responsiveBreakpoints: { 
			    		portrait: { 
			    			changePoint:480,
			    			visibleItems: 1
			    		}, 
			    		landscape: { 
			    			changePoint:640,
			    			visibleItems: 2
			    		},
			    		tablet: { 
			    			changePoint:768,
			    			visibleItems: 3
			    		}
			    	}
			    });
			    
			});
		</script>
		<script type="text/javascript" src="js/jquery.flexisel.js"></script>
</head>
<body>
	<!-- header-section-starts -->
	<div class="header">
		<div class="top-header">
			<div class="wrap">
				
				<div class="header-right">
					<ul>
						<li>
							<i class="user"></i>
							<%if (session.getAttribute("userid")!=null){ %>
                                                        <a href="viewAccount.jsp"><%out.print(session.getAttribute("useremail"));%></a>
                                                        <%} else{ %>
                                                        <a href="login.jsp">Login</a>
                                                        <% } %>
						</li>
                                                
                                                <%if (session.getAttribute("userid")!=null){ %>
                                                <li>
							<i class="cart"></i>
							<a href="order.jsp">My Orders</a>
						</li>
						
                                                <%}%>
                                                
						<li class="login">
							<i class="lock"></i>
							<%if (session.getAttribute("userid")!=null){ %>
							<a href="logout.jsp">Logout</a>
                                                        <%} else{ %>               
							<a href="register.jsp">Sign up</a>
                                                        <% } %>
						</li>
						
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="wrap">
			<div class="header-bottom">
				<div class="logo">
					<a href="index.jsp"><img src="images/logo-4227.png" class="img-responsive" alt="" /></a>
				</div>
				<div class="search">
					<div class="search2">
					  <form action="searchProduct.jsp" method="GET">
						<input type="submit" value="">
						<input type="text" name="productName" value="Search for a product, category or brand" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search for a product, category or brand';}"/>
					  </form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<div class="wrap">
		<%@include file="templates/navigator.jsp" %>
		<div class="main">
    <div class="content">
    	<div class="content_top">
    		<form action="advancedSearch.jsp" method="POST">                
    		<div class="sort">
    		<p>Category:
                    <select name="category">
                            <option>ALL</option>
                            <%-- start web service invocation --%> 
    <%
    try {
	wss.CatelogueMgtWS_Service service = new wss.CatelogueMgtWS_Service();
	wss.CatelogueMgtWS port = service.getCatelogueMgtWSPort();
	// TODO process result here
	java.util.List<wss.CategoryEntity> result = port.getAllCategory();
        if(!result.isEmpty()){
            for(wss.CategoryEntity o: result){
                String cate = o.getCategoryName();
            %>
                <option><%=cate%></option>
            <%}
        }
    } catch (Exception ex) {
	out.println("no category so far");
    }
    %>
    <%-- end web service invocation --%>  				   				
    			</select>
    		</p>
    		</div>
    		<div class="show">
    		<p>Region:
                    <select name="region">
    				<option>ALL</option>
    				     <%-- start web service invocation --%> 
    <%
    try {
	wss.CatelogueMgtWS_Service service = new wss.CatelogueMgtWS_Service();
	wss.CatelogueMgtWS port = service.getCatelogueMgtWSPort();
	// TODO process result here
	java.util.List<wss.RegionEntity> result = port.getAllRegion();
	if(!result.isEmpty()){
            for(wss.RegionEntity o: result){
                String cate = o.getRegionName();
            %>
                <option><%=cate%></option>
            <%}
        }
    } catch (Exception ex) {
	out.println("no region");
    }
    %>
    <%-- end web service invocation --%> 
				   				
    			</select>
    		</p>
    		</div>            
                <div class="show">
    		<p>Winery:
                    <select name="winery">
    				<option>ALL</option>
    				     <%-- start web service invocation --%> 
    <%
    try {
	wss.CatelogueMgtWS_Service service = new wss.CatelogueMgtWS_Service();
	wss.CatelogueMgtWS port = service.getCatelogueMgtWSPort();
	// TODO process result here
	java.util.List<wss.WineryEntity> result = port.getAllWinery();
	if(!result.isEmpty()){
            for(wss.WineryEntity o: result){
                String cate = o.getWineryName();
            %>
                <option><%=cate%></option>
            <%}
        }
    } catch (Exception ex) {
	out.println("no winery");
    }
    %>
    <%-- end web service invocation --%> 
				   				
    			</select>
    		</p>                           
    		</div>
                <div class="heading">                   
                    <input type="submit" value="Advanced Search">
    		</div>
                <div class="clearfix"></div>
                </form>
    	</div>
    <div class="section group">
                        <%-- start web service invocation --%> 
    <%
    try {
	wss.ProductMgtWS_Service service = new wss.ProductMgtWS_Service();
	wss.ProductMgtWS port = service.getProductMgtWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String itemName = request.getParameter("productName");
	// TODO process result here
	wss.ItemEntity result = port.searchProduct(itemName);	
        
        java.lang.String tasting = result.getTastingNote();
        java.lang.String vitage = result.getVitage();
    %>
            <div class="grid_1_of_4 images_1_of_4">
					 <a href="single.jsp?id=<%out.print(result.getId());%>">
                                             
                                              <%if(result.getId()%2==0){%>
                                             <img src="images/new-pic3.jpg" style="width: 160px; height: 150px;" alt="" />
                                             <%}else{%>
                                             <img src="images/new-pic4.jpg" style="width: 160px; height: 150px;" alt="" />
                                             <%} %>
                                         </a>
                                         <h2>Product Name: <%=itemName%></h2>
                                         <h2>Price: <%=tasting%></h2>
                                         <h2>Vintage: <%=vitage%></h2>
					  <div class="button"><span><img src="images/cart.jpg" alt="" /><a href="single.jsp?id=<%out.print(result.getId());%>" class="cart-button">Add to Cart</a></span> </div>
				     <div class="button"><span><a href="single.jsp?id=<%out.print(result.getId());%>" class="details">Details</a></span></div>
				</div>
        <%} catch (Exception ex) {
	out.println("no result...");
    }
    %>
    <%-- end web service invocation --%> 
				<div class="clearfix"></div>
			</div>
	 <%@include file="templates/footer.jsp"%>
</body>
</html>