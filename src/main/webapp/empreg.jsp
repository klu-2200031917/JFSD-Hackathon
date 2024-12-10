<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <style>
      body {
    font-family: Arial, sans-serif;
    background-color: #f0f4f8;
    background-image: url('images/empreg.jpg'); /* Replace with your image URL */
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
            background-color: rgba(255, 255, 255, 0.5); /* White with 80% opacity */
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
            const password = document.getElementById("epwd");
            const phone = document.getElementById("econtact");

            // Validate password pattern
            const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            if (!passwordPattern.test(password.value)) {
                alert("Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character.");
                password.focus();
                return false;
            }

            // Validate phone number length
            if (phone.value.length !== 10 || !/^\d+$/.test(phone.value)) {
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
    <h3>Employee Registration</h3>
    <div class="form-container">
        <form method="post" action="insertemp" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <div class="gender-options">
                            <input type="radio" id="male" name="egender" value="MALE" required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="egender" value="FEMALE" required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="egender" value="OTHERS" required/>
                            <label for="others">Others</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL">Technical</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="ELECTRICAL">Electrical</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td>
                        <input 
                            type="password" 
                            id="epwd" 
                            name="epwd" 
                            pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" 
                            title="Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, a number, and a special character." 
                            required/>
                    </td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td>
                        <input 
                            type="number" 
                            id="econtact" 
                            name="econtact" 
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
