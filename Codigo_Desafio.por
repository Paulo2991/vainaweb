programa{
  inteiro din[] = {0, 1}
  inteiro userDefault = 1
  inteiro passDefalt = 123
  inteiro usuario
  inteiro senha,opcao
  real saldo = 0
  logico continuar = falso
  logico tentarLogin = verdadeiro

  funcao inicio(){
    enquanto(tentarLogin){
      continuar = verdadeiro
      login()
    }
  }

  funcao login(){
    enquanto(tentarLogin == verdadeiro){
      escreva("Digite sua conta: ")
      leia(usuario)
      escreva("Digite sua senha: ")
      leia(senha)
      se(usuario == userDefault e senha == passDefalt){
        mainBanco()
      }senao{
         escreva("Credenciais incorretas, tente novamente!/n")
      }
    }
  }

   funcao mainBanco(){
    escreva("1. Dep�sitos\n2. Saque\n3. Saldo\n4. Trocar senha\n5. Sair\n")
    leia(opcao)
    escolha(opcao){
      caso 1:
        deposito()
        pare
      caso 2:
       saque()
      pare
      caso 3:
       saldo()
       pare
      caso 4:
       limpa()
       trocarSenha()
       pare
      caso 5:
       limpa()
       sair()
      pare
    }
   }

  funcao saque(){
    real saque
    escreva("Informe a quantia que voc� gostaria de sacar: \n")
    leia(saque)
    se(saldo > saque){
       saldo = saldo - saque
      escreva("Voc� agora tem R$", saldo ," na sua conta\nVoc� gostaria de fazer alguma outra transa��o?\n1. Sim\n2. N�o\n")
      leia(opcao)
      se(opcao == 1){
        mainBanco()
      }senao se(opcao == 2){
        sair()
      }senao{
        escreva("Op��o inv�lida")
      }
    }senao{
      escreva("Saldo Insuficiente: ")
    }
   
  }

  funcao deposito(){
    real deposito
    escreva("Informe a quantia que voc� gostaria de depositar: \n")
    leia(deposito)
    saldo = saldo + deposito
    escreva("Voc� agora tem R$",saldo, " na sua conta\nVoc� gostaria de fazer alguma outra transa��o?\n1. Sim\n2. N�o\n")
    leia(opcao)

    se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      limpa()
      escreva("Opcao inv�lida")
    }
  }

  funcao saldo(){
    escreva("Saldo dispon�vel: R$", saldo, "\nVo�� gostaria de fazer alguma outra transa��o?\n1. Sim\n2. N�o\n")
    leia(opcao)  
     se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      limpa()
      escreva("Opcao inv�lida")
    }
  }

  funcao trocarSenha(){
    inteiro novaSenha
    escreva("Digite sua nova senha: \n")
    leia(novaSenha)
    passDefalt = novaSenha
    limpa()
    escreva("Senha atualizada com sucesso!\n")
    continuar = falso
  }

  funcao sair(){
    limpa()
    escreva("Obrigado por utilizar nossos servi�os.")
    continuar = falso
    tentarLogin = falso
  }
}

