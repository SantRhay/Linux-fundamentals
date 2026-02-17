            🚀 Projeto 0 – Servidor Web na AWS (Automação com Bash)

                             Autora: Rayane Santana
                 Stack: Linux • AWS EC2 • Bash • Nginx • AWS CLI

--------------------------------------------------------------------------------------------------------------------------------

## 📌 Sobre o Projeto

Este projeto tem como objetivo automatizar o provisionamento de uma infraestrutura básica na AWS utilizando Bash Script e AWS CLI.

A solução cria automaticamente:
	
• Security Group
• Key Pair
• Instância EC2
• Servidor Web Nginx configurado

Toda a infraestrutura é criada via linha de comando, simulando um cenário real de provisionamento manual automatizado — prática comum em ambientes DevOps.

⸻

## 🎯 Objetivos
•✅ Automatizar criação de infraestrutura na AWS
•✅ Aplicar fundamentos de Linux e Shell Script
•✅ Utilizar AWS CLI para provisionamento
•✅ Configurar servidor web Nginx
•✅ Organizar scripts de forma modular
•✅ Implementar fluxo completo de criação e destruição de ambiente
⸻

## 🛠️ Tecnologias Utilizadas
• AWS EC2
• AWS CLI
• Linux (Ubuntu)
• Bash Script
• Nginx
• SSH
• Git / GitHub

⸻

## 📂 Estrutura do Projeto

Linux-fundamentals/
│
├── scripts/
│   ├── 01-variables.sh
│   ├── 02-create-security-group.sh
│   ├── 03-create-keypair.sh
│   ├── 04-create-ec2.sh
│   ├── 05-connect-ssh.sh
│   └── 06-destroy.sh
│
├── docker/
├── docs/
├── .github/workflows/
└── README.md

## 🔄 Fluxo de Execução

1️⃣ Definição das variáveis do projeto
2️⃣ Criação do Security Group
3️⃣ Criação do Key Pair
4️⃣ Provisionamento da instância EC2
5️⃣ Conexão via SSH
6️⃣ Instalação e validação do Nginx
7️⃣ Destruição completa do ambiente

⸻

## ▶️ Como Executar

1️⃣ Acessar pasta de scripts

cd scripts
chmod +x *.sh

2️⃣ Criar ambiente

source 01-variables.sh
./02-create-security-group.sh
./03-create-keypair.sh
./04-create-ec2.sh
./05-connect-ssh.sh

3️⃣ Destruir ambiente

source 01-variables.sh
./06-destroy.sh

## 🌐 Resultado

Após a execução, o servidor Nginx é provisionado automaticamente e pode ser acessado via navegador utilizando o IP público da instância EC2.

⸻

## ⚠️  Desafios Enfrentados

• 🔐 Erros de permissão SSH
• 🔁 Conflito de Security Groups duplicados
• 📦 Variáveis não carregadas corretamente
• 🧹 Instâncias órfãs na AWS

⸻

## 📚 Aprendizados

• Importância do source para variáveis persistirem na sessão
• Organização modular de scripts
• Gerenciamento correto de recursos na AWS
• Controle de custos evitando recursos não destruídos

⸻

## 💡 Próximos Passos (Melhorias Futuras)
• Implementar validações de erro nos scripts
• Adicionar logs estruturados
• Criar versionamento de AMI automática
• Evoluir para Terraform

⸻

## 🔥 Resultado Final

Projeto funcional de provisionamento automatizado simulando um cenário real de infraestrutura DevOps na AWS.
