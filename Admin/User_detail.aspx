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
                     <li><a href="profile.aspx" class="login-btn">👤</a></li>
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
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("account_no") %>'></asp:Label>
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
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("account_no") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
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

