<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project_banking.About" %>

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
            /* General */
            body {
                margin: 0;
                font-family: "Poppins", sans-serif;
                background: linear-gradient(135deg, #e3f2fd, #bbdefb);
                color: #2c3e50;
            }

            /* Header */
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

            /* About Section */
            .about-section {
                max-width: 1000px;
                margin: 60px auto;
                padding: 40px;
                background: rgba(255,255,255,0.9);
                border-radius: 20px;
                box-shadow: 0 10px 25px rgba(13,71,161,0.15);
                animation: fadeUp 1s ease-in-out;
            }

                .about-section h1 {
                    text-align: center;
                    font-size: 2.2rem;
                    color: #0d47a1;
                    margin-bottom: 20px;
                    position: relative;
                }

                    .about-section h1::after {
                        content: "";
                        display: block;
                        width: 70px;
                        height: 4px;
                        background: #42a5f5;
                        margin: 10px auto;
                        border-radius: 2px;
                    }

                .about-section p {
                    text-align: center;
                    color: #455a64;
                    font-size: 1.1rem;
                    margin-bottom: 40px;
                }

            /* Grid */
            .about-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit,minmax(280px,1fr));
                gap: 25px;
            }

                .about-grid .card {
                    background: #f5f9ff;
                    padding: 25px;
                    border-radius: 15px;
                    box-shadow: 0 8px 20px rgba(0,0,0,0.08);
                    text-align: center;
                    transition: transform 0.3s, box-shadow 0.3s;
                    animation: fadeIn 1.2s ease-in-out;
                }

                    .about-grid .card:hover {
                        transform: translateY(-8px) scale(1.03);
                        box-shadow: 0 12px 25px rgba(13,71,161,0.3);
                    }

                .about-grid h2 {
                    color: #1976d2;
                    margin-bottom: 10px;
                    font-size: 1.5rem;
                }

                .about-grid p {
                    color: #546e7a;
                }

            /* Footer */
            .footer {
                text-align: center;
                padding: 15px;
                background: #0d47a1;
                color: #fff;
                margin-top: 50px;
                font-size: 0.9rem;
            }

            /* Animations */
            @keyframes fadeUp {
                from {
                    opacity: 0;
                    transform: translateY(50px);
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

                /* ===== Light Blue Theme Navigation Bar ===== */
header {
    background: linear-gradient(135deg, #e3f2fd, #bbdefb); /* Soft blue gradient */
    color: #0d47a1;
    padding: 12px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-radius: 0 0 12px 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    transition: background 0.3s ease;
}

/* Logo */
header .logo {
    font-size: 24px;
    font-weight: 700;
    color: #0d47a1;
    letter-spacing: 1px;
    text-transform: uppercase;
}

/* Navigation Menu */
header nav ul {
    list-style: none;
    display: flex;
    gap: 25px;
    margin: 0;
    padding: 0;
}

header nav ul li {
    position: relative;
}

header nav ul li a {
    text-decoration: none;
    color: #0d47a1;
    font-size: 16px;
    font-weight: 500;
    padding: 10px 16px;
    border-radius: 6px;
    transition: all 0.3s ease;
}

/* Hover Effect */
header nav ul li a:hover {
    background: #90caf9;
    color: #0d47a1;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
}

/* Active Link (Optional) */
header nav ul li a.active {
    background: #42a5f5;
    color: #ffffff;
    font-weight: 600;
}

/* Login Button */
header nav ul li .login-btn {
    background: #1e88e5;
    color: white;
    font-weight: 600;
    padding: 10px 20px;
    border-radius: 6px;
    transition: background 0.3s ease, transform 0.2s ease;
}

header nav ul li .login-btn:hover {
    background: #1565c0;
    transform: translateY(-2px);
}

/* Responsive Menu */
@media (max-width: 768px) {
    header {
        flex-direction: column;
        align-items: flex-start;
        padding: 15px;
    }

    header nav ul {
        flex-direction: column;
        gap: 12px;
        width: 100%;
    }

    header nav ul li a {
        display: block;
        width: 100%;
        text-align: left;
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
    <section class="about-section">
        <div class="container">
            <h1>About Us</h1>
            <p>
                At <b>BankSimple</b>, we believe banking should be easy, transparent, and accessible to everyone. 
                    Founded with the vision of making financial services modern and stress-free, 
                    we are dedicated to empowering individuals and businesses with secure and innovative banking solutions.
            </p>

            <div class="about-grid">
                <div class="card">
                    <h2>Our Mission</h2>
                    <p>
                        To simplify banking with technology-driven solutions while building trust and providing 
                            unmatched customer experience.
                    </p>
                </div>
                <div class="card">
                    <h2>Our Vision</h2>
                    <p>
                        To become the most customer-centric digital bank, helping people achieve financial freedom 
                            with innovative services.
                    </p>
                </div>
                <div class="card">
                    <h2>Our Values</h2>
                    <p>
                        Integrity, Transparency, Innovation, and Customer First are the values that define everything we do.
                    </p>
                </div>
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

