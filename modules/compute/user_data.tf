

locals {
  user_data = base64encode(<<-EOF
#!/bin/bash
yum update -y

dnf install -y httpd

systemctl enable httpd
systemctl start httpd

echo "<h1>Terraform Ecommerce Server</h1>" > /var/www/html/index.html
EOF
  )
}
