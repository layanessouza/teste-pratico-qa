#language:pt

Funcionalidade: Cadastro produto!
   Uma tela de cadastro de produto, precisa ser informado um nome, preço e validade, e todos os valores são importantes.
   Seguindo as seguintes restriocoes: 
   1) O "preço" não pode ser menor que zero.
   2) "Validade" não pode ser maior do que 31/12/2021.
   3) Os campos nao devem ser cadastros vazios

Cenario: Validar que todos os campos da tela de cadastro tenham preenchimento obrigatório

      Dado que estou na tela de cadastro
      Quando eu digito os dados validos "value" nos campos 
      Então clico no botão adicionar e recebo uma mensagem

Cenario: Validar que o campo preço permite somente o cadastro de números

   Dado que estou na tela de cadastro
   Quando eu digito os dados inválidos "value" nos campos preço
   Então clico no botão adicionar e recebo uma mensagem

Cenario: Validar que o campo preço não permite o cadastro de valores menores que zero

   Dado que estou na tela de cadastro
   Quando eu digito no campo de "preço" dados menores do que zero
   Então devo ver uma mensagem de erro e o produto não deve ser cadastrado

Cenario: Validar que o campo de validade não permite o cadastro de uma data maior do que "31/12/2021"

   Dado que estou na tela de cadastro
   Quando eu digito no campo de validade uma data maior do que "31/12/2021"
   Então devo ver uma mensagem de erro