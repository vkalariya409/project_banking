<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User_detail.aspx.cs" Inherits="project_banking.Admin.User_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Golden Bank - Home</title>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

        <style>
            .bank-grid {
                width: 100%;
                border-collapse: collapse;
                margin: 25px 0;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                font-size: 15px;
                color: #2c3e50;
                background-color: #ffffff;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: 0px 8px 20px rgba(0, 110, 220, 0.15);
            }

                /* Header Style */
                .bank-grid th {
                    background: linear-gradient(135deg, #4da6ff, #1a75ff);
                    color: #ffffff;
                    text-align: left;
                    padding: 14px 20px;
                    font-weight: 600;
                    letter-spacing: 0.5px;
                    text-transform: uppercase;
                    border-bottom: 3px solid #005ce6;
                }

                /* Cell Style */
                .bank-grid td {
                    padding: 12px 20px;
                    border-bottom: 1px solid #e6f0ff;
                }

                /* Alternate row shading */
                .bank-grid tr:nth-child(even) {
                    background-color: #f5faff;
                }

                .bank-grid tr:nth-child(odd) {
                    background-color: #ffffff;
                }

                /* Hover effect on row */
                .bank-grid tr:hover {
                    background-color: #e3f2ff;
                    transition: background-color 0.3s ease;
                }

                /* Delete button style */
                .bank-grid a {
                    display: inline-block;
                    padding: 6px 16px;
                    background: #ffffff;
                    color: #0066cc !important;
                    border: 2px solid #0066cc;
                    border-radius: 50px; /* Rounded pill */
                    font-size: 14px;
                    font-weight: 600;
                    text-decoration: none;
                    transition: all 0.3s ease;
                }

                    /* Delete button hover */
                    .bank-grid a:hover {
                        background: #0066cc;
                        color: #ffffff !important;
                        box-shadow: 0px 4px 10px rgba(0, 102, 204, 0.35);
                        transform: translateY(-2px);
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
                    <li><a href="Admin.aspx">User Details</a></li>
                    <li><a href="User_detail.aspx">Bnak details</a></li>
                    <%-- <li><a href="about.html">About Us</a></li>--%>
                    <%--    <li><a href="../contact.html">Contact</a></li>--%>
                    <li><a href="../login.aspx" class="login-btn">Login</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section style="background: #f0f8ff; padding: 40px; border-radius: 20px; border: 3px solid #0073e6; position: relative; overflow: hidden; text-align: center;">

        <!-- Decorative gradient circle -->
        <div style="position: absolute; top: -60px; right: -60px; width: 200px; height: 200px; background: radial-gradient(circle, #0073e6, transparent); border-radius: 50%; opacity: 0.3;">
        </div>

        <!-- Heading -->
        <h1 style="color: #003366; font-family: 'Poppins', sans-serif; font-size: 34px; font-weight: 700; margin: 0; text-transform: uppercase; letter-spacing: 3px;">
            <b>Bank Detail</b>
        </h1>

        <!-- Sub text -->
        <p style="color: #0059b3; font-size: 16px; font-family: 'Segoe UI', sans-serif; margin-top: 10px; letter-spacing: 1px;">
        </p>
    </section>
    <section>
        <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 28px; font-weight: 700; color: #1a75ff; text-align: center; margin: 30px 0; letter-spacing: 1px; text-shadow: 0px 2px 4px rgba(0, 90, 180, 0.15);">Account Detail
        </h1>
    </section>

    <section class="features">



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand1" CssClass="bank-grid">
            <Columns>
                <asp:TemplateField HeaderText="Account no">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ocuption">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("ocuption") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Income">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Income") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>

    <section>
        <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 28px; font-weight: 700; color: #1a75ff; text-align: center; margin: 30px 0; letter-spacing: 1px; text-shadow: 0px 2px 4px rgba(0, 90, 180, 0.15);">User WithDraw 
        </h1>
    </section>

    <section>
       
    </section>


    <section>
    <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 28px; font-weight: 700; color: #1a75ff; text-align: center; margin: 30px 0; letter-spacing: 1px; text-shadow: 0px 2px 4px rgba(0, 90, 180, 0.15);">User Transfer
    </h1>
</section>
    <section>

    </section>


    <section>
    <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 28px; font-weight: 700; color: #1a75ff; text-align: center; margin: 30px 0; letter-spacing: 1px; text-shadow: 0px 2px 4px rgba(0, 90, 180, 0.15);">User Deposit 
    </h1>
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

