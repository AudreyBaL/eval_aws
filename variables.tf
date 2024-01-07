#Définition des variables
#Définition de la variable de region aws
variable "aws_region" {
  description = "Region AWS"
  type        = string
  default     = "eu-west-3"
}
#Definition de la variable du nom de l'instance
variable "name_instance" {
  description = "Nom de mon instance pour le TP"
  type        = string
  default     = "instanceformationaws1"
}
#Definition de la variable du nom de l'ami selectionne
variable "name_ami" {
  description = "Nom de mon AMI"
  type        = string
  default     = "ami-02ea01341a2884771"
}
#Definition de la variable pour definir l'instance type
variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

