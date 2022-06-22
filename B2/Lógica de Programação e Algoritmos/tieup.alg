Algoritmo "TieUp"

tipo
   usuario = registro
      email : caractere
      nome_completo : caractere
      nome_usuario : caractere
      senha : caractere
   fimregistro

Var
   indice, opcao, opcao2 : inteiro
   login : logico
   email, nome_completo, nome_usuario, senha, confirma_senha, interesse : caractere
   vetUsuarios : vetor[0..99] de usuario
   vetInteresses : vetor[0..19] de caractere
   
   procedimento p_cadastro (pr_nome_completo, pr_nome_usuario, pr_email, pr_senha : caractere)
   var
   inicio
      vetUsuarios.email[indice] <- pr_email
      vetUsuarios.nome_completo[indice] <- pr_nome_completo
      vetUsuarios.nome_usuario[indice] <- pr_nome_usuario
      vetUsuarios.senha[indice] <- pr_senha
      indice <- indice + 1
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
         escreval("Nome de usuário existente")
      fimse
      retorne confirmacao
   fimfuncao
   
   procedimento p_adiciona_interesse (pr_interesse : caractere)
   var
   ind : inteiro
   inicio
      para ind <- 0 ate 19 passo 1 faca
         se (vetInteresses[ind] = "") entao
            vetInteresses[ind] <- pr_interesse
            escreval("Interesse adicionado com sucesso")
            interrompa
         fimse
      fimpara
   fimprocedimento
   
   procedimento p_mostra_interesses
   var
   ind : inteiro
   inicio
      escreval("Interesses:")
      para ind <- 0 ate 19 passo 1 faca
         se (vetInteresses[ind] <> "") entao
            escreval(vetInteresses[ind])
         fimse
      fimpara
   fimprocedimento
   
   procedimento p_zerar_interesses
   var
   ind : inteiro
   inicio
      para ind <- 0 ate 19 passo 1 faca
         vetInteresses[ind] <- ""
      fimpara
   fimprocedimento
Inicio
   login <- falso
   indice <- 0
   
   enquanto (opcao <> 9) faca
      opcao2 <- 0
      escreval("1 - Cadastro")
      escreval("2 - Login")
      escreval("9 - Encerrar")
      escreva("Insira comando:")
      leia (opcao)
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
               escreva("Nome de usuário: ")
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
            escreva("Nome de usuário: ")
            leia(nome_usuario)
            limpatela
            escreva("Senha: ")
            leia(senha)
            limpatela
            p_login(nome_usuario, senha)
            se (login = verdadeiro) entao
               enquanto (opcao2 <> 9) faca
                  escreval("1 - Adicionar interesses ao perfil")
                  escreval("2 - Mostrar todas os interesses")
                  escreval("9 - Sair")
                  escreval("Insira o comando: ")
                  leia(opcao2)
                  limpatela
                  escolha (opcao2)
                     caso (1)
                        escreva("Nome do interesse: ")
                        leia(interesse)
                        limpatela
                        p_adiciona_interesse(interesse)
                     caso (2)
                        p_mostra_interesses
                     caso (9)
                        login <- falso
                        p_zerar_interesses
                  fimescolha
               fimenquanto
               
            fimse
      fimescolha
   fimenquanto
Fimalgoritmo