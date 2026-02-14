# 🌐 Projeto 1: Servidor Web na AWS

*Autora:* [Rayane Santana](https://github.com/SantRhay)  
*Stack:* Linux + AWS EC2 + Nginx

---

## 🎯 *Objetivo*
Criar um servidor web na AWS utilizando uma instância EC2, instalar o Nginx e hospedar uma página HTML simples, documentando todo o processo e os erros encontrados.

---

## 📦 *O que foi feito*
- [x] Criar instância EC2 (t3.micro, Ubuntu 22.04)
- [x] Configurar Security Group (portas 22, 80, 443)
- [x] Instalar e configurar Nginx
- [x] Subir página HTML personalizada
- [x] Versionar tudo no GitHub

---

## 🏗️ *Arquitetura*

Internet → Security Group (portas 22/80/443) → EC2 (Ubuntu + Nginx) → Página HTML


---

## 🛠️ *Comandos utilizados*

### *AWS CLI*
bash
# Criar security group
aws ec2 create-security-group --group-name devops-lab-sg --description "SG para servidor web"

# Liberar portas
aws ec2 authorize-security-group-ingress --group-id sg-xxxx --protocol tcp --port 22 --cidr SEU_IP/32
aws ec2 authorize-security-group-ingress --group-id sg-xxxx --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id sg-xxxx --protocol tcp --port 443 --cidr 0.0.0.0/0

# Criar key pair
aws ec2 create-key-pair --key-name aws-devops-lab --query 'KeyMaterial' --output text > aws-devops-lab.pem
chmod 400 aws-devops-lab.pem

# Criar instância
aws ec2 run-instances --image-id ami-0c02fb55956c7d316 --instance-type t3.micro --key-name aws-devops-lab --security-group-ids sg-xxxx --subnet-id subnet-xxxx --associate-public-ip-address


### *Linux (dentro da EC2)*
bash
# Conectar via SSH
ssh -i aws-devops-lab.pem ubuntu@3.235.191.254

# Instalar Nginx
sudo apt update
sudo apt install nginx -y

# Criar página HTML
cd /var/www/html
sudo nano index.html
# (colar conteúdo HTML)


### *Git/GitHub*
bash
git init
git add .
git commit -m "Primeiro commit - scripts de automação"
git remote add origin https://github.com/SantRhay/Linux-fundamentals.git
git push -u origin main --force


---

## 🐛 *Erros encontrados e soluções*

| Erro | Solução |
|------|---------|
| SSH liberado para 0.0.0.0/0 | Restringir para IP específico /32 |
| Permission denied no .pem | chmod 400 aws-devops-lab.pem |
| Git push rejected | git push --force |

---

## 📚 *Conceitos explicados*

### *Security Group*
Firewall virtual da AWS que controla o tráfego permitido para a instância.

### *IP Público vs IP Privado*
- *IP Público:* Acessível da internet (ex: 3.235.191.254)
- *IP Privado:* Comunicação interna na VPC (ex: 172.31.64.82)

### *SSH*
Protocolo seguro para acessar e gerenciar servidores remotamente.

---

## 🔗 *Repositório*
[https://github.com/SantRhay/Linux-fundamentals](https://github.com/SantRhay/Linux-fundamentals)

---

⭐ Projeto desenvolvido para aprendizado de fundamentos DevOps ⭐
