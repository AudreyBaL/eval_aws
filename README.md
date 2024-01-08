# Configuration Terraform pour une Instance EC2 AWS

Ce dépôt contient des fichiers de configuration Terraform permettant de déployer une instance EC2 sur AWS. 
L'infrastructure créée comprend :

- une instance EC2 basée sur une image Amazon Machine Image (AMI) spécifiée.
- un backend (bucket S3)
- un VPC
- un fichier de variables

## Prérequis

Assurez-vous d'avoir les éléments suivants avant d'utiliser cette configuration :

- Terraform installé sur votre machine.
- Un compte AWS avec les informations d'identification configurées localement.

## Configuration

### Fichiers Terraform

- `variables.tf`: Définition des variables utilisées dans les fichiers de configuration Terraform.
- `providers.tf`: Configuration du fournisseur AWS.
- `resources.tf`: Définition des ressources à déployer, notamment l'instance EC2.

### Personnalisation

1. Modifiez les valeurs dans `variables.tf` selon vos besoins.
3. Configurez les informations d'identification AWS localement avec `aws configure`.
4. Vérifiez et ajustez d'autres paramètres dans les fichiers Terraform en fonction de vos besoins spécifiques.

## Utilisation

1. Initialisez Terraform :
terraform init

2. Examinez le plan Terraform :
terraform plan

3. Appliquez les configurations pour créer l'infrastructure :
terraform apply

4. Détruisez l'infrastructure après utilisation :
terraform destroy
