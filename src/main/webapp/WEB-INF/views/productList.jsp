<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">

        <div class="page-header">
            <h1> Product Detail</h1>
            <p class="lead"> Here is the detail information of product</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>

            <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image"
                                 style="width: 100%"/></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productCondition}</td>
                        <td>$${product.productPrice}</td>
                        <td>
                            <a href="<spring:url value="/productList/viewProduct/${product.productId}"/>">
                                <span class="glyphicon glyphicon-info-sign"></span>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp"%>
