algoritmo "acrescentaHobbiesPerfil"
// Função : Acrescentar Hobbies ao perfil
// Autor : High5
// Data : 31/03/2022
// Seção de Declarações 
var
hobbiesVet : vetor [1..5] de logico
hobbiesNomeVet : vetor [1..5] de caractere
outrosHobbiesVet : vetor [1..10] de caractere
contador, entrada : inteiro
entradaHobby : caractere

inicio
// Seção de Comandos
para contador <- 1 ate 5 passo 1 faca
    hobbiesVet[contador] <- falso
fimpara
hobbiesNomeVet[1] <- "Futebol"
hobbiesNomeVet[2] <- "Videogames"
hobbiesNomeVet[3] <- "Basquete"
hobbiesNomeVet[4] <- "Leitura"
hobbiesNomeVet[5] <- "Programar"
enquanto (verdadeiro) faca
   escreval("Hobbies cadastados no perfil")
   para contador <- 1 ate 5 passo 1 faca
      se (hobbiesVet[contador] = verdadeiro) entao
      escreval(hobbiesNomeVet[contador])
      fimse
   fimpara
   para contador <- 1 ate 10 passo 1 faca
      se (outrosHobbiesVet[contador] <> "") entao
         escreval(outrosHobbiesVet[contador])
      fimse
   fimpara
   escreval("")
   escreval("Cadastrar novo Hobby")
   para contador <- 1 ate 5 passo 1 faca
      se (hobbiesVet[contador] = falso) entao
      escreval(contador, " - ", hobbiesNomeVet[contador])
      fimse
   fimpara
   escreval(" 6 - Outro Hobby")
   escreval(" 9 - Sair")
   escreva("Insira o comando: ")
   leia(entrada)
   escolha (entrada)
      caso (1),(2),(3),(4),(5)
         hobbiesVet[entrada] <- verdadeiro
         limpatela
      caso (6)
         escreva("Insira o nome do hobby: ")
         leia(entradaHobby)
         para contador <- 1 ate 10 passo 1 faca
            se (outrosHobbiesVet[contador] = "") entao
               outrosHobbiesVet[contador] <- entradaHobby
               interrompa
            fimse
         fimpara
         limpatela
      caso (9)
         interrompa
         limpatela
      outrocaso
         limpatela
         escreval("Comando Inválido")
   fimescolha
fimenquanto
escreval("Hobbies cadastrados no perfil")
para contador <- 1 ate 5 passo 1 faca
      se (hobbiesVet[contador] = verdadeiro) entao
      escreval(hobbiesNomeVet[contador])
      fimse
   fimpara
para contador <- 1 ate 10 passo 1 faca
      se (outrosHobbiesVet[contador] <> "") entao
         escreval(outrosHobbiesVet[contador])
      fimse
fimpara
fimalgoritmo
