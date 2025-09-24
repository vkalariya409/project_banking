<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Transction.aspx.cs" Inherits="project_banking.Transction" %>

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
 body {
    background-color: #e6f0ff; 
    font-family: Arial, sans-serif;
    animation: fadeInBody 1s ease-in; /* Page fade-in */
}

@keyframes fadeInBody {
    from { opacity: 0; }
    to { opacity: 1; }
}

section {
    width: 90%;
    margin: auto;
    padding: 20px;
}

h1 {
    text-align: center;
    color: #0056b3;
    margin-bottom: 30px;
    animation: slideDown 1s ease-out; /* Slide in heading */
}

@keyframes slideDown {
    from { transform: translateY(-50px); opacity: 0; }
    to { transform: translateY(0); opacity: 1; }
}

.grid {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 20px;
}

.box {
    flex: 1;
    min-width: 280px;
    background-color: #fff;
    border: 2px solid #007BFF;
    border-radius: 8px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    padding: 20px;
    transition: transform 0.3s, box-shadow 0.3s; /* Smooth hover */
}

.box:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 15px rgba(0,0,0,0.2);
}

.balance-box {
    margin-bottom: 30px;  
}

h4 {
    color: #ff9900;
    margin-bottom: 15px;
    text-align: center;
    animation: fadeInText 1s ease-in;
}

@keyframes fadeInText {
    from { opacity: 0; }
    to { opacity: 1; }
}

table {
    width: 100%;
}

td {
    padding: 8px;
    color: #003366 ;
}

input[type="text"],
asp\:TextBox {
    padding: 6px;
    border: 1px solid #007BFF;
    border-radius: 5px;
    width: 95%;
    transition: all 0.3s ease;
}

input[type="text"]:focus,
asp\:TextBox:focus {
    border-color: #ff9900;
    box-shadow: 0 0 5px rgba(255,153,0,0.5);
}

asp\:Button {
    background-color: #007BFF;
    color: white;
    border: none;
    padding: 8px 15px;
    border-radius: 5px;
    font-size: 14px;
    cursor: pointer;
    margin-top: 10px;
    transition: all 0.3s ease;
}

asp\:Button:hover {
    background-color: #0056b3;
    transform: scale(1.05);
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
                        <%--<li><a href="services.html">Services</a></li>--%>
                    <li><a href="Account.aspx">Account</a></li>
                    <li><a href="Transction.aspx">Transction</a></li>
                    <li><a href="login.aspx" class="login-btn">Login</a></li>
                   
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section style="background-color: darkblue; padding: 20px; border-radius: 90px;">
        <h1 style="color: white; text-align: center; font-family: Arial, sans-serif; font-size: 32px; letter-spacing: 2px; margin: 0;">
            <b>Transaction</b>
        </h1>
    </section>

    <section>
    <h1>Transactions</h1>

    
    <div class="box balance-box">
        <h4>Check Balance</h4>
        <table>
            <tr>
                <td>Account Number</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="Button1" runat="server" Text="Check" /></td>
            </tr>
        </table>
    </div>

   
    <div class="grid">
        
        <div class="box">
            <h4>Withdraw</h4>
            <table>
                <tr>
                    <td>Account Number</td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="Button2" runat="server" Text="Withdraw" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </div>

        <div class="box">
            <h4>Deposit</h4>
            <table>
                <tr>
                    <td>Account Number</td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="Button3" runat="server" Text="Deposit" />
                        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>

       
        <div class="box">
            <h4>Transfer</h4>
            <table>
                <tr>
                    <td>From</td>
                    <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>To</td>
                    <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Amount</td>
                    <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="Button4" runat="server" Text="Transfer" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
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

