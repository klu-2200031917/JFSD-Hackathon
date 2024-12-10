<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-image: url('images/paper.jpg'); /* Set background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the image */
            background-attachment: fixed; /* Keep background fixed during scroll */
            color: white; /* White text for better contrast */
        }

        h3 {
            text-align: center;
            color: #ffffff; /* White text for better visibility */
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5); /* Add a shadow for text */
        }

        .navbar {
            display: flex; /* Flexbox for horizontal layout */
            justify-content: center; /* Center the navbar */
            background-color: rgb(0,0,255); /* Dark Violet with transparency */
            padding: 10px 0; /* Vertical padding */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3); /* Subtle shadow */
        }

        .navbar a {
            text-decoration: none; /* No underline */
            color: white; /* White text color */
            padding: 10px 20px; /* Padding around links */
            border-radius: 4px; /* Rounded corners for links */
            transition: background-color 0.3s, color 0.3s; /* Transition effects */
        }

        .navbar a:hover {
            background-color: #0000ff; /* Lighter Violet on hover */
        }

        ol {
    width: 400px; /* Set the width of the list */
    background: rgba(0, 0, 0, 0.5); /* Semi-transparent background for content */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); /* Subtle shadow */
    text-align: center; /* Align text inside the list to center */
    margin: 20px auto; /* Automatically adjust margins to center the list */
}

        li {
            margin-bottom: 10px;
            list-style-position: inside; /* Ensure the number is inside the list item */
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h3 style="color:Green;">Home Page</h3>
    <ol>
        <li>Controller Layer will access Service Layer</li>
        <li>Service Layer will access Repository Layer</li>
        <li>Repository Layer contains Database Logic</li>
    </ol>
</body>
</html>
