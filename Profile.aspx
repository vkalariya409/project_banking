<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="project_banking.Profile" %>

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
            
/* ------------------------------
   Banking Profile Page CSS
   Blue Theme + Animations
--------------------------------*/

/* Page Fade-in */
body {
    font-family: "Segoe UI", Roboto, Arial, sans-serif;
    background: linear-gradient(135deg, #eaf4ff 0%, #f7fbff 100%);
    margin: 0;
    padding: 0;
    animation: fadeInBody 0.9s ease-in;
}
@keyframes fadeInBody {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* Profile Container */
.profile-wrapper {
    width: 900px;
    margin: 40px auto;
    background: #ffffff;
    border-radius: 18px;
    box-shadow: 0 10px 25px rgba(0, 75, 160, 0.15);
    padding: 28px;
}

/* Header */
.profile-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-bottom: 2px solid rgba(0, 91, 187, 0.1);
    padding-bottom: 18px;
    margin-bottom: 22px;
}

.avatar {
    width: 110px;
    height: 110px;
    border-radius: 50%;
    border: 4px solid #007bff;
    box-shadow: 0 6px 14px rgba(0, 75, 160, 0.2);
    transition: all 0.3s ease;
}
.avatar:hover { transform: scale(1.05) rotate(3deg); }

.profile-title h2 {
    font-size: 26px;
    margin: 0;
    color: #06327a;
    font-weight: 700;
}
.profile-title p {
    margin: 6px 0 0 0;
    color: #2e5aa3;
    font-size: 14px;
}

/* Grid Layout */
.profile-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 18px;
}

/* Field Card */
.field-card {
    background: #ffffff;
    padding:40px;
    border-radius: 12px;
    border: 1px solid rgba(0, 123, 255, 0.12);
    box-shadow: 0 4px 10px rgba(0,0,0,0.03);
    transition: all 0.3s ease;
}
.field-card:hover {
    transform: translateY(1px);
    box-shadow: 0 6px 6px rgba(0, 91, 175, 0.15);
}
.field-card label {
    display: block;
    font-size: 13px;
    font-weight: 600;
    margin: 8px 0 4px;
    color: #0047b3;
}

/* Input fields */
.field-card input[type="text"],
.field-card input[type="email"],
.field-card input[type="tel"] {
    width: 100%;
   /* padding: 9px 6px;*/
    border-radius: 6px;
    border: 1px solid #cfe4ff;
    background: #f8fbff;
    font-size: 14px;
    color: #073069;
    outline: none;
    transition: all 0.25s ease;
}
.field-card input:focus {
    border-color: #007bff;
    background: #ffffff;
    box-shadow: 0 0 6px rgba(0,123,255,0.3);
}

/* Notes */
.small-note {
    font-size: 12px;
    color: #666;
    margin-top: 6px;
    background: #f1f8ff;
    padding: 6px 8px;
    border-left: 3px solid #007bff;
    border-radius: 6px;
}

/* Buttons */
.actions {
    margin-top: 20px;
    display: flex;
    gap: 14px;
    justify-content: flex-end;
}
.btn {
    padding: 10px 18px;
    border-radius: 8px;
    border: none;
    cursor: pointer;
    font-weight: 600;
    letter-spacing: 0.5px;
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
}
.btn::after {
    content: "";
    position: absolute;
    top:0; left:-100%;
    width:100%; height:100%;
    background: rgba(255,255,255,0.2);
    transition: left 0.4s;
}
.btn:hover::after { left: 100%; }

.btn-edit { background: #007bff; color: white; }
.btn-edit:hover { background:#0062cc; }

.btn-save { background: #0047b3; color: white; }
.btn-save:hover { background:#003380; }

.btn-logout { background: transparent; color:#0047b3; border:1px solid #cfe4ff; }
.btn-logout:hover { background:#eaf3ff; }

/* Messages */
#lblMessage {
    display: block;
    margin-top: 16px;
    font-weight: bold;
    padding: 10px;
    border-radius: 8px;
}
.msg-success { background:#e8f7ef; color:#05693a; }
.msg-error { background:#fff0f0; color:#a20000; }

/* Responsive */
@media (max-width: 768px) {
    .profile-wrapper { width: 95%; padding:18px; }
    .profile-grid { grid-template-columns: 1fr; }
    .actions { justify-content: center; flex-wrap: wrap; }
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
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">



<div class="profile-wrapper">

    <!-- Header -->
    <div class="profile-header">
        <asp:Image ID="imgAvatar" runat="server" CssClass="avatar" ImageUrl="~/assets/default-avatar.png" />
        <div class="profile-title">
            <h2><asp:Label ID="lblName" runat="server" Text="User Name"></asp:Label></h2>
            <p>
                Account No: <asp:Label ID="lblAccountNo" runat="server" Text=""></asp:Label> • 
                Balance: <asp:Label ID="lblBalance" runat="server" Text=""></asp:Label>
            </p>
        </div>
        <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-logout" Text="Logout" OnClick="btnLogout_Click" />
    </div>

    <!-- Profile Info -->
    <div class="profile-grid">
        <div class="field-card">
            <label>Full Name</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            <%--<label>Email</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>--%>

            <label>Mobile</label>
            <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>

            <div class="small-note">Update your personal information here and then press <b>Save</b>.</div>
        </div>

        <div class="field-card">
            <label>Account Number (readonly)</label>
            <asp:TextBox ID="txtAccount" runat="server" ReadOnly="true"></asp:TextBox>

            <label>Current Balance</label>
            <asp:TextBox ID="txtBalance" runat="server" ReadOnly="true"></asp:TextBox>

            <label>Change Avatar</label>
            <asp:FileUpload ID="fuAvatar" runat="server" />

            <div class="small-note">Quickly upload a profile photo (jpg/png). Then press <b>Save</b>.</div>
        </div>
    </div>

    <!-- Buttons -->
    <div class="actions">
        <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-edit" Text="Edit" OnClick="btnEdit_Click" />
        
    </div>

    <!-- Messages -->
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

</div>    <footer class="footerr-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer-widget">
    </footer>
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

