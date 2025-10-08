<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="project_banking.index" %>

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
            /* Reset */
            /* Reset */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }

            body {
                background: linear-gradient(135deg, #e3f2fd, #bbdefb);
                color: #2c3e50;
                line-height: 1.6;
                overflow-x: hidden;
            }

            /* Features Section */
            .features {
                max-width: 1000px;
                margin: 60px auto;
                padding: 50px;
                border-radius: 25px;
                background: rgba(255, 255, 255, 0.85);
                backdrop-filter: blur(10px);
                box-shadow: 0 12px 35px rgba(0, 100, 200, 0.2);
                animation: fadeUp 1.2s ease-in-out;
            }

                /* Intro */
                .features .intro {
                    text-align: center;
                    margin-bottom: 40px;
                    animation: fadeIn 1.2s ease-in-out;
                }

                    .features .intro p {
                        font-size: 1.3rem;
                        color: #37474f;
                        margin-bottom: 20px;
                    }

            /* ASP.NET Button */
            .btn {
                padding: 14px 32px;
                background: linear-gradient(90deg, #42a5f5, #0d47a1);
                color: #fff !important;
                border: none;
                border-radius: 30px;
                font-size: 1rem;
                font-weight: 600;
                cursor: pointer;
                box-shadow: 0 6px 15px rgba(13, 71, 161, 0.3);
                transition: all 0.3s ease-in-out;
                animation: pulse 2s infinite;
            }

                .btn:hover {
                    background: linear-gradient(90deg, #0d47a1, #42a5f5);
                    transform: translateY(-4px) scale(1.05);
                    box-shadow: 0 8px 20px rgba(13, 71, 161, 0.4);
                }

            /* Headings */
            .features h1 {
                font-size: 2rem;
                color: #0d47a1;
                margin-bottom: 15px;
                position: relative;
                animation: slideLeft 1s ease-in-out;
            }

                .features h1::after {
                    content: "";
                    display: block;
                    width: 60px;
                    height: 4px;
                    background: linear-gradient(90deg, #42a5f5, #0d47a1);
                    margin: 10px auto;
                    border-radius: 2px;
                }

            /* About Section */
            .about {
                text-align: center;
                margin: 50px 0;
                animation: fadeIn 1.5s ease-in-out;
            }

                .about p {
                    color: #455a64;
                    font-size: 1.1rem;
                    margin-bottom: 15px;
                }

                .about .learn-more {
                    display: inline-block;
                    color: #1976d2;
                    font-weight: 500;
                    margin-top: 10px;
                    text-decoration: none;
                    transition: all 0.3s;
                }

                    .about .learn-more:hover {
                        color: #0d47a1;
                        transform: scale(1.05);
                    }

            /* Services Section */
            .services {
                text-align: center;
                animation: slideUp 1.5s ease-in-out;
            }

                .services ul {
                    list-style: none;
                    margin-top: 20px;
                }

                    .services ul li {
                        background: linear-gradient(145deg, #e3f2fd, #bbdefb);
                        margin: 12px auto;
                        padding: 15px;
                        width: 80%;
                        border-radius: 15px;
                        font-weight: 600;
                        color: #0d47a1;
                        box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.08), -5px -5px 15px rgba(255, 255, 255, 0.6);
                        transition: all 0.3s;
                    }

                        .services ul li:hover {
                            transform: translateY(-8px) scale(1.05) rotate(-1deg);
                            background: linear-gradient(145deg, #bbdefb, #90caf9);
                            box-shadow: 0 8px 18px rgba(13, 71, 161, 0.3);
                        }

            /* Animations */
            @keyframes fadeUp {
                from {
                    opacity: 0;
                    transform: translateY(60px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
            }

            @keyframes slideLeft {
                from {
                    opacity: 0;
                    transform: translateX(-50px);
                }

                to {
                    opacity: 1;
                    transform: translateX(0);
                }
            }

            @keyframes slideUp {
                from {
                    opacity: 0;
                    transform: translateY(40px);
                }

                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes pulse {
                0% {
                    transform: scale(1);
                }

                50% {
                    transform: scale(1.05);
                }

                100% {
                    transform: scale(1);
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
    <%-- <section class="hero">
        <h1>Secure Your Future with Golden Bank</h1>
        <p>
            Fast, Safe, and Trusted Banking Services.</p>
        <a href="services.html" class="btn">Explore Services</a>
    </section>--%>
    <section class="features">
        <h1>Secure Your Future with Golden Bank</h1>
        <p>Fast, Safe, and Trusted Banking Services.</p>
        <a href="Transction.aspx" class="btn">Transction Services</a>
    </section>

    <section class="features">
        <!-- Intro / Hero Line -->
        <div class="intro">
            <p>
                Open an account in minutes, transfer money instantly, 
            and enjoy secure, modern banking.
            </p>
            <asp:Button runat="server" CssClass="btn" Text="Open Your Account" OnClick="Unnamed1_Click" />
        </div>

        <!-- About Section -->
        <div class="about">
            <h1>Who We Are</h1>
            <p>
                BankSimple is a modern digital bank built for you. 
            We simplify banking with secure technology, transparent pricing, 
            and customer-first support.
            </p>
            <a href="About.aspx" class="learn-more">Learn More About Us →</a>
        </div>

        <!-- Services Section -->
        <div class="services">
            <h1>Our Services</h1>
            <ul>
                <li>Withdraw Money</li>
                <li>Transfer Money</li>
                <li>Deposit Money</li>
            </ul>
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
                    <%--<li><a href="services.html">Services</a></li>--%>
                    <li><a href="Account.aspx">Account</a></li>
                    <li><a href="Transction.aspx">Transction</a></li>
                    <li><a href="login.aspx" class="login-btn">Login</a></li>
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

