<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="project_banking.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Golden Bank - Home</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
       .features {
    background-color: #fff;
    border: 2px solid #007BFF;
    border-radius: 12px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    padding: 20px;
    width: 80%;
    margin: 20px auto;
    opacity: 0;
    transform: translateY(50px);
    animation: fadeInUp 0.8s forwards;
}

@keyframes fadeInUp {
    from { opacity: 0; transform: translateY(50px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Table styles */
.features table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 15px;
    font-family: Arial, sans-serif;
    font-size: 16px;
    color: #003366;
}

/* Table heading rows animation */
.features table tr:first-child td,
.features table tr:nth-child(3) td {
    font-weight: bold;
    color: #ff9900;
    text-align: left;
    animation: fadeInText 1s ease-in;
}

@keyframes fadeInText {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* Inputs and selects */
.features input[type="text"],
.features select {
    width: 95%;
    padding: 6px;
    border: 1px solid #007BFF;
    border-radius: 6px;
    transition: all 0.3s ease;
}

.features input[type="text"]:focus,
.features select:focus {
    border-color: #ff9900;
    box-shadow: 0 0 5px rgba(255,153,0,0.5);
    transform: scale(1.02);
}

/* Buttons */
.features button,
.features input[type="submit"],
.features input[type="button"] {
    background-color: #007BFF;
    color: #fff;
    padding: 6px 15px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
    transition: all 0.3s ease;
}

.features button:hover,
.features input[type="submit"]:hover,
.features input[type="button"]:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}

/* Checkbox animation */
.features input[type="checkbox"] {
    width: 18px;
    height: 18px;
    cursor: pointer;
    accent-color: #007BFF;
    transition: all 0.3s ease;
}

.features input[type="checkbox"]:checked {
    transform: scale(1.2);
    accent-color: #ff9900;
}

      /* Modern button style with animation */
.features button,
.features input[type="submit"],
.features input[type="button"] {
    background: linear-gradient(135deg, #007BFF, #00BFFF);
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 12px;
    cursor: pointer;
    font-weight: bold;
    font-size: 16px;
    opacity: 0;
    transform: translateY(20px);
    animation: buttonFadeIn 0.8s forwards;
    animation-delay: 0.5s; /* staggered after inputs/checkboxes */
    box-shadow: 0 5px 15px rgba(0,123,255,0.4);
    transition: all 0.3s ease;
}

/* Button fade-in with upward float */
@keyframes buttonFadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Hover effect - modern bounce + glow */
.features button:hover,
.features input[type="submit"]:hover,
.features input[type="button"]:hover {
    transform: translateY(-3px) scale(1.05);
    box-shadow: 0 10px 20px rgba(0,123,255,0.6), 0 0 10px rgba(0,191,255,0.5);
    background: linear-gradient(135deg, #00BFFF, #007BFF);
}

/* Optional: smooth pulse animation to make buttons look alive */
.features button.pulse,
.features input[type="submit"].pulse,
.features input[type="button"].pulse {
    animation: pulseGlow 2s infinite;
}

@keyframes pulseGlow {
    0% { box-shadow: 0 5px 15px rgba(0,123,255,0.4); }
    50% { box-shadow: 0 10px 25px rgba(0,191,255,0.7); }
    100% { box-shadow: 0 5px 15px rgba(0,123,255,0.4); }
}
        </style>
    </head>
    <body>
        <header>
            <div class="logo">
                Golden Bank
            </div>
            <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                   <%-- <li><a href="services.html">Services</a></li>--%>
                    <li><a href="Account.aspx">Account</a></li>
                    <li><a href="Transction.aspx">Transction</a></li>

                    <li><a href="login.aspx" class="login-btn">Login</a></li>



                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section style="background-color: darkblue; padding: 20px; border-radius: 2000px;">
        <h1 style="color: white; text-align: center; font-family: Arial, sans-serif; font-size: 32px; letter-spacing: 2px; margin: 0;">
            <b>Account</b>
        </h1>
    </section>
    <section class="features">
        <table>
            <tr>
                <td>Name</td>
                <td>Phone</td>
                <td>Address</td>
                <td>Ocuption</td>

            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Education</td>
                <td>Gender</td>
                <td>Income</td>
            </tr>

            <tr>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Select your Gender--</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <center>
                <tr>

                    <td></td>
                    <td>
                        <asp:Button ID="but1" runat="server" Text="Submit" OnClick="but1_Click" />
                    </td>
                    <td></td>
                </tr>
            </center>
        </table>

    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <footer>
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
        </div>
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
</footer>
    </body>
</html>
</asp:Content>

