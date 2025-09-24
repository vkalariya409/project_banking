<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="project_banking.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Golden Bank - Home</title>
                    <link rel="stylesheet" href="../css/style.css">
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
           <style>
               /* Light Blue Banking Style GridView */
#GridView1 {
    width: 100%;
    border-collapse: collapse;
    margin: 25px 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 15px;
    color: #2c3e50;
    background-color: #ffffff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0px 6px 15px rgba(0, 120, 200, 0.15);
}

/* Header Style */
#GridView1 th {
    background: linear-gradient(135deg, #66b3ff, #3399ff);
    color: #ffffff;
    text-align: left;
    padding: 14px 18px;
    font-weight: 600;
    letter-spacing: 0.6px;
    text-transform: uppercase;
    border-bottom: 3px solid #1a75ff;
}

/* Cell Style */
#GridView1 td {
    padding: 12px 18px;
    border-bottom: 1px solid #e0efff;
}

/* Alternate row shading */
#GridView1 tr:nth-child(even) {
    background-color: #f2f8ff;
}

#GridView1 tr:nth-child(odd) {
    background-color: #ffffff;
}

/* Hover effect */
#GridView1 tr:hover {
    background-color: #d9ecff;
    transition: background-color 0.3s ease;
}

/* Delete button style (Rounded Pill Blue Theme) */
#GridView1 a {
    display: inline-block;
    padding: 6px 18px;
    background: #ffffff;
    color: #0073e6 !important;
    border: 2px solid #0073e6;
    border-radius: 50px; /* Rounded pill style */
    font-size: 14px;
    font-weight: 600;
    text-decoration: none;
    transition: 0.3s ease;
}

#GridView1 a:hover {
    background: #0073e6;
    color: #ffffff !important;
    box-shadow: 0px 4px 10px rgba(0,115,230,0.3);
}

           </style>
                </head>
                <body>
                    <header>
                        <div class="logo">
                            Golden Bank</div>
                        <nav>
                            <ul>
                                <li><a href="Admin.aspx">User Details</a></li>
                                <li><a href="User_detail.aspx">Bnak details</a></li>
                               <%-- <li><a href="about.html">About Us</a></li>--%>
                            <%--    <li><a href="../contact.html">Contact</a></li>--%>
                                <li><a href="../login.aspx" class="login-btn">Login</a></li>
                               
                            </ul>
                        </nav>
                    </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">
  <section style="background:#f0f8ff; 
                padding:40px; 
                border-radius:20px; 
                border:3px solid #0073e6; 
                position:relative; 
                overflow:hidden; 
                text-align:center;">

    <!-- Decorative gradient circle -->
    <div style="position:absolute; 
                top:-60px; 
                right:-60px; 
                width:200px; 
                height:200px; 
                background:radial-gradient(circle, #0073e6, transparent); 
                border-radius:50%; 
                opacity:0.3;">
    </div>

    <!-- Heading -->
    <h1 style="color:#003366; 
               font-family:'Poppins', sans-serif; 
               font-size:34px; 
               font-weight:700; 
               margin:0; 
               text-transform:uppercase; 
               letter-spacing:3px;">
        <b>User Detail</b>
    </h1>

    <!-- Sub text -->
    <p style="color:#0059b3; 
              font-size:16px; 
              font-family:'Segoe UI', sans-serif; 
              margin-top:10px; 
              letter-spacing:1px;">
        Manage your secure banking profile easily ✨
    </p>
</section>

    <section class="features">
        <asp:GridView ID="GridView1" runat="server" ClientIDMode="Static" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="First name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("fnm") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last name">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("lnm") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">
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

