<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<% 
    Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;
}
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Home</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f4f8;
    background-image: url('images/emplogin.jpg'); /* Replace with your image URL */
    background-size: cover; /* Ensures the image covers the entire background */
    background-position: center; /* Centers the image */
    background-attachment: fixed; /* Keeps the background fixed during scrolling */
    margin: 0;
    padding: 20px;
}

        h2 {
            text-align: center;
            color: white; /* Dark Violet */
            margin-bottom: 20px; /* Space below heading */
        }

        .navbar {
            background-color: #4a148c; /* Dark Violet */
            overflow: hidden;
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            float: left;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 16px;
            margin: 0 10px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: green; /* Lighter Violet */
        }

        @media (max-width: 768px) {
            .navbar a {
                float: none; /* Stack links vertically on small screens */
                display: block; /* Make links block elements */
                text-align: left; /* Align text to the left */
            }
        }
    </style>
</head>
<body>
    <%@ include file="empnavbar.jsp" %>
    <h2>Welcome to the Employee Home</h2>
    Welcome <%=emp.getName()%>
    <!-- Add any additional content here -->
</body>
</html>
