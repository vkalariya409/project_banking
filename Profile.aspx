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
            /* Driver Profile Specific Styles */
            .profile-illustration {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100%;
            }

            .profile-avatar-large {
                width: 120px;
                height: 120px;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #fff;
                font-size: 48px;
                margin-bottom: 30px;
                animation: pulse 2s infinite;
            }

            .profile-badges {
                display: flex;
                gap: 20px;
            }

            .badge-item {
                display: flex;
                align-items: center;
                gap: 8px;
                background: rgba(255,255,255,0.2);
                padding: 10px 20px;
                border-radius: 25px;
                color: #fff;
                font-weight: 500;
            }

                .badge-item i {
                    color: #ffc107;
                }

            .profile-avatar-section {
                text-align: center;
                margin-bottom: 30px;
            }

            .avatar-large {
                width: 100px;
                height: 100px;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #fff;
                font-size: 40px;
                margin: 0 auto 20px;
            }

            .profile-stats {
                display: flex;
                justify-content: space-around;
                text-align: center;
            }

            .stat-item {
                display: flex;
                flex-direction: column;
                gap: 5px;
            }

            .stat-number {
                font-size: 24px;
                font-weight: 700;
                color: #333;
                font-family: 'Inter', sans-serif;
            }

            .stat-label {
                font-size: 12px;
                color: #666;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            .status-items {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .status-item {
                display: flex;
                align-items: center;
                gap: 12px;
                padding: 12px;
                border-radius: 8px;
                background: #f8f9fa;
            }

                .status-item.verified {
                    background: #d4edda;
                    color: #155724;
                }

                .status-item.pending {
                    background: #fff3cd;
                    color: #856404;
                }

                .status-item i {
                    font-size: 18px;
                }

            .profile-form .form-row {
                display: flex;
                gap: 20px;
                margin-bottom: 20px;
            }

            .profile-form .form-group {
                flex: 1;
                margin-bottom: 0;
            }

            .profile-form label {
                display: block;
                font-weight: 600;
                margin-bottom: 8px;
                color: #333;
                font-size: 14px;
            }

            .profile-form .form-control {
                width: 100%;
                padding: 12px 16px;
                border-radius: 8px;
                border: 2px solid #e9ecef;
                background: #fff;
                color: #111;
                transition: all 0.3s ease;
                font-size: 14px;
            }

                .profile-form .form-control:focus {
                    outline: none;
                    border-color: #667eea;
                    box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
                }

                .profile-form .form-control.error {
                    border-color: #dc3545;
                    box-shadow: 0 0 0 3px rgba(220, 53, 69, 0.1);
                }

            .vehicle-details {
                display: flex;
                gap: 30px;
                align-items: flex-start;
            }

            .vehicle-image {
                display: flex;
                flex-direction: column;
                align-items: center;
                gap: 15px;
            }

            .vehicle-placeholder {
                width: 200px;
                height: 120px;
                background: #f8f9fa;
                border: 2px dashed #e9ecef;
                border-radius: 8px;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: #666;
            }

                .vehicle-placeholder i {
                    font-size: 32px;
                    margin-bottom: 10px;
                }

            .vehicle-form {
                flex: 1;
            }

            .documents-grid {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px;
            }

            .document-item {
                display: flex;
                align-items: center;
                gap: 15px;
                padding: 20px;
                border: 1px solid #e9ecef;
                border-radius: 10px;
                transition: all 0.3s ease;
            }

                .document-item:hover {
                    border-color: #667eea;
                    background: #f8f9ff;
                }

            .document-icon {
                width: 50px;
                height: 50px;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #fff;
                font-size: 20px;
            }

            .document-info {
                flex: 1;
            }

                .document-info h5 {
                    font-size: 16px;
                    font-weight: 600;
                    color: #333;
                    margin: 0 0 5px 0;
                    font-family: 'Inter', sans-serif;
                }

                .document-info p {
                    color: #666;
                    margin: 0 0 8px 0;
                    font-size: 14px;
                }

            .status {
                display: inline-flex;
                align-items: center;
                gap: 5px;
                padding: 4px 8px;
                border-radius: 12px;
                font-size: 12px;
                font-weight: 500;
            }

                .status.verified {
                    background: #d4edda;
                    color: #155724;
                }

                .status.pending {
                    background: #fff3cd;
                    color: #856404;
                }

            .document-actions {
                display: flex;
                flex-direction: column;
                gap: 8px;
            }

            .rating-summary {
                display: flex;
                align-items: center;
                gap: 15px;
            }

            .rating-number {
                font-size: 32px;
                font-weight: 700;
                color: #333;
                font-family: 'Inter', sans-serif;
            }

            .rating-stars {
                display: flex;
                gap: 2px;
            }

                .rating-stars i {
                    color: #ffc107;
                    font-size: 16px;
                }

            .rating-count {
                color: #666;
                font-size: 14px;
            }

            .rating-breakdown {
                display: flex;
                flex-direction: column;
                gap: 12px;
                margin-bottom: 30px;
            }

            .rating-bar {
                display: flex;
                align-items: center;
                gap: 15px;
            }

            .rating-label {
                font-size: 14px;
                color: #666;
                width: 60px;
            }

            .rating-progress {
                flex: 1;
                height: 8px;
                background: #e9ecef;
                border-radius: 4px;
                overflow: hidden;
            }

            .progress-fill {
                height: 100%;
                background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                border-radius: 4px;
                transition: width 0.3s ease;
            }

            .rating-percentage {
                font-size: 14px;
                color: #666;
                width: 40px;
                text-align: right;
            }

            .recent-reviews h5 {
                font-size: 18px;
                font-weight: 600;
                color: #333;
                margin-bottom: 20px;
                font-family: 'Inter', sans-serif;
            }

            .review-item {
                padding: 20px;
                border: 1px solid #e9ecef;
                border-radius: 10px;
                margin-bottom: 15px;
            }

            .review-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 10px;
            }

            .reviewer-info {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .reviewer-name {
                font-weight: 600;
                color: #333;
            }

            .review-stars {
                display: flex;
                gap: 2px;
            }

                .review-stars i {
                    color: #ffc107;
                    font-size: 14px;
                }

            .review-date {
                color: #666;
                font-size: 14px;
            }

            .review-text {
                color: #666;
                line-height: 1.6;
                margin: 0;
            }

            .settings-sections {
                display: flex;
                flex-direction: column;
                gap: 30px;
            }

            .settings-section h5 {
                font-size: 18px;
                font-weight: 600;
                color: #333;
                margin-bottom: 20px;
                font-family: 'Inter', sans-serif;
            }

            .setting-item {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 15px 0;
                border-bottom: 1px solid #f0f0f0;
            }

                .setting-item:last-child {
                    border-bottom: none;
                }

            .setting-info {
                display: flex;
                flex-direction: column;
                gap: 5px;
            }

            .setting-label {
                font-weight: 500;
                color: #333;
            }

            .setting-desc {
                font-size: 14px;
                color: #666;
            }

            /* Toggle Switch */
            .switch {
                position: relative;
                display: inline-block;
                width: 50px;
                height: 24px;
            }

                .switch input {
                    opacity: 0;
                    width: 0;
                    height: 0;
                }

            .slider {
                position: absolute;
                cursor: pointer;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background-color: #ccc;
                transition: .4s;
                border-radius: 24px;
            }

                .slider:before {
                    position: absolute;
                    content: "";
                    height: 18px;
                    width: 18px;
                    left: 3px;
                    bottom: 3px;
                    background-color: white;
                    transition: .4s;
                    border-radius: 50%;
                }

            input:checked + .slider {
                background-color: #667eea;
            }

                input:checked + .slider:before {
                    transform: translateX(26px);
                }

            .setting-item.updated {
                background: #f8f9ff;
                border-radius: 8px;
                padding: 15px;
                transition: all 0.3s ease;
            }

            @media (max-width: 991px) {
                .vehicle-details {
                    flex-direction: column;
                    align-items: center;
                }

                .documents-grid {
                    grid-template-columns: 1fr;
                }

                .rating-summary {
                    flex-direction: column;
                    text-align: center;
                    gap: 10px;
                }
            }

            @media (max-width: 767px) {
                .profile-form .form-row {
                    flex-direction: column;
                    gap: 15px;
                }

                .document-item {
                    flex-direction: column;
                    text-align: center;
                }

                .document-actions {
                    flex-direction: row;
                    justify-content: center;
                }

                .setting-item {
                    flex-direction: column;
                    align-items: flex-start;
                    gap: 15px;
                }
            }


            /* General Page Styling */
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(to right, #e3f2fd, #bbdefb);
                margin: 0;
                padding: 0;
            }

            /* Card Container */
            .dashboard-card {
                background: #ffffff;
                width: 800px;
                border-radius: 12px;
                box-shadow: 0px 8px 20px rgba(0, 110, 220, 0.15);
                overflow: hidden;
                animation: fadeIn 0.8s ease-in-out;
                margin-top: 30px;
            }

            /* Card Header */
            .card-header {
                background: linear-gradient(135deg, #4da6ff, #1a75ff);
                padding: 15px;
                text-align: center;
                color: white;
                font-size: 18px;
            }

                .card-header h3 {
                    margin: 0;
                    font-weight: 600;
                }

                .card-header i {
                    margin-right: 8px;
                }

            /* Card Body */
            .card-body {
                padding: 20px 30px;
            }

            /* Form Layout */
            .profile-form {
                display: flex;
                flex-direction: column;
                gap: 15px;
            }

            .form-row {
                display: flex;
                justify-content: space-between;
                gap: 20px;
            }

            .form-group {
                flex: 1;
                display: flex;
                flex-direction: column;
            }

            label {
                font-weight: 500;
                margin-bottom: 6px;
                color: #1565c0;
            }

            /* Input Fields */
            .form-control {
                padding: 10px;
                border: 1.5px solid #bbdefb;
                border-radius: 8px;
                font-size: 14px;
                transition: all 0.3s ease;
                outline: none;
            }

                .form-control:focus {
                    border-color: #1a75ff;
                    box-shadow: 0 0 8px rgba(26, 117, 255, 0.3);
                }

            /* Textarea */
            textarea.form-control {
                resize: none;
            }

            /* Submit Button */
            .btn-submit {
                background: linear-gradient(135deg, #4da6ff, #1a75ff);
                color: white;
                padding: 20px 20px;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                font-size: 16px;
                font-weight: 600;
                transition: all 0.3s ease;
                width: 100%;
            }

                .btn-submit:hover {
                    background: linear-gradient(135deg, #1a75ff, #4da6ff);
                    box-shadow: 0 6px 15px rgba(26, 117, 255, 0.4);
                    transform: translateY(-2px);
                }

            /* Animations */
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

            /* Responsive Design */
            @media (max-width: 650px) {
                .dashboard-card {
                    width: 90%;
                }

                .form-row {
                    flex-direction: column;
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
                    <li><a href="index.html">Home</a></li>
                    <!--<li><a href="services.html">Services</a></li>-->
                    <li><a href="Account.aspx">Account</a></li>
                    <li><a href="Transction.aspx">Transction</a></li>
                    <li><a href="login.aspx" class="login-btn">Login</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="hero">
        <h1>Secure Your Future with Golden Bank</h1>
        <p>
            Fast, Safe, and Trusted Banking Services.
        </p>
        <a href="services.html" class="btn">Explore Services</a>
    </section>
    <section class="dashboard-content">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <!-- Profile Overview Card -->
                    <center>
                        <div class="dashboard-card profile-overview-card">
                            <div class="card-header">
                                <h3><i class="fa fa-user"></i>Profile Overview</h3>
                            </div>
                            <div class="card-body">
                                <div class="profile-avatar-section">
                                    <div class="avatar-large">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <button class="btn btn-outline btn-sm">
                                        <i class="fa fa-camera"></i>Change Photo
                                               
                                    </button>
                                </div>

                            </div>
                    </center>
                    <%-- <!-- Account Status Card -->
                    <div class="dashboard-card account-status-card">
                        <div class="card-header">
                            <h3><i class="fa fa-shield"></i>Account Status</h3>
                        </div>
                        <div class="card-body">
                            <div class="status-items">
                                <div class="status-item verified">
                                    <i class="fa fa-check-circle"></i><span>Identity Verified</span>
                                </div>
                                <div class="status-item verified">
                                    <i class="fa fa-check-circle"></i><span>Background Check</span>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">--%>
                    <!-- Profile Information Form -->
                    <center>
                        <div class="dashboard-card profile-form-card">
                            <div class="card-header">
                                <h3><i class="fa fa-edit"></i>Personal Information</h3>
                            </div>
                            <div class="card-body">
                                <form class="profile-form">
                                    <div class="form-row">
                                        <div class="form-group">
                                            <label>
                                                First Name</label>
                                            <input type="text" class="form-control" value="" required>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                Last Name</label>
                                            <input type="text" class="form-control" value="" required>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group">
                                            <label>
                                                Email</label>
                                            <input type="email" class="form-control" value="" required>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                Phone</label>
                                            <input type="tel" class="form-control" value="" required>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group">
                                            <center>
                                            <label>
                                                Date of Birth</label>
                                            <input type="date" class="form-control" value="" required>
                                                </center>
                                        </div>
                                       
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            Address</label>
                                        <textarea class="form-control" rows="3" placeholder=""> </textarea>
                                    </div>


                                    <button class="btn btn-outline btn-sm">
                                        Submit
                   
                                    </button>
                    </center>
                    </form>
                </div>
            </div>



            <%--<!-- Ratings & Feedback -->
                    <div class="dashboard-card ratings-card">
                        <div class="card-header">
                            <h3><i class="fa fa-star"></i>Ratings & Feedback</h3>
                            <div class="rating-summary">
                                <span class="rating-number">4.9</span>
                                <div class="rating-stars">
                                    <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                </div>
                                <span class="rating-count">(1,247 reviews)</span>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="rating-breakdown">
                                <div class="rating-bar">
                                    <span class="rating-label">5 stars</span>
                                    <div class="rating-progress">
                                        <div class="progress-fill" style="width: 85%">
                                        </div>
                                    </div>
                                    <span class="rating-percentage">85%</span>
                                </div>
                                <div class="rating-bar">
                                    <span class="rating-label">4 stars</span>
                                    <div class="rating-progress">
                                        <div class="progress-fill" style="width: 12%">
                                        </div>
                                    </div>
                                    <span class="rating-percentage">12%</span>
                                </div>
                                <div class="rating-bar">
                                    <span class="rating-label">3 stars</span>
                                    <div class="rating-progress">
                                        <div class="progress-fill" style="width: 2%">
                                        </div>
                                    </div>
                                    <span class="rating-percentage">2%</span>
                                </div>
                                <div class="rating-bar">
                                    <span class="rating-label">2 stars</span>
                                    <div class="rating-progress">
                                        <div class="progress-fill" style="width: 1%">
                                        </div>
                                    </div>
                                    <span class="rating-percentage">1%</span>
                                </div>
                                <div class="rating-bar">
                                    <span class="rating-label">1 star</span>
                                    <div class="rating-progress">
                                        <div class="progress-fill" style="width: 0%">
                                        </div>
                                    </div>
                                    <span class="rating-percentage">0%</span>
                                </div>
                            </div>
                            <div class="recent-reviews">
                                <h5>Recent Reviews</h5>
                                <div class="review-item">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <span class="reviewer-name">Sarah M.</span>
                                            <div class="review-stars">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <span class="review-date">2 days ago</span>
                                    </div>
                                    <p class="review-text">
                                        "Excellent  functionality! Would definitely recommend."
                                    </p>
                                </div>
                                <div class="review-item">
                                    <div class="review-header">
                                        <div class="reviewer-info">
                                            <span class="reviewer-name">John D.</span>
                                            <div class="review-stars">
                                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <span class="review-date">1 week ago</span>
                                    </div>
                                    <p class="review-text">
                                        "Great service and very punctual."
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>--%>

            <%--                    <!-- Account Settings -->
                    <div class="dashboard-card settings-card">
                        <div class="card-header">
                            <h3><i class="fa fa-cog"></i>Account Settings</h3>
                        </div>
                        <div class="card-body">
                            <div class="settings-sections">
                                <div class="settings-section">
                                    <h5>Notifications</h5>
                                    <div class="setting-item">
                                    </div>
                                    <div class="setting-item">
                                        <div class="setting-info">
                                            <span class="setting-label">Earnings Updates</span> <span class="setting-desc">Daily earnings summary</span>
                                        </div>
                                        <label class="switch">
                                            <input type="checkbox" checked>
                                            <span class="slider"></span>
                                        </label>
                                        &nbsp;
                                    </div>
                                    <div class="setting-item">
                                        <div class="setting-info">
                                            <span class="setting-label">Promotional Offers</span> <span class="setting-desc">Special deals and bonuses</span>
                                        </div>
                                        <label class="switch">
                                            <input type="checkbox">
                                            <span class="slider"></span>
                                        </label>
                                        &nbsp;
                                    </div>
                                </div>
                                <div class="settings-section">
                                    <h5>Privacy & Security</h5>
                                </div>
                                <div class="setting-item">
                                    <div class="setting-info">
                                        <span class="setting-label">Change Password</span> <span class="setting-desc">Update your account password</span>
                                    </div>
                                    <button class="btn btn-outline btn-sm">
                                        Change
                                                       
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            <%--      </div>

        </div>
        </div>--%>
    </section>
    <footer class="footerr-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="footer-widget">
    </footer>
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
                    <li><a href="index.html">Home</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="contact.html">Contact</a></li>
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

