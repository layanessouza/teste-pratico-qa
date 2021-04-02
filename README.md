# Cucumber - Gherkin - Ruby
### Exemplo de caso de teste usando Cucumber, Ruby

## 1. Requisitos:

* Ruby Instalado.

## 2. Como instalar as demais dependências:

> Instalar o Cucumber:

```
gem install cucumber
```

## 3. Executar o Projeto Exemplo:

> Rodar os testes implementados usando o CMD ou Terminal

```
cd diretorio/cadatro-produto
```

> Feito isto basta verificar a saída e os resultados

## 4. Criar um caso de teste:

> Criar o projeto de teste

```
cd diretorio
cucumber --init
```

> Criar pasta "specifications" (Por convenção)

```
cd diretorio/features
```

> Criar arquivos com extensão .feature dentro da pasta

```
cd diretorio/features/specifications
-Criar dentro desta pasta os arquivos (funcionalidadeX.feature)-
```

> Escrever de acordo com a Sintaxe do Gherkin e executar:

```
cucumber arquivo.feature
```

> Implementar os casos de teste dentro do arquivo como apresentado no exemplo e executar:

```
cd diretorioProjetoGherkin
cucumber
```

> Feito isto basta verificar a saída e os resultados

## License

This project is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
