algoritmo "CadatroLogin"
// Fun��o : Efetuar o login e cadastro dos usu�rios
// Autor : High5
// Data : 30/03/2022
// Se��o de Declara��es 
var
entrada, contador, cadastroSenha, senha: inteiro
cadastroUsuario, usuario, deslogar : caractere
usuarioVet : vetor [1..10] de caractere
senhaVet : vetor [1..10] de inteiro
erro, login : logico
inicio
// Se��o de Comandos 
erro <- falso
login <- falso
enquanto (verdadeiro) faca
  limpatela
  escreval("1 - Cadastro")
  escreval("2 - Login")
  escreval("9 - Sair")
  escreva("Insira opera��o: ")
  leia(entrada)
  escolha (entrada)
     caso (1)
        limpatela
        enquanto (verdadeiro) faca
           escreva("Insira o nome de usu�rio: ")
           leia(cadastroUsuario)
           para contador <- 1 ate 10 passo 1 faca
              se (cadastroUsuario = usuarioVet[contador]) ou (cadastroUsuario = "voltar") entao
                 escreval("Nome de usu�rio indispon�vel")
                 erro <- verdadeiro
                 interrompa
              senao
                 erro <- falso
                 interrompa
              fimse
           fimpara
           se (erro = falso) entao
              interrompa
           fimse
        fimenquanto
        para contador <- 1 ate 10 passo 1 faca
           se(usuarioVet[contador] = "") entao
              usuarioVet[contador] <- cadastroUsuario
              interrompa
           fimse
        fimpara
        escreva("Cadastre sua senha: ")
        leia(cadastroSenha)
        senhaVet[contador] <- cadastroSenha
        escreval("Cadastro realizado com sucesso")
     caso (2)
        limpatela
        enquanto (verdadeiro) faca
        login <- falso
           escreva("Insira seu nome de usu�rio ou insira 'voltar' para retornar ao menu: ")
           leia(usuario)
           se (usuario = "voltar") entao
              interrompa
           fimse
           escreva("Insira sua senha: ")
           leia(senha)
           para contador <- 1 ate 10 passo 1 faca
              se (usuario = usuarioVet[contador] e (senha = senhaVet[contador])) entao
                 limpatela
                 escreval("Login efetuado com sucesso")
                 login <- verdadeiro
                 interrompa
              fimse
           fimpara
           se (login = verdadeiro) entao
              interrompa
           senao
              escreval("Usu�rio ou senha incorretos")
           fimse
        fimenquanto
        se (login = verdadeiro) entao
           enquanto (verdadeiro) faca
           escreval("Insira 'S' para deslogar")
           leia(deslogar)
           se (deslogar = "S") entao
           escreval("Deslogado com sucesso")
              interrompa
           fimse
           fimenquanto
        fimse
     caso (9)
        interrompa
     outrocaso
        escreval("opera��o inv�lida")
  fimescolha
fimenquanto

fimalgoritmo
