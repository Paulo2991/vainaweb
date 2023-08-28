programa {
  inteiro op
  real depositar,sacar,saldo

funcao sacar(){
  escreva("Informe o valor que você queria sacar: ")
  leia(sacar)
  validarSaque()
}

funcao validarSaque(){
  se(saldo > sacar){
     saldo = saldo - sacar
     escreva("O Saque atual e:",saldo,"\n")
  }senao{
    escreva("Saldo Insuficiente:\n")
  } 
}

funcao depositar(){
  escreva("Informe o valor que você queria depositar: ")
  leia(depositar) 
  saldo = saldo + depositar
  escreva ("O deposito atual é:",saldo,"\n")
}

funcao sairMenu(){
  escreva ("Despedida!")
}

funcao consultar(){
  saldo = saldo
  escreva ("A consulta atual é:",saldo,"\n")
}

funcao menu(){
 escreva("Antes de escolher as seguintes operações informe o seu saldo atual para realizar as transações: ")
 leia(saldo)
 verificarSaldo()
}

funcao verificarSaldo(){
  se(saldo > 0){
    operacoesMenu()
  }senao{
    escreva("Saldo negativo ou igual a 0 não é possivel executar as transações atuais:\n")
  }
}

funcao operacoesMenu(){
  faca{
    escreva("1 - Sacar: \n")
    escreva("2 - Depositar: \n")
    escreva("3 - Consultar: \n")
    escreva("4 - Sair: \n")
    leia(op)
    executar()
  }enquanto(op != 4)
}

funcao executar(){
  escolha (op)	
		{
			caso 1:
        sacar()
		 		pare 
		 	caso 2:
        depositar()
		 		pare
      caso 3: 
        consultar()
		 		pare
		 	caso 4:
        sairMenu()
		 		pare
		 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
		 		escreva ("Opção Inválida:\n")
		}
}

funcao inicio() {
  menu()
}

}
