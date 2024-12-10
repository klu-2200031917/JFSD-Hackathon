<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f0f4f8;
    background-image: url('images/stureg.jpg'); /* Replace with your image URL */
    background-size: cover; /* Ensures the image covers the entire background */
    background-position: center; /* Centers the image */
    background-attachment: fixed; /* Keeps the background fixed during scrolling */
    margin: 0;
    padding: 20px;
}

        h3 {
            text-align: center;
            color: white; /* Dark Violet */
            text-decoration: underline;
        }

        .navbar {
            background-color: #4a148c; /* Dark Violet */
            overflow: hidden;
            padding: 10px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            display: flex; /* Use flexbox for alignment */
            justify-content: center; /* Center the links */
        }

        .navbar a {
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 16px;
        }

        .navbar a:hover {
            background-color: #6a1b9a; /* Lighter Violet */
        }

        .form-container {
             background-color: rgba(255, 255, 255, 0.7);  /* White */
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 20px auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333; /* Dark Gray */
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #4a148c; /* Dark Violet */
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #6a1b9a; /* Lighter Violet */
        }

        .button-container {
            text-align: center;
            margin-top: 15px;
        }

        .gender-options {
            display: flex; /* Use flexbox for horizontal alignment */
            gap: 15px; /* Space between options */
            align-items: center; /* Center align items vertically */
        }
    </style>
    <script>
        function validateForm() {
            const password = document.getElementById("spwd");
            const phone = document.getElementById("scontact");

            // Validate password pattern
            const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            if (!passwordPattern.test(password.value)) {
                alert("Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character.");
                password.focus();
                return false;
            }

            // Validate phone number length
            if (phone.value.length !== 10) {
                alert("Phone number must be exactly 10 digits.");
                phone.focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3>Student Registration</h3>
    <div class="form-container">
        <form method="post" action="insertstudent" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <div class="gender-options">
                            <input type="radio" id="male" name="sgender" value="MALE" required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                            <label for="others">Others</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" required/></td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="SCIENCE">Science</option>
                            <option value="ARTS">Arts</option>
                            <option value="COMMERCE">Commerce</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td>
                        <input 
                            type="password" 
                            id="spwd" 
                            name="spwd" 
                            pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                            title="Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character." 
                            required/>
                    </td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td>
                        <input 
                            type="number" 
                            id="scontact" 
                            name="scontact" 
                            pattern="\d{10}" 
                            title="Phone number must be 10 digits." 
                            required/>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
                
            </table>
        </form>
    </div>
</body>
</html>
