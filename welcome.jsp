<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="Stylesheet" type="text/css" href="style.css">
</head>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<body>
    <%
        // Retrieve the session object
        HttpSession run = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && run.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) run.getAttribute("username");
    %>

      <div class="container">
        <h1>Welcome, <%= username %>!</h1>
        <p>I am delighted to have you on my platform. 🌟</p>
        <h3>Hope you liked my work. 🌟</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p> 
        you can <a href="logout.jsp">LOGOUT</a> securely.
    </div>

    <%
        } else {
            response.sendRedirect("login.jsp");
        }
    %>


</body>

</html>