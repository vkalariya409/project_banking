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
                from {
                    opacity: 0;
                    transform: translateY(50px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
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
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
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
                from {
                    opacity: 0;
                    transform: translateY(20px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
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
                0% {
                    box-shadow: 0 5px 15px rgba(0,123,255,0.4);
                }

                50% {
                    box-shadow: 0 10px 25px rgba(0,191,255,0.7);
                }

                100% {
                    box-shadow: 0 5px 15px rgba(0,123,255,0.4);
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

            @keyframes fadeSlideUp {
                0% {
                    opacity: 0;
                    transform: translateY(30px);
                }

                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
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
    <%-- <section style="background-color: darkblue; padding: 20px; border-radius: 2000px;">
        <h1 style="color: white; text-align: center; font-family: Arial, sans-serif; font-size: 32px; letter-spacing: 2px; margin: 0;">
            <b>Account</b>
        </h1>
    </section>--%>
    <h1 style="text-align: center; color: #0d47a1; font-family: 'Poppins', sans-serif; font-size: 2.5rem; margin: 20px 0; animation: fadeSlideUp 1s ease-out forwards;">Account
    </h1>

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

