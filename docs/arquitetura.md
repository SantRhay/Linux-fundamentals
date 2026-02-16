# Arquitetura do Projeto

Fluxo da infraestrutura:

Internet
→ Security Group (22, 80, 443)
→ EC2 (Ubuntu Linux)
→ SSH / Nginx

Todos os recursos são provisionados via scripts Bash utilizando AWS CLI.

