<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - BistroFlow</title>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
</head>
<body>

    <div class="bg-container">
    <div class="login-card">
        <div style="text-align: center; margin-bottom: 10px;">
            <img src="images/logo.png" alt="Logo" style="width:150px; height: auto;">
        </div>
        
        <h2 style="margin-bottom: 15px; font-size: 1.6rem;">Create Account</h2>
        
        <form action="LoginServlet" method="post" onsubmit="return validatePasswords()">
            
            
                
             
            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" class="form-control" placeholder="name@example.com" required>
            </div>
            
            
                <div class="form-group" style="flex: 1;">
                    <label>Password</label>
                    <input type="password" id="pass" name="password" class="form-control" required>
                </div>
               
            
            <button type="submit" class="btn-login" style="margin-top: 5px;">Create Account</button>
        </form>
        
        <p class="signup-text">
                Don't have an account? <a href="signup.jsp">Sign Up</a>
            </p>
    </div>
</div>

</body>
</html>