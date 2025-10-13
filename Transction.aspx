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

/* Footer */
.footer {
  background: #0d47a1;
  color: #fff;
  padding: 40px 0 20px;
  margin-top: 50px;
}

.footer .container {
  width: 90%;
  margin: auto;
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
}

.footer-logo h2 {
  font-size: 1.8rem;
  margin-bottom: 10px;
  color: #fff;
}
.footer-logo p {
  font-size: 0.95rem;
  color: #bbdefb;
}

.footer-links h3,
.footer-contact h3 {
  margin-bottom: 15px;
  font-size: 1.2rem;
  color: #90caf9;
}

.footer-links ul {
  list-style: none;
  padding: 0;
}
.footer-links ul li {
  margin: 8px 0;
}
.footer-links ul li a {
  color: #e3f2fd;
  text-decoration: none;
  transition: color 0.3s;
}
.footer-links ul li a:hover {
  color: #fff;
}

.footer-contact p {
  margin: 6px 0;
  font-size: 0.95rem;
  color: #e3f2fd;
}

.footer-bottom {
  text-align: center;
  padding-top: 15px;
  border-top: 1px solid rgba(255,255,255,0.2);
  margin-top: 20px;
}
.footer-bottom p {
  font-size: 0.85rem;
  color: #bbdefb;
}

/* ====== Minimal Light Blue Header Theme ====== */
header {
    background: #e3f2fd; /* Light blue solid background */
    padding: 12px 30px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 2px solid #bbdefb; /* subtle divider */
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
}

/* Logo Styling */
header .logo {
    font-size: 24px;
    font-weight: 700;
    color: #0d47a1;
    text-transform: uppercase;
    letter-spacing: 1px;
}

/* Navigation Styling */
header nav ul {
    list-style: none;
    display: flex;
    gap: 20px;
    margin: 0;
    padding: 0;
}

header nav ul li {
    position: relative;
}

header nav ul li a {
    text-decoration: none;
    color: #1565c0;
    font-size: 15px;
    font-weight: 500;
    padding: 8px 14px;
    border-radius: 6px;
    transition: 0.3s ease;
}

/* Hover Effects */
header nav ul li a:hover {
    background: #bbdefb;
    color: #0d47a1;
}

/* Special Styling for Login Button */
header nav ul li .login-btn {
    background: #42a5f5;
    color: #fff;
    font-weight: 600;
    padding: 8px 18px;
    border-radius: 6px;
}

header nav ul li .login-btn:hover {
    background: #1e88e5;
}

/* ===== Responsive Design ===== */
@media (max-width: 768px) {
    header {
        flex-direction: column;
        align-items: flex-start;
        padding: 15px;
    }

    header nav ul {
        flex-direction: column;
        width: 100%;
        gap: 10px;
    }

    header nav ul li a {
        display: block;
        width: 100%;
    }
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
             <li><a href="index.aspx">Home</a></li>
             <%--<li><a href="services.html">Services</a></li>--%>
             <li><a href="Account.aspx">Account</a></li>
             <li><a href="Transction.aspx">Transction</a></li>
             <li><a href="Loan.aspx">Loan</a></li>
             <li><a href="login.aspx" class="login-btn">Login</a></li>
              <li><a href="profile.aspx" class="login-btn">👤</a></li>
         </ul>
     </nav>
 </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   <%-- <section style="background-color: darkblue; padding: 20px; border-radius: 90px;">
        <h1 style="color: white; text-align: center; font-family: Arial, sans-serif; font-size: 32px; letter-spacing: 2px; margin: 0;">
            <b>Transaction</b>
        </h1>
    </section>--%>

    <section>
    <h1>Transactions</h1>

    
    <div class="box balance-box">
        <h4>Check Balance</h4>
        <table>
            <tr>
                <td>Account Number</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="Button1" runat="server" Text="Check" OnClick="Button1_Click" />
                        <asp:Label ID="lblMessage" runat="server" Text="Balance!!"></asp:Label>
                    </td>
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
                        <asp:Button ID="Button3" runat="server" Text="Deposit" OnClick="Button3_Click" />
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
                        <asp:Button ID="Button4" runat="server" Text="Transfer" OnClick="Button4_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</section>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
       <footer class="footer">
    <div class="container">
        <div class="footer-logo">
            <h2>BankSimple</h2>
            <p>Smart • Secure • Simple Banking</p>
        </div>

        <div class="footer-links">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="index.aspx">Home</a></li>
                <li><a href="about.aspx">About</a></li>
                <li><a href="services.aspx">Services</a></li>
                <li><a href="contact.aspx">Contact</a></li>
            </ul>
        </div>

        <div class="footer-contact">
            <h3>Contact Us</h3>
            <p>Email: support@banksimple.com</p>
            <p>Phone: +91 98765 43210</p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 BankSimple. All Rights Reserved.</p>
    </div>
</footer>

    </body>
</html>
</asp:Content>

