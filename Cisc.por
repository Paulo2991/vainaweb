programa {
  real saldo,depositar,sacar
  inteiro op

  funcao inicio() {
    escreva("Antes de escolher as seguintes operações informe o seu saldo atual para realizar as transações: ")
    leia(saldo)
    se(saldo > 0){
    faca{
        escreva("1 - Sacar: \n")
        escreva("2 - Depositar: \n")
        escreva("3 - Consultar: \n")
        escreva("4 - Sair: \n")
        leia(op)
        executar()
    }enquanto(op != 4)
  }senao{
    escreva("Saldo negativo ou igual a 0 não é possivel executar as transações atuais:\n")
  }
}

funcao executar(){
    escolha (op)	
		{
			caso 1:
       escreva("Informe o valor que você queria sacar: ")
       leia(sacar)
       se(saldo > sacar){
          saldo = saldo - sacar
        escreva("O Saque atual e:",saldo,"\n")
    }senao{
      escreva("Saldo Insuficiente:\n")
    } 
		 	pare 
		 	caso 2:
        escreva("Informe o valor que você queria depositar: ")
        leia(depositar) 
        saldo = saldo + depositar
	      escreva ("O deposito atual é:",saldo,"\n")
		 		pare
      caso 3: 
        saldo = saldo
		    escreva ("A consulta atual é:",saldo,"\n")
		 		pare
		 	caso 4:
		 		escreva ("Despedida!")
		 		pare
		 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
		 		escreva ("Opção Inválida:\n")
		}
}

}
