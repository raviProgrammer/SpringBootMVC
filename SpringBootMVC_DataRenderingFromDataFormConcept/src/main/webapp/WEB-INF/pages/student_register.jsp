<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<h1 style="color:red;text-align:center"> Student Registration Form</h1><br>
<form action="register" method="POST">
<table align="center" bgcolor="blue">
<tr>
<td>Student NO:</td>
<td><input type="number" name="sno"/></td>
</tr>
<tr>
<td>Student Name:</td>
<td><input type="text" name="sname"/></td>
</tr>
<tr>
<td>Student Address:</td>
<td><input type="text" name="adds"/></td>
</tr>
<tr>
<td>Student Avg:</td>
<td><input type="text" name="avg"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="register"/></td>
</tr>
</table>
</form>