<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ragister.aspx.cs" Inherits="project_banking.Ragister" %>
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
       
 /* Section styling */
.features {
    display: flex;
    justify-content: center;
    margin: 40px 0;
    opacity: 0;
    transform: translateY(50px);
    animation: featuresFadeIn 0.8s forwards;
}

@keyframes featuresFadeIn {
    from { opacity: 0; transform: translateY(50px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Table */
.features table {
    border-collapse: collapse;
    background: #f9f9f9;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    opacity: 0;
    transform: translateY(20px);
    animation: tableFadeIn 0.8s forwards;
    animation-delay: 0.5s;
}

@keyframes tableFadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.features td {
    padding: 12px 15px;
    font-size: 16px;
    color: #333;
}

/* TextBox (ASP.NET input[type=text], input[type=password]) */
.features input[type="text"],
.features input[type="password"] {
    width: 220px;
    padding: 8px 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    outline: none;
    transition: border-color 0.3s, transform 0.3s, opacity 0.5s;
    opacity: 0;
    transform: translateY(20px);
}

/* Animate textboxes sequentially */
.features input[type="text"]:nth-of-type(1),
.features input[type="password"]:nth-of-type(1) {
    animation: inputFadeIn 0.6s forwards 0.8s;
}
.features input[type="text"]:nth-of-type(2),
.features input[type="password"]:nth-of-type(2) {
    animation: inputFadeIn 0.6s forwards 1s;
}
.features input[type="text"]:nth-of-type(3),
.features input[type="password"]:nth-of-type(3) {
    animation: inputFadeIn 0.6s forwards 1.2s;
}

@keyframes inputFadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.features input[type="text"]:focus,
.features input[type="password"]:focus {
    border-color: #0D1B2A;
    transform: scale(1.03);
}

/* ASP.NET Button (input[type=submit]) */
.features input[type="submit"],
.features button1 {
    padding: 10px 20px;
    background: #0d1b2a;
    color: #ffd700;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
   
    transform: translatey(1px);
}
 
.features input[type="submit"]:hover,
.features Button1:hover {
    background: #FFD700;
    color: #0D1B2A;
    transform: translateY(-3px) scale(0.5);
}

/*/* Validation error message */
.features span {
    color: red;
    font-size: 14px;
    margin-left: 8px;
}

/* ===== Register Button ===== */
#Button1 {
    display: inline-block;
    background: linear-gradient(135deg, #007BFF, #00BFFF);
    color: #fff;
    padding: 12px 30px;
    border: none;
    border-radius: 12px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    margin-top: 20px;
    opacity: 0;
    transform: translateY(20px);
    animation: registerFadeIn 0.8s forwards;
    animation-delay: 0.5s; /* appears after inputs */
    box-shadow: 0 5px 15px rgba(0,123,255,0.4);
    transition: all 0.3s ease;
}

/* Fade-in animation for Register button */
@keyframes registerFadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Hover effect */
#Button1:hover {
    transform: translateY(-3px) scale(0.5);
    box-shadow: 0 10px 20px rgba(0,123,255,0.6), 0 0 10px rgba(0,191,255,0.5);
    background: linear-gradient(135deg, #00BFFF, #007BFF);
}


</style>
                </head>
                <body>
                   <%-- <header>
                        <div class="logo">
                            Golden Bank</div>
                        <nav>
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="services.html">Services</a></li>
                                <li><a href="Account.aspx">Account</a></li>
                                <li><a href="Transction.aspx">Transction</a></li>
                                <li><a href="login.aspx" class="login-btn">Login</a></li>
                               
                            </ul>
                        </nav>
                    </header>--%>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <section class="hero">
          <h1><b>Ragistration Form</b></h1>
    </section>
    <section class="features">
         <table>
     <tr>
         <td>First name:</td>
         <td>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter a First nmae.."></asp:RequiredFieldValidator></td>
     </tr>
     <tr>
         <td>Last name:</td>
         <td>
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter a last name.."></asp:RequiredFieldValidator></td>

     </tr>
     <tr>
         <td>Email:</td>
         <td>
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Enter a Email id..."></asp:RequiredFieldValidator></td>
     <td>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Enter a proper emial address.." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
     </tr>
     <tr>
         <td>Mobile no:</td>
         <td>
             <asp:TextBox ID="TextBox4"  runat="server"></asp:TextBox></td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" Display="None" runat="server" ErrorMessage="Enter your mobile number.."></asp:RequiredFieldValidator></td>
     </tr>
     <tr>
         <td>Password:</td>
         <td>
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
         <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Enter password.."></asp:RequiredFieldValidator></td>
     </tr>
     <tr>
         <td>Conform password:</td>
         <td>
             <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
         <td>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox5" Display="None" ErrorMessage="Enter same password"></asp:CompareValidator></td>
     </tr>
     <tr>
         <td></td>
         <td>
             <a href="login.aspx">Login heare</a>
             <asp:Button ID="Button1" runat="server" Text="Ragister" OnClick="Button1_Click" /></td>
         <td></td>
     </tr>
 </table>
 <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
   <%-- <footer>
        <div class="footer-container">
            <div class="footer-about">
                <h4>About Golden Bank</h4>
                <p>
                    We provide trusted banking solutions with a personal touch.</p>
            </div>
            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="footer-contact">
                <h4>Contact Us</h4>
                <p>
                    <i class="fas fa-phone"></i>+91 1234567890</p>
                <p>
                    <i class="fas fa-envelope"></i>info@goldenbank.com</p>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
        <p class="footer-bottom">
            &copy; 2025 Golden Bank. All Rights Reserved.</p>
    </footer>--%>
</body>
</html>
</asp:Content>

