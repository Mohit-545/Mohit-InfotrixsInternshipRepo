<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<body>
		<h1 style="color: blue; text-align: center">Welcome to Currency Convertor App</h1><br><br>
		
		<div align="center">
			<frm:form action="getResult" modelAttribute="curr">
				<table border="1" style="color:white;text-align: center;font-weight: bold;" bgcolor="red" >
					<tr>
						<td>Currency From ::</td>
						<td><frm:select path="fromCode">
										<option value="">-- Select Currency --</option>
										<option value="USD">United States Dollar</option>
										<option value="CAD">Canadian Dollar</option>
										<option value="EUR">Euro</option>
										<option value="HKD">Hong Kong Dollar</option>
										<option value="INR">Indian Rupees</option>
								</frm:select>
						</td>
					</tr>
					<tr>
						<td>Currency To ::</td>
						<td><frm:select path="toCode">
										<option value="">-- Select Currency --</option>
										<option value="USD">United States Dollar</option>
										<option value="CAD">Canadian Dollar</option>
										<option value="EUR">Euro</option>
										<option value="HKD">Hong Kong Dollar</option>
										<option value="INR">Indian Rupees</option>
								</frm:select>
						</td>
					</tr>
					</tr>
						<td>Enter Amount ::</td>
						<td><frm:input path="amount"/></td>
					</tr>
					<tr>
						<td><input type="submit" value="Get Result"></td>
						<td><input type="reset" value="Cancel"></td>
					</tr>
				</table>
			</frm:form>
		</div>
		
</body>
</html>