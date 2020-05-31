resource "aws_instance" "red-box_instance" {
  ami           = var.aws-ami
  instance_type = var.instance_type

  key_name = "terraform"


  user_data = <<EOF

  #!/bin/bash

  git clone https://github.com/yemmie69/myweatherapp.git
cd myweatherapp
mvn package
mvn spring-boot:run -Dapp.weather.locations=Nigeria/Lagos,Nigeria/Kano
sudo yum install tomcat -y

sudo service tomcat start

EOF

  tags = {
    Name = "Red-Box"
  }
}