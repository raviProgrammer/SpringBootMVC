<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1 style="color:red;text-align:center">
<b>Passing Model class object from controller class to view components.</b>
</h1><br><br>

<b> Model Data is below:</b><br><br>
<c:if test="${!empty prodData}">
Product Id: ${prodData.mid}<br>
Product Name: ${prodData.pname}<br>
Product Price: ${prodData.price}<br>
Product Quantity: ${prodData.qty}<br>
</c:if>
<br>
<b><a href="./">Go to Home Page</a></b>