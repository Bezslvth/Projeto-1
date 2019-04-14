Algoritmo "Projeto"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/03/2019
Var
   n, n1, n2: inteiro  // opçao 1
   cont, pessoas, idade, sexo, quantMasc, quantFem, totalMasc, totalFem, numP: inteiro // opçao 2
   mediaTotal, mediaMasc, mediaFem: real
   conti, contii, num, p, soma: inteiro // opçao 3
   contU: inteiro // opçao 4
   nUser, somaU, maior, menor, media: real
   Morse: inteiro // opçao 5
   x : caracter // opçao 6
   y,d : inteiro
   sair: inteiro // opçao 7

Inicio
   escreval ("Escolha uma opção:")
   escreval ("1.Divisão")
   escreval ("2.Faixa Etária")
   escreval ("3.Números Primos")
   escreval ("4.Retornar maior, menor e média")
   escreval ("5.Código Morse")
   escreval ("6.Mudança de Base")
   escreval ("7.Sair")
   leia (n) // será lido a opção que o usuário escolher
   escolha n  // usuário vai escolher a opção de acordo com o descrito no menu

   caso 1  // caso em que está o algoritmo de Divisão
      escreval("Você escolheu Divisão.")
      escreval("Digite um valor")
      leia (n1)  // lê o numero que vai ser dividido
      se (n1=0) entao  // restrição de divisão: impossível dividir ou ser dividido por 0.
         escreval("Não e posivel")
         fimse
         escreval("Digite outro valor") // digitar o segundo valor da divisao
         leia (n2)
         se (n2=0) entao
            escreval("Não é possivel realizar a divisao.") // restrição de divisao
         fimse  // fim das restricoe
         escreval("O resultado da Divisão é:", n1 / n2)  // mostra o resultado da divisao

      caso 2  // caso em que está alocado o algoritmo da faixa etária
         escreval("Você escolheu Faixa Etária.")
         cont <- 1 // contador para onde apontará as pessoas que o usuário vai por seus dados
         escreval("Digite o número de pessoas:")
         leia(pessoas) // lê a quantidade de pessoas que o usuário escrever
         repita // laço de repetição para escrever apenas 1 e 2, masculino e feminino, respectivamente
            escreval("Digite a idade da pessoa", cont) // é apontado em ordem crescente as pessoas em que o usuario vai por os dados
            leia(idade)
            numP <- numP + idade // numero de pessoas recebe o mesmo mais a idade
            escreval("Digite o sexo: (1) para Masculino e (2) para Feminino")
            leia(sexo)
            se (sexo = 1) entao // condição em que 1 é masculino
               totalMasc <- totalMasc + 1 // idade total masculino recebe ele mesmo mais um para saber a idade, se houver, de mais algumas pessoas
               quantMasc <- quantMasc + idade // será recebido a idade e a quantidade dessas pessoas
            senao  // se nao é 1 será 2, feminino
               se (sexo = 2) entao // condição em que 2 é feminino
                  totalFem <- totalFem + 1  // idade total feminino recebe ele mesmo mais um para saber a idade, se houver, de mais algumas pessoas
                  quantFem <- quantFem + idade // será recebido a idade e a quantidade dessas pessoas
               senao
                  repita // laço de repetição para quantidade de pessoas que será solicitado
                     escreval("Informe o valor válido para sexo")
                     escreval("Digite (1) para Masculino e (2) para Feminino")
                     leia(sexo)
                  ate (sexo = 1) ou (sexo = 2)
               fimse
            fimse
            cont <- cont + 1  // contador para o numero de pessoas que o usuario solicitar
         ate (cont > pessoas) // laço de repetição será parado quando contador for maior que as pessoas
         mediaTotal <- numP / pessoas // média total recebe o cálculo do número de pessoas dividido pela soma das idade das pessoas
         se(quantMasc > 0) entao // se a quantidade de pessoas masculinas forem maior que zero terá uma condição
            mediaMasc <- quantMasc / totalMasc // a média de pessoas masculinas será calculada pela quantidade e o total da soma das idades masculinas
         fimse
         se (quantFem > 0) entao //se a quantidade de pessoas femininas forem maior que zero terá uma condição
            mediaFem <- quantFem / totalFem    // a média de pessoas femininas será calculada pela quantidade e o total da soma das idades femininas
         fimse
         escreval("Média de todas as pessoas: ", mediaTotal) // exibe a média de idade de todas as pessoas
         escreval("Média de idade Masculino: ", mediaMasc)   // exibe a média de idade de todos os masculinos
         escreval("Média de idade Feminino: ", mediaFem)     // exibe a média de idade de todos os femininos

      caso 3  // caso onde se localiza o algoritmo de Numeros Primos
         escreval("Você escolheu Números Primos.")
         escreval("Digite o valor desejado:")
         leia (num) // lê o valor desejado pelo usuário
         para conti de 1 ate num faca // contador que contará de 1 até o numero que o usuário solicitará
            p <- 0 // recebe 0 para iniciar do 0
            para contii de 1 ate conti faca // verificará se o numero é primo ou não
               se (conti mod contii=0) entao // verificará se o resto para ver se é divisel por 2 numeros
                  p <- p + 1  // condição para saber se ele é divisível por dois numeros (1 e o próprio número)
               fimse
            fimpara
            se (p = 2) entao // o número será primo se possuir dois numeros que pode dividir
               escreval(conti) // mostrará seus numeros primos de 1 ate o numero solicitado pelo usuario
               soma <- conti + soma  // somará todos os numeros primos
            fimse
         fimpara
         escreval("A soma dos numeros primos é:", soma) // exibirá a soma de todos os números primos da escolha do usuario

      caso 4  // caso da escolha Retornar maior, menor e média
         escreval("Você escolheu Retornar maior, menor e média")
         repita
            escreval("Digite um valor:")
            leia (nUser) // usuario escreve varios numeros
            se nUser > maior entao // se o número de usuario for maior
               maior<- nUser // entao maior receberá o número do usuário
            fimse
            se(nUser > 0) e ((nUser< menor) ou (menor=0)) entao // se número do usuário for maior que 0 e número de usuário for menor que o menor ou menor igual a 0
               menor <- nUser // entao menor receberá o número do usuário
            fimse
            se nUser > 0 entao // se numero de usuario for maior que 0 terá uma condição
               somaU <- somaU + nUser // Soma receberá a mesma mais o número do usuário
               contU <- contU +1 // contador receberá atualizado mais 1
            fimse
         ate (nUser < 0) //laço de repetição onde o parará até o numero de usuário for menor que 0
         media <- somaU/ contU // cálculo da média
         escreval("O maior", maior) // resultado do maior
         escreval("O menor", menor) // resultado do menor
         escreval("A media", media) // resultado da média

      caso 5  // caso onde está alocado o algoritmo de código morse
         escreval("Você escolheu Código Morse")
         escreval("Digite um número de 0 a 20")
         leia(morse) // lerá a escolha do caso de seu respectivo número
         escolha (morse) // início da escolha de caso
         caso 0
            escreval("-----")
         caso 1
            escreval(".----")
         caso 2
            escreval("..---")
         caso 3
            escreval("...--")
         caso 4
            escreval("....-")
         caso 5
            escreval(".....")
         caso 6
            escreval("-....")
         caso 7
            escreval("--...")
         caso 8
            escreval("---..")
         caso 9
            escreval("----.")
         caso 10
            escreval(".---- -----")
         caso 11
            escreval(".---- .----")
         caso 12
            escreval(".---- ..---")
         caso 13
            escreval(".---- ...--")
         caso 14
            escreval(".---- ....-")
         caso 15
            escreval(".---- .....")
         caso 16
            escreval(".---- -....")
         caso 17
            escreval(".---- --...")
         caso 18
            escreval(".---- ---..")
         caso 19
            escreval(".---- ----.")
         caso 20
            escreval("..--- -----")
         outrocaso // caso o número seja >20 ou <0
            escreval("Numero invalido")

         caso 6
            escreval("Você escolheu Mudança de Base")
            escreva("Entre com um número: binário ou decimal :")

         caso 7
            escreval("Você escolheu Sair")

Fimalgoritmo