<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1 style="color:red;text-align:center">
<b>Passing collection of model class object from controller class to view components.</b>
</h1><br><br>

<c:choose>
<c:when test="${!empty prodList}">
<table align="center" bgcolor="red" border="1">
<tr>
<th>PID</th>
<th>PNAME</th>
<th>PRICE</th>
<th>QUANTITY</th>
</tr>
<c:forEach var="prod" items="${prodList}"> 
<tr>
<td>${prod.mid}</td>
<td>${prod.pname}</td>
<td>${prod.price}</td>
<td>${prod.qty}</td>
</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>
<h1 style="color:green;text-align:center"> No Records are found</h1>
</c:otherwise>

</c:choose>

<b><a href="./">Go to Home Page</a></b>