Algoritmo "Projeto"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
//
//
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/03/2019
Var
   n, n1, n2: inteiro  // op�ao 1
   cont, pessoas, idade, sexo, quantMasc, quantFem, totalMasc, totalFem, numP: inteiro // op�ao 2
   mediaTotal, mediaMasc, mediaFem: real
   conti, contii, num, p, soma: inteiro // op�ao 3
   contU: inteiro // op�ao 4
   nUser, somaU, maior, menor, media: real
   Morse: inteiro // op�ao 5
   x : caracter // op�ao 6
   y,d : inteiro
   sair: inteiro // op�ao 7

Inicio
   escreval ("Escolha uma op��o:")
   escreval ("1.Divis�o")
   escreval ("2.Faixa Et�ria")
   escreval ("3.N�meros Primos")
   escreval ("4.Retornar maior, menor e m�dia")
   escreval ("5.C�digo Morse")
   escreval ("6.Mudan�a de Base")
   escreval ("7.Sair")
   leia (n) // ser� lido a op��o que o usu�rio escolher
   escolha n  // usu�rio vai escolher a op��o de acordo com o descrito no menu

   caso 1  // caso em que est� o algoritmo de Divis�o
      escreval("Voc� escolheu Divis�o.")
      escreval("Digite um valor")
      leia (n1)  // l� o numero que vai ser dividido
      se (n1=0) entao  // restri��o de divis�o: imposs�vel dividir ou ser dividido por 0.
         escreval("N�o e posivel")
         fimse
         escreval("Digite outro valor") // digitar o segundo valor da divisao
         leia (n2)
         se (n2=0) entao
            escreval("N�o � possivel realizar a divisao.") // restri��o de divisao
         fimse  // fim das restricoe
         escreval("O resultado da Divis�o �:", n1 / n2)  // mostra o resultado da divisao

      caso 2  // caso em que est� alocado o algoritmo da faixa et�ria
         escreval("Voc� escolheu Faixa Et�ria.")
         cont <- 1 // contador para onde apontar� as pessoas que o usu�rio vai por seus dados
         escreval("Digite o n�mero de pessoas:")
         leia(pessoas) // l� a quantidade de pessoas que o usu�rio escrever
         repita // la�o de repeti��o para escrever apenas 1 e 2, masculino e feminino, respectivamente
            escreval("Digite a idade da pessoa", cont) // � apontado em ordem crescente as pessoas em que o usuario vai por os dados
            leia(idade)
            numP <- numP + idade // numero de pessoas recebe o mesmo mais a idade
            escreval("Digite o sexo: (1) para Masculino e (2) para Feminino")
            leia(sexo)
            se (sexo = 1) entao // condi��o em que 1 � masculino
               totalMasc <- totalMasc + 1 // idade total masculino recebe ele mesmo mais um para saber a idade, se houver, de mais algumas pessoas
               quantMasc <- quantMasc + idade // ser� recebido a idade e a quantidade dessas pessoas
            senao  // se nao � 1 ser� 2, feminino
               se (sexo = 2) entao // condi��o em que 2 � feminino
                  totalFem <- totalFem + 1  // idade total feminino recebe ele mesmo mais um para saber a idade, se houver, de mais algumas pessoas
                  quantFem <- quantFem + idade // ser� recebido a idade e a quantidade dessas pessoas
               senao
                  repita // la�o de repeti��o para quantidade de pessoas que ser� solicitado
                     escreval("Informe o valor v�lido para sexo")
                     escreval("Digite (1) para Masculino e (2) para Feminino")
                     leia(sexo)
                  ate (sexo = 1) ou (sexo = 2)
               fimse
            fimse
            cont <- cont + 1  // contador para o numero de pessoas que o usuario solicitar
         ate (cont > pessoas) // la�o de repeti��o ser� parado quando contador for maior que as pessoas
         mediaTotal <- numP / pessoas // m�dia total recebe o c�lculo do n�mero de pessoas dividido pela soma das idade das pessoas
         se(quantMasc > 0) entao // se a quantidade de pessoas masculinas forem maior que zero ter� uma condi��o
            mediaMasc <- quantMasc / totalMasc // a m�dia de pessoas masculinas ser� calculada pela quantidade e o total da soma das idades masculinas
         fimse
         se (quantFem > 0) entao //se a quantidade de pessoas femininas forem maior que zero ter� uma condi��o
            mediaFem <- quantFem / totalFem    // a m�dia de pessoas femininas ser� calculada pela quantidade e o total da soma das idades femininas
         fimse
         escreval("M�dia de todas as pessoas: ", mediaTotal) // exibe a m�dia de idade de todas as pessoas
         escreval("M�dia de idade Masculino: ", mediaMasc)   // exibe a m�dia de idade de todos os masculinos
         escreval("M�dia de idade Feminino: ", mediaFem)     // exibe a m�dia de idade de todos os femininos

      caso 3  // caso onde se localiza o algoritmo de Numeros Primos
         escreval("Voc� escolheu N�meros Primos.")
         escreval("Digite o valor desejado:")
         leia (num) // l� o valor desejado pelo usu�rio
         para conti de 1 ate num faca // contador que contar� de 1 at� o numero que o usu�rio solicitar�
            p <- 0 // recebe 0 para iniciar do 0
            para contii de 1 ate conti faca // verificar� se o numero � primo ou n�o
               se (conti mod contii=0) entao // verificar� se o resto para ver se � divisel por 2 numeros
                  p <- p + 1  // condi��o para saber se ele � divis�vel por dois numeros (1 e o pr�prio n�mero)
               fimse
            fimpara
            se (p = 2) entao // o n�mero ser� primo se possuir dois numeros que pode dividir
               escreval(conti) // mostrar� seus numeros primos de 1 ate o numero solicitado pelo usuario
               soma <- conti + soma  // somar� todos os numeros primos
            fimse
         fimpara
         escreval("A soma dos numeros primos �:", soma) // exibir� a soma de todos os n�meros primos da escolha do usuario

      caso 4  // caso da escolha Retornar maior, menor e m�dia
         escreval("Voc� escolheu Retornar maior, menor e m�dia")
         repita
            escreval("Digite um valor:")
            leia (nUser) // usuario escreve varios numeros
            se nUser > maior entao // se o n�mero de usuario for maior
               maior<- nUser // entao maior receber� o n�mero do usu�rio
            fimse
            se(nUser > 0) e ((nUser< menor) ou (menor=0)) entao // se n�mero do usu�rio for maior que 0 e n�mero de usu�rio for menor que o menor ou menor igual a 0
               menor <- nUser // entao menor receber� o n�mero do usu�rio
            fimse
            se nUser > 0 entao // se numero de usuario for maior que 0 ter� uma condi��o
               somaU <- somaU + nUser // Soma receber� a mesma mais o n�mero do usu�rio
               contU <- contU +1 // contador receber� atualizado mais 1
            fimse
         ate (nUser < 0) //la�o de repeti��o onde o parar� at� o numero de usu�rio for menor que 0
         media <- somaU/ contU // c�lculo da m�dia
         escreval("O maior", maior) // resultado do maior
         escreval("O menor", menor) // resultado do menor
         escreval("A media", media) // resultado da m�dia

      caso 5  // caso onde est� alocado o algoritmo de c�digo morse
         escreval("Voc� escolheu C�digo Morse")
         escreval("Digite um n�mero de 0 a 20")
         leia(morse) // ler� a escolha do caso de seu respectivo n�mero
         escolha (morse) // in�cio da escolha de caso
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
         outrocaso // caso o n�mero seja >20 ou <0
            escreval("Numero invalido")

         caso 6
            escreval("Voc� escolheu Mudan�a de Base")
            escreva("Entre com um n�mero: bin�rio ou decimal :")

         caso 7
            escreval("Voc� escolheu Sair")

Fimalgoritmo