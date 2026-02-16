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
# Teste pipeline
