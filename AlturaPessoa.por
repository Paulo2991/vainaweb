//Com base na altura de uma pessoa, construa um algoritmo que calcule seu peso ideal, usando a
//seguinte formula: (72.7 x altura) -58

programa {
  	inclua biblioteca Matematica --> mat
  funcao inicio() {
    real altura,peso
    escreva("Informe a altura: ")
    leia(altura)
    peso = (72.7 * altura) -58
    escreva("O peso da pessoa é: ",mat.arredondar(peso,2))
  }
}
