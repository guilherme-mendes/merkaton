# MerkatOn

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
$ http://localhost:3000/
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
