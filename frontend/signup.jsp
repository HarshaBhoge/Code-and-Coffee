<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Account | BistroFlow</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

    <div class="bg-container">
    <div class="login-card">
        <div style="text-align: center; margin-bottom: 10px;">
            <img src="images/logo.png" alt="Logo" style="width:150px; height: auto;">
        </div>
        
        <h2 style="margin-bottom: 15px; font-size: 1.6rem;">Create Account</h2>
        
        <form action="RegisterServlet" method="post" onsubmit="return validatePasswords()">
            
            <div style="display: flex; gap: 15px;">
                <div class="form-group" style="flex: 1;">
                    <label>Full Name</label>
                    <input type="text" name="name" class="form-control" placeholder="Your name" required>
                </div>
                <div class="form-group" style="flex: 1;">
                    <label>Mobile</label>
                    <input type="tel" name="mobile" class="form-control" placeholder="Mobile number" required>
                </div>
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" class="form-control" placeholder="name@example.com" required>
            </div>
            
            <div style="display: flex; gap: 15px;">
                <div class="form-group" style="flex: 1;">
                    <label>Password</label>
                    <input type="password" id="pass" name="password" class="form-control" required>
                </div>
                <div class="form-group" style="flex: 1;">
                    <label>Confirm</label>
                    <input type="password" id="conf_pass" name="confirm_password" class="form-control" required>
                </div>
            </div>
            
            <div class="checkbox-group">
                <input type="checkbox" id="terms" name="terms" required>
                <label for="terms" style="font-size: 0.75rem;">I agree to the Terms & Privacy</label>
            </div>
            
            <button type="submit" class="btn-login" style="margin-top: 5px;">Create Account</button>
        </form>
        
        <p class="signup-text" style="margin-top: 10px;">
            Already have an account? <a href="login.jsp">Log In</a>
        </p>
    </div>
</div>
   

</body>
</html>