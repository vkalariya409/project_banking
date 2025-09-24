<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="project_banking.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Golden Bank - Home</title>
                    <link rel="stylesheet" href="css/style.css">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

                    <style>
 /* General Body */
/*body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(to right, #89f7fe, #66a6ff);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}*/

/* Features section */
.features {
    background: #fff;
    padding: 40px 50px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    animation: fadeIn 1s ease-in-out;
}

/* Table styling */
.login-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 10px 20px;
}

/* Textboxes */
.input-field {
    width: 250px;
    padding: 10px 15px;
    border-radius: 8px;
    border: 2px solid #66a6ff;
    outline: none;
    transition: all 0.3s ease;
    font-size: 16px;
}

.input-field:focus {
    border-color: #ff7eb9;
    box-shadow: 0 0 8px rgba(255,126,185,0.5);
}

/* Buttons */
.Button1 {
    padding: 10px 25px;
    border: none;
    border-radius: 8px;
    background: #66a6ff;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px;
    transition: all 0.3s ease;
}

.Button1:hover {
    background: #ff7eb9;
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(255,126,185,0.4);
}

/* Signup text */
.features:a {
    text-align: center;
    margin-top: 15px;
    font-size: 14px;
}

.features:a {
    text-decoration: none;
    color: #66a6ff;
    font-weight: bold;
    transition: 0.3s;
}

.features:a:hover {
    color: #ff7eb9;
    text-decoration: underline;
}

/* Animation */
@keyframes fadeIn {
    from {opacity: 0; transform: translateY(-20px);}
    to {opacity: 1; transform: translateY(0);}
}


                    </style>
                </head>

                <body>
                 <%--   <header>
                        <div class="logo">
                            Golden Bank</div>
                        <nav>
                            <ul>
                                <li><a href="index.html">Home</a></li>
                               <%-- <li><a href="services.html">Services</a></li>--%>
                               <%-- <li><a href="Account.aspx">Account</a></li>
                                <li><a href="Transction.aspx">Transction</a></li>
                                <li><a href="login.aspx" class="login-btn">Login</a></li>
                                
                            </ul>
                        </nav>
                    </header>--%>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <section class="hero">
        <h1>Login in your Account</h1>

    </section>
    <section class="features">
           <table>
       <tr>
           <td>Username:</td>
           <td>
               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
     
           </tr>
       <tr>
           <td>Password:</td>
           <td>
               <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
          
       </tr>
       <tr>
           <td></td>
           <td>
               <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
            <td>

       </tr>
      <tr>
          <td>
              <p>No any account then sign up heare</p>
              <a href="Ragister.aspx">Register Hear</a>
          </td>
      </tr>
   </table>

    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <%--<footer>
    <div class="footer-container">
        <div class="footer-about">
            <h4>About Golden Bank</h4>
            <p>
                We provide trusted banking solutions with a personal touch.
            </p>
        </div>
        <div class="footer-links">
            <h4>Quick Links</h4>
            <%--<ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="services.html">Services</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>--%>
       <%-- </div>
        <div class="footer-contact">
            <h4>Contact Us</h4>
            <p>
                <i class="fas fa-phone"></i>+91 8799017545
            </p>
            <p>
                <i class="fas fa-envelope"></i>info@goldenbank.com
            </p>
            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-linkedin-in"></i></a>
            </div>
        </div>
    </div>
    <p class="footer-bottom">
        &copy; 2025 Golden Bank. All Rights Reserved.
    </p>
</footer>--%>
</body>
</html>
</asp:Content>

