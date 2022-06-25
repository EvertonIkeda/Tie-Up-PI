Algoritmo "TieUp"

tipo
   usuario = registro
      email : caractere
      nome_completo : caractere
      nome_usuario : caractere
      senha : caractere
      interesse_principal : caractere
   fimregistro

Var
   indice, opcao, opcao2, indice_login : inteiro
   login, cadastro : logico
   email, nome_completo, nome_usuario, senha, confirma_senha, interesse : caractere
   vetUsuarios : vetor[0..99] de usuario
   
   procedimento p_cadastro (pr_nome_completo, pr_nome_usuario, pr_email, pr_senha : caractere)
   var
   inicio
      vetUsuarios.email[indice] <- pr_email
      vetUsuarios.nome_completo[indice] <- pr_nome_completo
      vetUsuarios.nome_usuario[indice] <- pr_nome_usuario
      vetUsuarios.senha[indice] <- pr_senha
      indice <- indice + 1
      cadastro <- verdadeiro
   fimprocedimento
   
   funcao f_confirmacao (pr_dado1, pr_dado2 : caractere) : logico
   var
   confirmacao : logico
   inicio
      se (pr_dado1 = pr_dado2) entao
         confirmacao <- verdadeiro
      senao
         confirmacao <- falso
      fimse
      retorne confirmacao
   fimfuncao

   procedimento p_login(pr_nome_usuario, pr_senha : caractere)
   var
   ind : inteiro
   confirmacao : logico
   inicio
      confirmacao <- falso
      para ind <- 0 ate 99 passo 1 faca
         se (pr_nome_usuario = vetUsuarios.nome_usuario[ind]) e (pr_senha = vetUsuarios.senha[ind]) entao
             escreval("Login efetuado com sucesso")
             login <- verdadeiro
             confirmacao <- verdadeiro
             indice_login <- ind
             interrompa
         fimse
      fimpara
      se (confirmacao = falso) entao
         escreval("Erro ao efetuar o login")
      fimse
   fimprocedimento
   
   funcao f_cadastraUsuario(pr_nome_usuario : caractere) : logico
   var
      ind : inteiro
      confirmacao : logico
   inicio
      confirmacao <- verdadeiro
      para ind <- 0 ate 99 passo 1 faca
         se (f_confirmacao(pr_nome_usuario, vetUsuarios.nome_usuario[ind])) entao
            confirmacao <- falso
            interrompa
         fimse
      fimpara
      se (confirmacao = falso) entao
         escreval("Nome de usu�rio existente")
      fimse
      retorne confirmacao
   fimfuncao
   
   procedimento p_adiciona_interesse (pr_interesse : caractere)
   var
   inicio
      vetUsuarios.interesse_principal[indice_login] <- pr_interesse
   fimprocedimento
   
   procedimento p_mostra_perfil
   var
   inicio
   escreval("Nome: ", vetUsuarios.nome_completo[indice_login])
   escreval("Email: ", vetUsuarios.email[indice_login])
   escreval("Nome de usu�rio:", vetUsuarios.nome_usuario[indice_login])
   escreval("Principal interesse: ", vetUsuarios.interesse_principal[indice_login])
   fimprocedimento
   
   procedimento p_consulta_nome (pr_nome_usuario : caractere)
   var
   ind : inteiro
   confirmacao : logico
   inicio
   confirmacao <- falso
   para ind <- 0 ate 99 passo 1 faca
      se (vetUsuarios.nome_usuario[ind] = pr_nome_usuario) entao
         escreval("Nome: ", vetUsuarios.nome_completo[ind])
         escreval("Email: ", vetUsuarios.email[ind])
         escreval("Nome de usu�rio:", vetUsuarios.nome_usuario[ind])
         escreval("Principal interesse: ", vetUsuarios.interesse_principal[ind])
         confirmacao <- verdadeiro
      fimse
   fimpara
   se (confirmacao = falso) entao
      escreval("Usu�rio n�o encontrado")
   fimse
   fimprocedimento
   
   procedimento p_consulta_interesse (pr_interesse : caractere)
   var
   ind, cont : inteiro
   confirmacao : logico
   inicio
   confirmacao <- falso
   para ind <- 0 ate 99 passo 1 faca
      se (vetUsuarios.interesse_principal[ind] = pr_interesse) entao
         cont <- cont + 1
         escreval("-----------------------------------")
         escreval("Nome: ", vetUsuarios.nome_completo[ind])
         escreval("Email: ", vetUsuarios.email[ind])
         escreval("Nome de usu�rio:", vetUsuarios.nome_usuario[ind])
         escreval("Principal interesse: ", vetUsuarios.interesse_principal[ind])
         confirmacao <- verdadeiro
      fimse
   fimpara
   se (confirmacao = falso) entao
      escreval("Usu�rio n�o encontrado")
   senao
      escreval("A busca retornou um total de", cont, " usu�rios")
   fimse
   fimprocedimento
   
Inicio
   login <- falso
   cadastro <- falso
   indice <- 0
   
   enquanto (opcao <> 9) faca
      opcao2 <- 0
      escreval("1 - Cadastro")
      se (cadastro = verdadeiro) entao
         escreval("2 - Login")
      fimse
      escreval("9 - Encerrar")
      escreva("Insira comando:")
      leia(opcao)
      limpatela
      escolha(opcao)
         caso (1)
            escreva("Email: ")
            leia(email)
            limpatela
            escreva("Nome completo: ")
            leia(nome_completo)
            limpatela
            repita
               escreva("Nome de usu�rio: ")
               leia(nome_usuario)
               limpatela
            ate (f_cadastraUsuario(nome_usuario))
            escreva("Senha: ")
            leia(senha)
            limpatela
            repita
               escreva("Confirme sua senha: ")
               leia(confirma_senha)
               limpatela
               se (f_confirmacao(senha, confirma_senha)) entao
                  p_cadastro(nome_completo, nome_usuario, email, senha)
                  escreval("Cadastro realizado com sucesso")
               senao
                  escreval("Falha no cadastro da senha")
               fimse
            ate (senha = confirma_senha)
         caso (2)
            escreva("Nome de usu�rio: ")
            leia(nome_usuario)
            limpatela
            escreva("Senha: ")
            leia(senha)
            limpatela
            p_login(nome_usuario, senha)
            se (login = verdadeiro) entao
               enquanto (opcao2 <> 9) faca
                  escreval("1 - Adicionar principal interesse ao perfil")
                  escreval("2 - Mostrar perfil do usu�rio")
                  escreval("3 - Consulta por nome de usu�rio")
                  escreval("4 - Consulta por interesse")
                  escreval("9 - Sair")
                  escreval("Insira o comando: ")
                  leia(opcao2)
                  limpatela
                  escolha(opcao2)
                     caso (1)
                        escreva("Nome do principal interesse: ")
                        leia(interesse)
                        limpatela
                        p_adiciona_interesse(interesse)
                     caso (2)
                        p_mostra_perfil
                     caso (3)
                        escreval("Buscar pelo nome de usu�rio: ")
                        leia(nome_usuario)
                        p_consulta_nome(nome_usuario)
                     caso (4)
                        escreval("Buscar pelo interesse: ")
                        leia(interesse)
                        p_consulta_interesse(interesse)
                     caso (9)
                        login <- falso
                        indice_login <- -1
                  fimescolha
               fimenquanto
            fimse
      fimescolha
   fimenquanto
Fimalgoritmo