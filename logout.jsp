<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <%
      HttpSession currentSession=request.getSession(false);
	   
		if(currentSession!=null) {
			currentSession.invalidate();
		}
		
		response.sendRedirect("index.html");
      %>
</body>
</html>>