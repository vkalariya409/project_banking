<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_LoanCatagory.aspx.cs" Inherits="project_banking.Admin.Add_LoanCatagory" %>

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
            .loan-apply-container {
    width: 60%;
    margin: 30px auto;
    background: #f0f7ff; /* soft blue background */
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 2px 15px rgba(0,0,0,0.1);
    font-family: 'Segoe UI', sans-serif;
}

.loan-heading {
    text-align: center;
    color: #004aad; /* deep blue */
    font-size: 26px;
    margin-bottom: 25px;
    font-weight: bold;
}

.loan-apply-table {
    width: 100%;
    border-collapse: collapse;
}

.loan-apply-table td {
    padding: 12px 10px;
    vertical-align: middle;
}

.loan-apply-table tr:nth-child(even) {
    background-color: #e6f0ff; /* light blue stripe */
}

.loan-apply-table tr:hover {
    background-color: #d0e4ff; /* hover effect */
    transition: 0.3s ease;
}

.txtbox, .ddl, .file-upload {
    width: 95%;
    padding: 8px;
    border: 1px solid #0078d7; /* medium blue border */
    border-radius: 6px;
    font-size: 14px;
}

.txtbox:focus, .ddl:focus {
    border-color: #004aad;
    outline: none;
}

.img-preview {
    width: 120px;
    height: 120px;
    margin-top: 8px;
    border-radius: 6px;
    border: 1px solid #0078d7;
    object-fit: cover;
}

#loanbut {
    background-color: #0078d7; /* deep blue */
    color: white;
    border: none;
    padding: 10px 18px;
    border-radius: 6px;
    cursor: pointer;
    font-weight: bold;
    font-size: 14px;
    transition: 0.3s ease;
}

#loanbut:hover {
    background-color: #005fa3;
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
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="../services.html">Services</a></li>
                    <li><a href="../about.html">About Us</a></li>
                    <li><a href="../contact.html">Contact</a></li>
                    <li><a href="../login.html" class="login-btn">Login</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="loan-apply-container">
        <h2 class="loan-heading">💰 Apply for a Loan</h2>


        <table class="loan-apply-table">

            <!-- Loan Category Dropdown -->
            <tr>
                <td>
                    <asp:Label ID="lblCategory" runat="server" Text="Loan Category:" />
                </td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="ddl" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <%--loan description--%>
            <tr>
                <td>
                    <asp:Label ID="lbldiscription" runat="server" Text="Description:" />
                </td>
                <td>
                    <asp:TextBox ID="txtdescription" runat="server" CssClass="txtbox" />
                </td>
            </tr>

            <%--intrest rate--%>
            <tr>
                <td>
                    <asp:Label ID="lblintrest" runat="server" Text="Description:" />
                </td>
                <td>
                    <asp:TextBox ID="txtintrest" runat="server" CssClass="txtbox" />
                </td>
            </tr>
            <!-- Loan Amount -->
            <tr>
                <td>
                    <asp:Label ID="lblAmount" runat="server" Text="Loan Amount:" />
                </td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="txtbox" />
                </td>
            </tr>

            <%-- Eligibility --%>


            <tr>
                <td>
                    <asp:Label ID="lblEligibility" runat="server" Text="Loan Amount:" />
                </td>
                <td>
                    <asp:TextBox ID="txteligibility" runat="server" CssClass="txtbox" />
                </td>
            </tr>
            <!--  Image -->
            <tr>
                    <td><asp:Label ID="lblImage" runat="server" Text="Loan photo" /></td>
                    <td>
                        <asp:FileUpload ID="fuImage" runat="server" CssClass="file-upload" />
                        <br /><asp:Image ID="imgPreview" runat="server" CssClass="img-preview" />
                    </td>
                </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button id="loanbut" runat="server" Text="Uplod" />
                </td>
            </tr>
        </table>

    </div>
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
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="../services.html">Services</a></li>
                    <li><a href="../contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="footer-contact">
                <h4>Contact Us</h4>
                <p>
                    <i class="fas fa-phone"></i>+91 1234567890
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

