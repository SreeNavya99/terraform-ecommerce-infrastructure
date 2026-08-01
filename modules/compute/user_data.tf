

locals {
  user_data = base64encode(<<-EOF
#!/bin/bash

dnf update -y

dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>AWS DevOps Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #0f172a;
            color: white;
            text-align: center;
            padding-top: 60px;
        }
        .container {
            width: 70%;
            margin: auto;
        }
        h1 {
            color: #38bdf8;
        }
        h2 {
            color: #22c55e;
        }
        ul {
            text-align: left;
            display: inline-block;
            font-size: 18px;
        }
        footer {
            margin-top: 40px;
            color: #cbd5e1;
        }
    </style>
</head>

<body>

<div class="container">

<h1>🚀 AWS DevOps E-Commerce Infrastructure</h1>

<h2>Successfully Deployed using Terraform & GitHub Actions</h2>

<h3>Infrastructure Components</h3>

<ul>
<li>✅ Terraform Modules</li>
<li>✅ Amazon VPC</li>
<li>✅ Public & Private Subnets</li>
<li>✅ Internet Gateway</li>
<li>✅ NAT Gateway</li>
<li>✅ Application Load Balancer</li>
<li>✅ Auto Scaling Group</li>
<li>✅ Launch Template</li>
<li>✅ EC2 Instances</li>
<li>✅ Amazon RDS</li>
<li>✅ Remote Backend (S3)</li>
<li>✅ DynamoDB State Locking</li>
<li>✅ AWS KMS Encryption</li>
<li>✅ GitHub Actions CI/CD</li>
<li>✅ GitHub OIDC Authentication</li>
</ul>

<footer>

<p>Built by <strong>Sree Navya</strong></p>

<p>Terraform • AWS • GitHub Actions • DevOps</p>

</footer>

</div>

</body>
</html>
HTML

EOF
  )
}
