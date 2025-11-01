<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ragister.aspx.cs" Inherits="project_banking.Ragister" %>

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
            /* ----------------------------- */
            /* General Reset & Body Styling */
            /* ----------------------------- */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }

            body {
                background: linear-gradient(135deg, #e3f2fd, #bbdefb); /* soft blue gradient */
                color: #2c3e50;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }

            /* ----------------------------- */
            /* Header / Navigation (Optional) */
            /* ----------------------------- */
            .header {
                background: #0d47a1;
                padding: 15px 0;
                box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            }

                .header .container {
                    width: 90%;
                    margin: auto;
                    display: flex;
                    justify-content: space-between;
                    align-items: center;
                }

                .header .logo {
                    color: #fff;
                    font-size: 1.8rem;
                    font-weight: bold;
                }

                .header nav a {
                    color: #fff;
                    text-decoration: none;
                    margin: 0 15px;
                    font-weight: 500;
                    transition: all 0.3s;
                }

                    .header nav a:hover,
                    .header nav a.active {
                        color: #90caf9;
                    }

            /* ----------------------------- */
            /* Hero Section */
            /* ----------------------------- */
            .hero {
                width: 100%;
                text-align: center;
                padding: 60px 20px 40px;
            }

                .hero h1 {
                    color: #0d47a1;
                    font-size: 2.5rem;
                    animation: fadeSlideDown 1s ease-out forwards;
                }

            /* ----------------------------- */
            /* Registration Form Section */
            /* ----------------------------- */
            .features {
                width: 100%;
                max-width: 550px;
                background: rgba(255, 255, 255, 0.95);
                padding: 40px 30px;
                border-radius: 20px;
                box-shadow: 0 10px 30px rgba(0, 100, 200, 0.2);
                margin: 40px auto 40px;
                animation: fadeSlideUp 1s ease-out forwards;
            }

                /* Table Layout */
                .features table {
                    width: 100%;
                    border-collapse: separate;
                    border-spacing: 0 15px;
                }

                .features td {
                    font-size: 1rem;
                    color: #37474f;
                    padding: 5px;
                }

                /* Input Fields */
                .input-field, .features input[type="text"],
                .features input[type="password"], .features textbox {
                    width: 100%;
                    padding: 12px 15px;
                    border: 1px solid #90caf9;
                    border-radius: 12px;
                    font-size: 1rem;
                    transition: all 0.3s;
                }

                    .input-field:focus {
                        border-color: #0d47a1;
                        box-shadow: 0 0 8px rgba(13,71,161,0.3);
                        outline: none;
                    }

                /* Buttons */
                .btn, .features .aspButton {
                    padding: 12px 25px;
                    background: linear-gradient(90deg, #42a5f5, #0d47a1);
                    color: #fff !important;
                    border: none;
                    border-radius: 25px;
                    font-weight: 600;
                    cursor: pointer;
                    transition: all 0.3s;
                    box-shadow: 0 6px 15px rgba(13,71,161,0.3);
                    margin-top: 10px;
                }

                    .btn:hover, .features .aspButton:hover {
                        background: linear-gradient(90deg, #0d47a1, #42a5f5);
                        transform: translateY(-3px) scale(1.05);
                        box-shadow: 0 8px 20px rgba(13,71,161,0.4);
                    }

            /* Validation Summary */
            .validation-summary {
                color: #d32f2f;
                margin-top: 15px;
                font-size: 0.95rem;
            }

            /* Register link */
            .features p {
                font-size: 0.95rem;
                color: #37474f;
                text-align: center;
                margin-top: 10px;
            }

            .features a {
                color: #1976d2;
                text-decoration: none;
                transition: all 0.3s;
            }

                .features a:hover {
                    color: #0d47a1;
                    text-decoration: underline;
                }

            /* ----------------------------- */
            /* Footer */
            /* ----------------------------- */
            .footer {
                text-align: center;
                padding: 20px;
                background: #0d47a1;
                color: #fff;
                margin-top: auto;
                font-size: 0.9rem;
            }

                .footer p {
                    margin: 0;
                }

            /* ----------------------------- */
            /* Animations */
            /* ----------------------------- */
            @keyframes fadeSlideDown {
                from {
                    opacity: 0;
                    transform: translateY(-40px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes fadeSlideUp {
                from {
                    opacity: 0;
                    transform: translateY(40px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            /* ----------------------------- */
            /* Responsive Design */
            /* ----------------------------- */
            @media screen and (max-width: 600px) {
                .features {
                    padding: 30px 20px;
                }

                .hero h1 {
                    font-size: 2rem;
                }

                .header nav a {
                    margin: 0 10px;
                    font-size: 0.9rem;
                }

                .features table td {
                    display: block;
                    width: 100%;
                }

                    .features table td:first-child {
                        margin-bottom: 5px;
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

            /* ===== Light Blue Button Link Style ===== */
            .back-home-link {
                display: inline-block;
                text-decoration: none;
                background: linear-gradient(135deg, #42a5f5, #1e88e5); /* Light Blue Gradient */
                color: #fff;
                font-size: 16px;
                font-weight: 600;
                padding: 10px 20px;
                border-radius: 8px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
                transition: all 0.3s ease;
                margin-top: 15px;
            }

                /* Hover Effect */
                .back-home-link:hover {
                    background: linear-gradient(135deg, #1e88e5, #1565c0);
                    transform: translateY(-2px);
                    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
                    color: #e3f2fd;
                }

                /* Focus or Active */
                .back-home-link:active {
                    transform: scale(0.98);
                }

            /* Optional – Center align in parent container */
            .center-link {
                text-align: center;
                display: block;
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
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="hero">
        <h1><b>Registration Form</b></h1>
    </section>

    <!-- Registration Form -->
    <section class="features">
        <table>
            <tr>
                <td>First Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field"></asp:TextBox>
                </td>
               <%-- <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter a First Name"></asp:RequiredFieldValidator>
                </td>--%>
            </tr>

            <tr>
                <td>Last Name:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input-field"></asp:TextBox>
                </td>
               <%-- <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter a Last Name"></asp:RequiredFieldValidator>
                </td>--%>
            </tr>

            <tr>
                <td>Email:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input-field"></asp:TextBox>
                </td>
               <%-- <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter your Email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter a proper Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>--%>
            </tr>

            <tr>
                <td>Mobile No:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="input-field"></asp:TextBox>
                </td>
               <%-- <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter your Mobile Number"></asp:RequiredFieldValidator>
                </td>--%>
            </tr>

            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                </td>
              <%--  <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                </td>--%>
            </tr>

            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                </td>
               <%-- <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                </td>--%>
            </tr>

            <tr>
                <td colspan="2" style="text-align: center; padding-top: 10px;">
                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn" OnClick="Button1_Click" />
                    <p>Already have an account? <a href="login.aspx">Login here</a></p>
                    <p>
                        <a href="index.aspx">Back to Home</a>
                    </p>
                </td>
            </tr>
        </table>



    <%--    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="validation-summary" HeaderText="Please fix the following errors:" />
    --%>
    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
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

