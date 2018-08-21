<%--
  Created by IntelliJ IDEA.
  User: gqxcd
  Date: 3/25/2018
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">

        <div class="page-header">
            <h1> All products</h1>
            <p class="lead"> Checkout all the awesome products available now!</p>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" style="width: 100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>

                    <p>${product.productDescription}</p>
                    <p><strong>Manufacturer</strong> : ${product.productManufacturer}</p>
                    <p><strong>Category</strong> : ${product.productCategory}</p>
                    <p><strong>Conditon</strong> : ${product.productCondition}</p>
                    <p><strong>Price</strong> : $${product.productPrice}</p>
                </div>

            </div>
        </div>


        <%@include file="/WEB-INF/views/template/footer.jsp"%>
