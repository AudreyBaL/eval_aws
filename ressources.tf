#Fichier de ressources

#Création d une instance EC2 avec AMI spécifiée
#AMI libre d acces recupere dans le catalogue
resource "aws_instance" "app_server" {
  ami           = var.name_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = aws_subnet.my_subnet.id

  tags = {
    Name = var.name_instance
  }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc_formationaws1"
  }
}
# Subnet utilisé pour le VPC
resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "eu-west-3a"
  map_public_ip_on_launch = true
}
# Groupe de sécurité autorisant le trafic SSH entrant
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

# Gestion du trafic entrant
#Definition des ports et protocols autorises
  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }

# Gestion du trafic sortant
# Tous les ports sont autorises
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

