# 🌐 Projeto 0: Servidor Web na AWS (Automação com Bash)

*Autora:* Rayane Santana 
*Stack:* Linux + AWS EC2 + Bash + Nginx 

---

## 🎯 *Objetivo*
Criar e automatizar o provisionamento de uma instância EC2 na AWS, configurando um servidor web Linux com foco em Fundamentos DevOps.

---

## 📦 *Tecnologia utilizadas*
- AWS EC2
- Linux (Ubuntu)
- Bash Script
- SSH
- Security Groups
- Git / Github

---

## 🏗️  Estrutura do projeto*

scripts/
├── 01-variaveis.sh
├── 02-criar-grupo-de-seguranca.sh
├── 03-criar-par-de-chaves.sh
├── 04-create-ec2.sh
├── 05-conectar-ssh.sh
└── 06-destruir.sh

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

## 📚 Fluxo de execução

1. Definição de variáveis do projeto
2. Criação do Security Group
3. Criação do par de chaves
4. Provisionamento da isntância EC2
5. Conexão via SSH
6. Destruição do ambiente

---

## 🚨 Erros enfrentados e aprendizados
- Configuração incorreta de permissões SSH
- Ajustes em regras de Security Group
- Organização de scripts para automação completa

---

## ✅ Resultado final
Ambiente AWS provisionado automaticamente via scripts Bash,
simulando um cenário real de infraestrutura DevOps.
