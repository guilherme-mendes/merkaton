# MerkatOn

## Plataforma de venda e compra de produtos

A aplicação web consiste em um mercado online de compra e venda, onde usuários
podem divulgar seus produtos e serviços diversos após efetuarem o cadastro/login no
site.

## Como usar o projeto

Siga as seguintes instruções em seu terminal:
```bash
# Clone o repositório
$ git clone https://gitlab.com/guilherme-mendes/ep3.git

# Entre no diretório
$ cd ep3/ep3-rails

# Instale as dependências (Tenha instalado o Ruby na versão 2.5.3 e o Rails na versão 5.2.1)
$ bundle install

# Inicialize o banco de dados
$ rails db:migrate

# Execute o servidor
$ rails s

# Abra em seu Web browser o link abaixo
http://localhost:3000/
```

## Funcionalidades do projeto

Esse programa foi desenvolvido em Ruby on Rails, implementando a identidade visual utilizando CSS, Bootstrap.

As funcionalidades do projeto são:

* Visualização de produtos com todas as informações (Nome, Preço, Descrição,
Imagem, Nome do Vendedor)
* Cadastro (com todas as informações) de Usuários que tem permissões para
vender/comprar produtos
* Criar usuário Admin (alterar/excluir todos os produtos)
* Possibilidade de comprar produtos de usuários distintos• Anunciar produtos (upload de imagem, nome, descrição, preço)
* Gerenciar seus produtos (Editar/Excluir/Visualizar)
* Comprar produtos inserindo seu endereço
* Histórico de compras (com informações do vendedor)
* Histórico de vendas (com informações do comprador)
* Verificado todos os casos de erros (com alertas explicativos)
*Exibir informações do vendedor para o comprador e vice-versa

## Gems utilizadas

Foram usadas as seguintes Gems além das padrões do Rails:

* Devise
* Paperclip
* Bootstrap
* Railroady

## Screenshots

![Captura_de_tela_de_2018-12-06_17-05-04](/uploads/218172da82eb103f1716b3c7a23e1d18/Captura_de_tela_de_2018-12-06_17-05-04.png)

![Captura_de_tela_de_2018-12-06_17-05-53](/uploads/e7e797906526242b0d8ccaad75d01768/Captura_de_tela_de_2018-12-06_17-05-53.png)

![Captura_de_tela_de_2018-12-06_17-06-02](/uploads/dc33a252ea1e9a2b5c43e4cb47db73b9/Captura_de_tela_de_2018-12-06_17-06-02.png)

![Captura_de_tela_de_2018-12-06_17-13-01](/uploads/56b6cd46fe4e29e92aa582189980ed39/Captura_de_tela_de_2018-12-06_17-13-01.png)

![Captura_de_tela_de_2018-12-06_17-06-14](/uploads/a0c3a0d5436057c744b25e4e30a93e85/Captura_de_tela_de_2018-12-06_17-06-14.png)

![Captura_de_tela_de_2018-12-06_17-06-23](/uploads/52d20ee3068f9752cfe3ce689afd531e/Captura_de_tela_de_2018-12-06_17-06-23.png)

![Captura_de_tela_de_2018-12-06_17-07-03](/uploads/4b0c20d9623c8373135c30514ecdc76b/Captura_de_tela_de_2018-12-06_17-07-03.png)

![Captura_de_tela_de_2018-12-06_17-07-26](/uploads/843039c7703f779c085e08e3c6d14727/Captura_de_tela_de_2018-12-06_17-07-26.png)

![Captura_de_tela_de_2018-12-06_17-08-10](/uploads/7d5f17e684feb9079640455e375e2d04/Captura_de_tela_de_2018-12-06_17-08-10.png)

![Captura_de_tela_de_2018-12-06_17-08-26](/uploads/f20afa70ea3233098d62e59b88d90233/Captura_de_tela_de_2018-12-06_17-08-26.png)






