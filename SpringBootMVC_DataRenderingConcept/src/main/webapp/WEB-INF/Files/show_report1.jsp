<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1 style="color:red;text-align:center">
<b>Passing Array, Collection values from controller class to view components.</b>
</h1><br><br>

<b> Favorite colors in Array Mode: </b>
<c:if test="${!empty favcolors}">
<c:forEach var="color" items="${favcolors}">
${color},
</c:forEach>
</c:if> <br>

<b> Nick Name in List Collection Mode:</b>
<c:if test="${!empty nicknames}">
<c:forEach var="name" items="${nicknames}">
${name},
</c:forEach>
</c:if><br>

<b> Phone Number in Set Collection Mode:</b>
<c:if test="${!empty phonenumbers}">
<c:forEach var="phone" items="${phonenumbers}">
${phone},
</c:forEach>
</c:if><br>

<b> Id Details in Map Collection Mode:</b>
<c:if test="${!empty idDeatils}">
<c:forEach var="id" items="${idDeatils}"> <br>
${id.key}--> ${id.value}
</c:forEach>
</c:if><br>

<b><a href="./">Go to Home Page</a></b>