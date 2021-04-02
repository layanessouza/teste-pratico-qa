# class Cadastrado
#    def validarCampos(value)
#       case (dia)
#       when "segunda-feira"
#         return "Virado a Paulista"
#       end
#   end
# end

# Dado("que estou na tela de cadastro") do
#    @estou_na_tela = true
# end

# Quando("eu digito os dados validos {string} nos campos") do |dia|
#    @hoje = dia
#    @valor_obtido = Cadastrado.new.validarCampos(@hoje)
#  end
 
#  Então("clico no botão adicionar recebo uma mensagem {string}") do |valor_esperado|
#    expect(@valor_obtido).to eql valor_esperado
#  end

class Cadastrado
   def validaCampos(value)
      if value == ""
         return
      else
         return
      end
   end

   def validarInputPrice(value)
      value =~ /^[1-9]\d*$/
   end

   def converterData(str)
     return DateTime.strptime(str, '%d/%m/%Y')
   end

end

 
Dado("que estou na tela de cadastro") do
   @estou_na_tela = true
end

Quando("eu digito os dados validos {string} nos campos") do |value|
   value = "pao"
   @formValid = Cadastrado.new.validaCampos(value)
end

Quando("eu digito os dados inválidos {string} nos campos preço") do |string|
   string = 123
   @inputPrice = Cadastrado.new.validarInputPrice(string)
end

Então("clico no botão adicionar e recebo uma mensagem") do
   if @formValid && @inputPrice
      puts "Formulario invalido"
   else
      puts "Cadastro realizado com sucesso"
   end
 end

 Quando("eu digito no campo de {string} dados menores do que zero") do |value|
   @inputPriceNegative = -1
 end
 
 Então("devo ver uma mensagem de erro e o produto não deve ser cadastrado") do
   if @inputPriceNegative < 0   
      puts "Campo invalido"
   elsif @inputPriceNegative >= 0   
      puts "Campo valido"
   end 
 end

 Quando("eu digito no campo de validade uma data maior do que {string}") do |string|
   @string = Cadastrado.new.converterData("01/12/2021")
   @newDate = Cadastrado.new.converterData("31/12/2021")
 end
 
 Então("devo ver uma mensagem de erro") do
   if @string > @newDate
      puts "Campo invalido"
   else
      puts "Campo valido"
   end
 end