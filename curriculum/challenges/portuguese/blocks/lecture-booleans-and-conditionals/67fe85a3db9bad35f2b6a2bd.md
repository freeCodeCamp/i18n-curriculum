---
id: 67fe85a3db9bad35f2b6a2bd
title: Como Funcionam as Declarações Condicionais e os Operadores Lógicos?
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

Instruções condicionais, ou condicionais, permitem que você controle o fluxo do seu programa com base em se certas condições são verdadeiras ou falsas.

Mas antes de entrarmos em tudo isso, vamos revisar os blocos básicos das declarações condicionais, começando pelos operadores de comparação. Operadores de comparação são operadores que permitem comparar dois ou mais valores e retornar um valor booleano.

Em uma lição anterior, você aprendeu que booleanos são um dos tipos de dados em Python e podem ser apenas `True` ou `False`.

Aqui está uma tabela com os operadores de comparação em Python:

| Operator | Name | Description |
| --- | --- | --- |
| `==` | Equal | Checks if two values are equal |
| `!=` | Not equal | Checks if two values are not equal |
| `>` | Greater than | Checks if the value on the left is greater than the value on the right |
| `<` | Less than | Checks if the value on the left is less than the value on the right |
| `>=` | Greater than or equal | Checks if the value on the left is greater than or equal to the value on the right |
| `<=` | Less than or equal | Checks if the value on the left is less than or equal to the value on the right |

Aqui estão algumas dessas expressões que avaliam para `True` ou `False`:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

Esses operadores podem ser usados em condicionais para comparar valores e executar determinado código com base em se a condicional avalia para `True` ou `False`.

Em Python, a condicional mais básica é a declaração `if`. Aqui está a sintaxe básica:

```python
if condition:
    pass # Code to execute if condition is True
```

* As declarações `if` começam com a palavra-chave `if`.
    
* `condition` é uma expressão que avalia para `True` ou `False`, seguida por dois pontos (`:`).

* O corpo da declaração `if` constitui um <dfn>bloco de código</dfn>, que é um grupo de instruções que pertencem juntas. Em Python, o nível de indentação é o que define um bloco de código.
    
No exemplo acima, o corpo da instrução `if` contém uma instrução `pass`. Quando uma instrução `pass` é executada, nada acontece. Esta é uma palavra-chave especial que pode ser usada como um espaço reservado para código futuro e é útil quando blocos de código vazios não são permitidos.

O código dentro do corpo da instrução `if` é executado somente quando a condição avalia para `True`. Por exemplo:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

Observe a indentação antes de `print('You are an adult')`. Enquanto outras linguagens de programação usam caracteres como chaves para definir blocos de código e usam a indentação apenas para legibilidade, em Python, os blocos de código são determinados pela indentação.

O código a seguir geraria um `IndentationError`, que é a forma do Python indicar que a indentação é necessária em um determinado ponto do código:

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

Embora você possa usar qualquer número de espaços (desde que seja consistente) para determinar cada nível de indentação, o guia de estilo do Python recomenda usar quatro espaços.

Blocos também são encontrados em loops e funções, que você aprenderá em lições futuras.

Voltando ao nosso exemplo, se `age` for menor que `18`, nada será impresso no terminal:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

Mas e se você também quiser imprimir algo se `age` for menor que `18`? É aí que entra a cláusula `else`. A cláusula `else` é executada quando a condição `if` é falsa. Aqui está a sintaxe para uma declaração `if…else`:

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

Por exemplo:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

Podem haver situações em que você queira considerar múltiplas condições. Para fazer isso, Python permite que você estenda sua declaração if com a palavra-chave `elif` (else if).

Aqui está a sintaxe:

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

Por exemplo:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

Observe que você pode usar quantas declarações `elif` quiser:

```python
age = 2

if age >= 65:
    print('You are a senior citizen')
elif age >= 30:
    print('You are an adult in your prime')
elif age >= 18:
    print('You are a young adult')
elif age >= 13:
    print('You are a teenager')
elif age >= 3:
    print('You are a young child')
else:
    print('You are a toddler or an infant') # You are a toddler or an infant
```

Agora que você entende como os operadores de comparação e as declarações condicionais funcionam em Python, você pode começar a escrever programas que tomam decisões com base na lógica e na entrada. Quer você esteja comparando valores ou ramificando através de múltiplas condições, essas ferramentas são a base para escrever código flexível e responsivo.

# --questions--

## --text--

O que os operadores de comparação fazem?

## --answers--

Realize cálculos matemáticos com valores booleanos

### --feedback--

Esses operadores verificam coisas como igualdade ou qual valor é maior e o resultado é `True` ou `False`.

---

Converta strings em valores booleanos.

### --feedback--

Esses operadores verificam coisas como igualdade ou qual valor é maior e o resultado é `True` ou `False`.

---

Compare dois valores e retorne um valor booleano.

---

Crie loops e iterações.

### --feedback--

Esses operadores verificam coisas como igualdade ou qual valor é maior e o resultado é `True` ou `False`.

## --video-solution--

3

## --text--

Qual será o resultado para o seguinte código?

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') 
```

## --answers--

`You are an adult` será impresso no console.

### --feedback--

Revise a última parte da lição para a resposta correta.

---

`You are a teenager` será impresso no console.

### --feedback--

Revise a última parte da lição para a resposta correta.

---

`You are a child` será impresso no console.

---

Um erro será exibido no console.

### --feedback--

Revise a última parte da lição para a resposta correta.

## --video-solution--

3

## --text--

O que a expressão `3 >= 4` irá avaliar?

## --answers--

`True`

### --feedback--

3 não é maior ou igual a 4.

---

`SyntaxError`

### --feedback--

3 não é maior ou igual a 4.

---

`None`

### --feedback--

3 não é maior ou igual a 4.

---

`False`

## --video-solution--

4
