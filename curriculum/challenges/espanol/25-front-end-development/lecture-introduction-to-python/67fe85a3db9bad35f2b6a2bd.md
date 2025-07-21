---
id: 67fe85a3db9bad35f2b6a2bd
title: '¿Cómo funcionan las declaraciones condicionales y los operadores lógicos?'
#change back to 11 when video is updated
challengeType: 19
#videoId: new-id-goes-here-when-ready
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

Las declaraciones condicionales, o condicionales, te permiten controlar el flujo de tu programa  basándote en si ciertas condiciones son verdaderas o falsas.

Pero, antes de entrar en todo eso, repasemos los bloques de construcción básicos de las declaraciones condicionales, comenzando con los operadores de comparación. Los operadores de comparación son operadores que te permiten comparar dos o más valores y devolver un valor booleano.

En una clase anterior, aprendiste que los booleanos son uno de los tipos de datos en Python y solo pueden ser `True` o `False`.

Aquí hay una tabla con los operadores de comparación en Python:

| Operador | Nombre            | Descripción                                                                       |
| -------- | ----------------- | --------------------------------------------------------------------------------- |
| `==`     | Igual             | Comprueba si dos valores son iguales                                              |
| `!=`     | No igual          | Comprueba si dos valores no son iguales                                           |
| `>`   | Mayor que         | Comprueba si el valor de la izquierda es mayor que el valor de la derecha         |
| `<`   | Menor que         | Comprueba si el valor de la izquierda es menor que el valor de la derecha         |
| `>=`  | Mayor o igual que | Comprueba si el valor de la izquierda es mayor o igual que el valor de la derecha |
| `<=`  | Menor o igual que | Comprueba si el valor de la izquierda es menor o igual que el valor de la derecha |

Aquí algunas de esas expresiones que evalúan a `True` o `False`:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

Estos operadores se pueden usar en condicionales para comparar valores y ejecutar cierto código basado en si el condicional evalúa a `True` o `False`.

En Python, el condicional más básico es la declaración `if`. Aquí está la sintaxis básica:

```python
if condition:
    # Code to execute if condition is True
```

* Las sentencias `if` comienzan con la palabra clave `if`.

* `condición` es una expresión que evalúa a `True` o `False`, seguida por dos puntos (`:`).

* La indentación especifica el bloque de código dentro del cuerpo de la sentencia `if`.


Y aquí hay un ejemplo:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

Pero si `edad` es menor que `18`, no se imprime nada en la terminal:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

Pero, ¿qué pasa si también quieres imprimir algo si `edad` es menor que `18`? Ahí es donde entra la cláusula `else`. La cláusula `else` se ejecuta cuando la condición `if` es falsa. Aquí está la sintaxis para una sentencia `if…else`:

```python
if condition:
   # Code to execute if condition is True
else:
   # Code to execute if condition is False
```

Por ejemplo:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

Puede haber situaciones en las que quieras tener en cuenta múltiples condiciones. Para hacer eso, Python te permite extender tu declaración si con la palabra clave `elif` (else if).

Aquí está la sintaxis:

```python
if condition:
   # Code to execute if condition is True
elif condition2:
   # Code to execute if condition2 is True
else:
   # Code to execute if all conditions are False
```

Por ejemplo:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

Ten en cuenta que puedes usar tantas declaraciones `elif` como quieras:

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

Ahora que entiendes cómo funcionan los operadores de comparación y las declaraciones condicionales en Python, puedes empezar a escribir programas que tomen decisiones basadas en la lógica y la entrada. Ya sea comparando valores o bifurcándose a través de múltiples condiciones, estas herramientas son la base para escribir código flexible y sensible.

# --questions--

## --text--

¿Qué hacen los operadores de comparación?

## --answers--

Realizar cálculos matemáticos con valores booleanos

### --feedback--

Estos operadores verifican cosas como la igualdad o qué valor es mayor, y el resultado es `True` o `False`.

---

Convertir cadenas a valores booleanos.

### --feedback--

These operators check things like equality or which value is greater, and the result is either `True` or `False`.

---

Comparar dos valores y devolver un valor booleano.

---

Crear bucles e iteraciones.

### --feedback--

Estos operadores verifican cosas como la igualdad o qué valor es mayor, y el resultado es  `True` o `False`.

## --video-solution--

3

## --text--

¿Cuál será el resultado del siguiente código?

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

`Usted es un adulto` se imprimirá en la consola.

### --feedback--

Revise la última parte de la clase para obtener la respuesta correcta.

---

`Usted es un adolescente` se imprimirá en la consola.

### --feedback--

Review the last part of the lecture for the correct answer.

---

`Usted es un niño` se imprimirá en la consola.

---

Se imprimirá un error en la consola.

### --feedback--

Revise la última parte de la clase para obtener la respuesta correcta.

## --video-solution--

3

## --text--

¿A qué evaluará la expresión `3 >= 4`?

## --answers--

`True`

### --feedback--

3 no es mayor ni igual a 4.

---

`SyntaxError`

### --feedback--

3 is not greater than or equal to 4.

---

`None`

### --feedback--

3 is not greater than or equal to 4.

---

`False`

## --video-solution--

4
