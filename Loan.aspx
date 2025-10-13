<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loan.aspx.cs" Inherits="project_banking.Loan" %>

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
        <link rel="stylesheet" href="css/Loan.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <style>




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
                    <li><a href="login.aspx" class="login-btn">Login</a></li>
                    <li><a href="profile.aspx" class="login-btn">👤</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">


    <asp:Panel ID="Panel1" runat="server">

        <div class="cards-container">
        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" CssClass="loan-img" ImageUrl='<%# Eval("Image") %>'  />
                <br />
                <div class="loan-content">
              <span>Category:</span>
         <asp:Label ID="Label1" runat="server" CssClass="loan-label" Text='<%# Eval("CategoryName") %>'></asp:Label>
                <br />
               <span>Description:</span>
         <asp:Label ID="Label2" runat="server" CssClass="loan-label" Text='<%# Eval("Description") %>'></asp:Label>
                <br />
               <span>Interest Rate:</span>
         <asp:Label ID="Label3" runat="server" CssClass="loan-label" Text='<%# Eval("InterestRate") %>'></asp:Label>
                <br />
               <span>Max Tenure (Year):</span>
         <asp:Label ID="Label4" runat="server" CssClass="loan-label" Text='<%# Eval("MaxTenure") %>'></asp:Label>
                <br />
                <span>Eligibility:</span>
         <asp:Label ID="Label5" runat="server" CssClass="loan-label" Text='<%# Eval("Eligibility") %>'></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton1" CssClass="loan-btn" runat="server" CommandArgument='<%# Eval("CateId") %>' CommandName="cmd_loan">View Loans</asp:LinkButton>
          </div>
                    </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

     
    <asp:Panel ID="Panel2" runat="server">

        <div class="cards-container">
        <asp:DataList ID="DataList2" runat="server"  OnItemCommand="DataList2_ItemCommand">

            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" CssClass="loan-img" ImageUrl='<%# Eval("LoanImage") %>' />
                <br />
                <div class="loan-content">

                     <span>Loan Name:</span>
                <asp:Label ID="Label6" runat="server" CssClass="loan-label" Text='<%# Eval("LoanName") %>'></asp:Label>
                <br />

                     <span>Description:</span>
                <asp:Label ID="Label7" runat="server" CssClass="loan-label" Text='<%# Eval("Description") %>'></asp:Label>
                <br />

                     <span>Interest Rate:</span>
                <asp:Label ID="Label8" runat="server" CssClass="loan-label" Text='<%# Eval("InterestRate") %>'></asp:Label>

                <br />

                     <span>Max Tenure(Year):</span>
                <asp:Label ID="Label9" runat="server" CssClass="loan-label" Text='<%# Eval("MaxTenure") %>'></asp:Label>
                <br />

                     <span>Maximum amount:</span>
                <asp:Label ID="Label10" runat="server" CssClass="loan-label" Text='<%# Eval("MinAmount") %>'></asp:Label>
                <br />

                     <span>Eligibility:</span>
                <asp:Label ID="Label11" runat="server" CssClass="loan-label" Text='<%# Eval("Eligibility") %>'></asp:Label>
                <br />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="loan-btn"   CommandArgument='<%# Eval("SubId") %>' CommandName="cmd_Apply">Apply Loan</asp:LinkButton>
                <br />
            </ItemTemplate>

        </asp:DataList>
            <asp:Button ID="Backbtn" runat="server" Text="Back Loan Page" CssClass="back-btn" OnClick="Backbtn_Click1" />
    </asp:Panel>
           </form>
    
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
                 <%--<li><a href="services.html">Services</a></li>--%>
                 <li><a href="Account.aspx">Account</a></li>
                 <li><a href="Transction.aspx">Transction</a></li>
                  <li><a href="Loan.aspx">Loan</a></li>
                 <li><a href="login.aspx" class="login-btn">Login</a></li>
                   <li><a href="profile.aspx" class="login-btn">👤</a></li>
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

