# Indus-Blogs-The-blogging-platform
Indus Blogs is a full-stack Flask-powered blogging platform where tradition flows into technology. Featuring secure authentication, dynamic routing, and config-driven branding, it offers a polished CMS experience with expressive UI, profile photo uploads, and responsive design.

Visit My Flask App By Clicking https://indus-blog-deployed.onrender.com/

🚀 Features

User registration and login
Email verification using secure tokens
Forgot password & reset password via email
Create, edit, and delete blog posts
Image upload support for posts and profile photos
User dashboard
Public and personal user profiles
Pagination for posts
Contact form with email notifications
Session management with expiration
Custom error pages (400, 404, 500)

🛠️ Tech Stack

Backend: Flask (Python)
Database: SQLAlchemy (MySQL)
Server Environment: XAMPP (Apache & MySQL)
Authentication: Werkzeug password hashing
Email Service: Flask-Mail (Gmail SMTP)
Security: ItsDangerous (token-based verification)
Frontend: Jinja2 templates (HTML/CSS)

📁 Project Structure (Important Files)
.
├── main(flask5).py        # Main Flask application
├── config.json            # Configuration file (not committed)
├── templates/             # HTML templates
├── static/
│   ├── uploads/           # Uploaded images
│   └── css/
├── requirements.txt
└── README.md
⚙️ Configuration

Create a config.json file in the root directory:

{
  "params": {
    "blog_name": "My Blog",
    "secret_key": "your_secret_key",
    "local_server": true,
    "local_uri": "sqlite:///blog.db",
    "prod_uri": "mysql://user:password@localhost/dbname",
    "upload_location": "static/uploads",
    "gmail_user": "your_email@gmail.com",
    "email_password": "your_app_password",
    "no_of_post": 5,
    "max_token_age": 86400,
    "max_reset_token_age": 3600
  }
}

⚠️ Important:
Use a Gmail App Password, not your real Gmail password.

📦 Installation
1. Clone the repository
git clone https://github.com/MridulAnand/Indus-Blogs-The-blogging-platform.git
cd flask-blog
2. Create a virtual environment
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
3. Install dependencies
pip install -r requirements.txt
🗄️ Database Setup

Run the following in Python shell:

from main import db
db.create_all()
▶️ Run the Application
python main(flask5).py

Visit:

http://127.0.0.1:5000/

🔐 Authentication Flow

User registers
Verification email is sent
User clicks verification link
Email is verified
User can log in and access dashboard

📧 Email Features

Email verification link
Password reset link
Contact form notifications
All emails are sent using Flask-Mail + Gmail SMTP.

🖼️ File Upload Rules

Allowed formats: jpg, jpeg, png, gif
Uploaded files are renamed securely
Default image: home-bg.jpg

🧪 Error Handling

Custom pages are shown for:
400 – Bad Request
404 – Page Not Found
500 – Internal Server Error

🔒 Security Features

Password hashing using scrypt
Token-based verification & reset
Secure filename handling
Session expiration (7 days)

📜 License

This project is for educational and personal use.
This project is licensed under the MIT License-Feel free to modify and improve it.

✨ Author

Built by Mridul Anand with Flask
GitHub: https://github.com/MridulAnand/



