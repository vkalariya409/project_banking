<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_LoanSubCatagory.aspx.cs" Inherits="project_banking.Admin.Add_LoanSubCatagory" %>

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

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: #f0f8ff;
                padding: 30px;
            }

            table {
                border-collapse: collapse;
                width: 60%;
                margin: auto;
                background-color: #e6f0ff;
                border-radius: 10px;
                box-shadow: 0 8px 16px rgba(0, 0, 255, 0.1);
                animation: fadeIn 1s ease-in-out;
                padding: 20px;
            }

            td {
                padding: 12px 12px;
                color: #003366;
                font-weight: 500;
            }

            input[type="text"], select, textarea {
                width: 100%;
                padding: 10px;
                border: 1px solid #80bfff;
                border-radius: 5px;
                background-color: #ffffff;
                transition: box-shadow 0.3s ease-in-out;
            }

                input[type="text"]:focus, select:focus, textarea:focus {
                    outline: none;
                    box-shadow: 0 0 5px #3399ff;
                }

            .blue-button {
                background-color: #0066cc;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;
                transition: background-color 0.3s, transform 0.3s;
            }

                .blue-button:hover {
                    background-color: #004d99;
                    transform: scale(1.05);
                }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                    transform: translateY(-20px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
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
                    <li><a href="Admin.aspx">User Details</a></li>
                    <li><a href="User_detail.aspx">Bnak details</a></li>
                    <li><a href="Add_LoanCatagory.aspx">Apply loan</a></li>
                    <%--    <li><a href="../contact.html">Contact</a></li>--%>
                    <li><a href="../login.aspx" class="login-btn">Login</a></li>
                    <li><a href="../profile.aspx" class="login-btn">👤</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <table>
        <tr>
            <td>Category name:</td>
            <td>
                <asp:DropDownList ID="drpadd" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpadd_SelectedIndexChanged">
                    <asp:ListItem>---Select Loan---</asp:ListItem>
                </asp:DropDownList>
        </tr>
        <tr>
            <td>Loan name:</td>
            <td>
                <asp:TextBox ID="txtloannm" runat="server"></asp:TextBox></td>
            </td>
                
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txtdscription" runat="server"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Intrest Rate:</td>
            <td>
                <asp:TextBox ID="txtintrest" runat="server"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Maximum Tenure</td>
            <td>
                <asp:TextBox ID="txttenure" runat="server"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Maximum Amount</td>
            <td>
                <asp:TextBox ID="txtamount" runat="server"></asp:TextBox></td>

        </tr>

        <tr>
            <td>Eligibility</td>
            <td>
                <asp:TextBox ID="txteligibility" runat="server"></asp:TextBox></td>

        </tr>
        <tr>
            <td>Loan image</td>
            <asp:FileUpload ID="fldimg" runat="server" />

        </tr>
        <td></td>
        <td>
            <asp:Button ID="Btnaddloan" runat="server" Text="Add Loan" OnClick="Btnaddloan_Click" /></td>

        </tr>
    </table>

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>

       
     

        <asp:TemplateField HeaderText="CategoryId">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryId") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="LoanName">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("LoanName") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="InterestRate">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("InterestRate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="MaxTenure">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaxTenure") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="MinAmount">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("MinAmount") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="LoanImage">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("LoanImage") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Eligibility">
            <ItemTemplate>
               <asp:Label ID="Label7" runat="server" Text='<%# Eval("Eligibility") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButtonEdit" runat="server" CommandArgument='<%# Eval("SubId") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Remove">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="cmd_dlt" CommandArgument='<%# Eval("SubId") %>'>Remove</asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

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

