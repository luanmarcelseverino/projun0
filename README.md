# Automação E2E - Sauce Demo

Este projeto demonstra a automação de um fluxo completo de compras em um e-commerce, utilizando práticas de gerenciamento de ambiente.

## Tecnologias Utilizadas
* **Robot Framework**: Framework de automação baseado em Keywords.
* **Browser Library (Playwright)**: Engine de nova geração para interação web.
* **Python 3.10+**: Linguagem base do projeto.
* **Poetry**: Gerenciador de dependências e isolamento de ambiente virtual.

## Diferenciais deste Projeto
Diferente de outras automações, este projeto utiliza:
- **Gerenciamento de Ambiente**: Uso do Poetry para garantir que as dependências sejam as mesmas em qualquer máquina.
- **Variáveis Centralizadas**: Facilidade de manutenção de URLs e credenciais.
- **Teardown com Screenshot**: Evidência automática de cada execução, essencial para o dia a dia de um QA.

## Como Rodar o Projeto
1. Certifique-se de ter o Python e o Node.js instalados.
2. Instale o Poetry: `pip install poetry`
3. Instale as dependências:
   ```bash
   poetry install
   poetry run rfbrowser init
   poetry run robot -d ./results test_venda_saucedemo.robot

Dúvidas ou sugestões? Conecte-se comigo no LinkedIn https://www.linkedin.com/in/luanmarcelseverino/