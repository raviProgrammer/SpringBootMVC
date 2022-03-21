<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h1 style="color:red;text-align:center"> Student Registration Form</h1><br>

<!-- if GetMapping request is launch and same request to PostMapping then no Need of action attribute in form tag 
because by default same GetMapping request is launch so GetMapping request and PostMapping Request are same 
so PostMapping is Launch by default -->

<form:form modelAttribute="stud">
<table align="center" bgcolor="blue">
<tr>
<td>Student NO:</td>
<td><form:input type="number" path="sno"/></td>
</tr>
<tr>
<td>Student Name:</td>
<td><form:input path="sname"/></td>
</tr>
<tr>
<td>Student Address:</td>
<td><form:input path="adds"/></td>
</tr>
<tr>
<td>Student Avg:</td>
<td><form:input path="avg"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="register"/></td>
</tr>
</table>
</form:form>