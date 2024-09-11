---
id: 65e1aedc500d930ce8ed90ac
title: Lição H de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-h
---

# --description--

Se uma expressão tem mais de um operador, a ordem de execução é definida pela sua precedência ou, em outras palavras, a ordem de prioridade padrão dos operadores.

Você aprendeu na escola que a multiplicação na expressão `1 + 2 * 2` deve ser calculada antes da adição. É exatamente essa a questão da precedência. Diz-se que a multiplicação tem uma precedência maior do que a adição.

Parênteses anulam qualquer precedência. Se você não está satisfeito com a ordem padrão, pode usá-los para mudá-la. Por exemplo, escreva `(1 + 2) * 2`.

Há muitos operadores em JavaScript. Todo operador tem um número de precedência correspondente. O que tem o maior número executa primeiro. Se a precedência é a mesma, a ordem de execução é da esquerda para a direita.

Aqui está uma parte da tabela de precedência (você não precisa lembrar disso, mas observe que operadores unários são mais altos do que os binários correspondentes):

| Precedência | Nome            | Sinal |
| ----------- | --------------- | ----- |
| ...         | ...             | ...   |
| 14          | unário positivo | +     |
| 14          | unário negativo | -     |
| 13          | exponenciação   | **    |
| 12          | multiplicação   | *     |
| 12          | divisão         | /     |
| 11          | adição          | +     |
| 11          | subtração       | -     |
| ...         | ...             | ...   |
| 2           | atribuição      | =     |
| ...         | ...             | ...   |



# --question--

## --text--

Ao lidar com múltiplos operadores em uma expressão em JavaScript, qual afirmação é verdadeira em relação à ordem de execução?

## --answers--

Os operadores são executados da direita para a esquerda, independentemente de sua precedência.

---

Operadores com precedência mais alta são executados primeiro, mas os parênteses podem mudar a precedência predefinida.

---

A precedência do operador é determinada pela velocidade de execução do operador.

---

A multiplicação sempre tem precedência sobre a adição. Além disso, operadores unários são executados depois dos binários.


## --video-solution--

2
