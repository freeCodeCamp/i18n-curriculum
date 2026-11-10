---
id: 67f39babe1e2ec1fb6eea32a
title: Revisión de Diccionarios y Conjuntos
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Diccionarios

- **Diccionarios**: Los diccionarios son estructuras de datos integradas que almacenan colecciones de pares clave-valor. Las claves deben ser únicas. Se pueden usar números, cadenas y tuplas de números y cadenas como claves, pero no se puede usar una tupla que contenga una lista. Los valores pueden repetirse y pueden ser de cualquier tipo de dato. Los diccionarios también mantienen el orden en que se agregaron los elementos. Esta es la sintaxis general de un diccionario en Python:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **Constructor `dict()`**: El constructor `dict()` es una forma alternativa de construir el diccionario. Pasas una lista de tuplas como argumento al constructor `dict()`. Estas tuplas contienen la clave como primer elemento y el valor como segundo elemento.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Notación de corchetes**: Para acceder al valor de un par clave-valor, puedes usar la sintaxis conocida como notación de corchetes.

```python
dictionary[key]
```

- **Asignación con corchetes**: Puedes agregar un nuevo par clave-valor o actualizar el valor de una clave existente con la notación de corchetes. Si la clave no existe, se agrega. Si ya existe, su valor es reemplazado.

```python
dictionary[key] = value
```

- **Actualizar valores dentro de un ciclo**: Puedes actualizar los valores de claves existentes dentro de un ciclo sobre `items()` asignando a cada clave.

```python
products = {'apple': 10, 'pear': 20}

for product, price in products.items():
    products[product] = round(price * 0.8)

print(products)  # {'apple': 8, 'pear': 16}
```

## Métodos comunes de diccionarios

- **Método `get()`**: El método `get()` recupera el valor asociado con una clave. Es similar a la notación de corchetes, pero te permite establecer un valor predeterminado, evitando errores si la clave no existe.

```python
dictionary.get(key, default)
```

- **Métodos `keys()` y `values()`**: Los métodos `keys()` y `values()` devuelven un objeto vista con todas las claves y valores en el diccionario, respectivamente. Un objeto vista es una forma de ver el contenido de un diccionario sin crear una copia separada de los datos.

```python
pizza = {
    'name': 'Margherita Pizza',
    'price': 8.9,
    'calories_per_slice': 250
}

pizza.keys()
# dict_keys(['name', 'price', 'calories_per_slice'])

pizza.values()
# dict_values(['Margherita Pizza', 8.9, 250])
```

- **Método `items()`**: El método `items()` devuelve un objeto vista con todos los pares clave-valor en el diccionario, incluyendo tanto las claves como los valores.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **Método `clear()`**: El método `clear()` elimina todos los pares clave-valor del diccionario.

```python
pizza.clear()
```

- **Método `pop()`**: El método `pop()` elimina el par clave-valor con la clave especificada como primer argumento y devuelve su valor. Si la clave no existe, devuelve el valor predeterminado especificado como segundo argumento. Si la clave no existe y no se especifica valor predeterminado, se genera un `KeyError`.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **Método `popitem()`**: En Python 3.7 y superiores, el método `popitem()` elimina el último elemento insertado.

```python
pizza.popitem()
```

- **Método `update()`**: El método `update()` actualiza los pares clave-valor con los pares clave-valor de otro diccionario. Si tienen claves en común, sus valores se sobrescriben. Las claves nuevas se agregan al diccionario como nuevos pares clave-valor.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Iterar sobre un diccionario

- **Iterar sobre valores**: Si necesitas iterar sobre los valores en un diccionario, puedes escribir un ciclo `for` con `values()` para obtener todos los valores de un diccionario.

```python
products = {
    'Laptop': 990,
    'Smartphone': 600,
    'Tablet': 250,
    'Headphones': 70,
}

for price in products.values():
    print(price)
```

Salida:

```md
990
600
250
70
```

- **Iterar sobre claves**: Si necesitas iterar sobre las claves en el diccionario `products` anterior, puedes escribir `products.keys()` o `products` directamente.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

Salida:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **Iterar sobre pares clave-valor**: Si necesitas iterar sobre las claves y sus valores correspondientes simultáneamente, puedes iterar sobre `products.items()`. Obtienes tuplas individuales con las claves y sus valores correspondientes.

```python
for product in products.items():
    print(product)
```

Salida:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

Para almacenar la clave y el valor en variables separadas del ciclo, debes separarlas con una coma. La primera variable almacena la clave y la segunda almacena el valor.

```python
for product, price in products.items():
    print(product, price)
```

Salida:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **Función `enumerate()`**: Si necesitas iterar sobre un diccionario mientras llevas un contador, puedes llamar a la función `enumerate()`. La función devuelve un objeto `enumerate`, que asigna un entero a cada elemento, como un contador. Puedes iniciar el contador desde cualquier número, pero por defecto comienza en 0.

Asignar el índice y el elemento a variables separadas del ciclo es la forma común de usar `enumerate()`. Por ejemplo, con `products.items()`, puedes obtener el par clave-valor completo además del índice:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

Salida:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

Para personalizar el valor inicial del conteo, puedes pasar un segundo argumento a `enumerate()`. Por ejemplo, aquí comenzamos el conteo desde 1.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

Salida:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## Conjuntos

- **Conjuntos**: Los conjuntos son estructuras de datos integradas en Python que no permiten valores duplicados. Los conjuntos son mutables y no ordenados, lo que significa que sus elementos no se almacenan en un orden específico, por lo que no puedes usar índices ni claves para acceder a ellos. Los elementos de un conjunto pueden ser números, cadenas y tuplas de números y cadenas, pero no una tupla que contenga una lista.

- **Definir un conjunto**: Para definir un conjunto, debes escribir sus elementos dentro de llaves y separarlos con comas.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Definir un conjunto vacío**: Si necesitas definir un conjunto vacío, debes usar la función `set()`. Solo escribir llaves vacías creará automáticamente un diccionario.

```python
set() # Set
{}    # Dictionary
```

## Métodos comunes de conjuntos

- **Método `add()`**: Puedes agregar un elemento a un conjunto con el método `add()`, pasando el nuevo elemento como argumento.

```python
my_set.add(6)
```

- **Métodos `remove()` y `discard()`**: Para eliminar un elemento de un conjunto, puedes usar el método `remove()` o el método `discard()`, pasando el elemento que quieres eliminar como argumento. El método `remove()` generará un `KeyError` si el elemento no se encuentra, mientras que el método `discard()` no lo hará.

```python
my_set.remove(4)
my_set.discard(4)
```

- **Método `clear()`**: El método `clear()` elimina todos los elementos del conjunto.

```python
my_set.clear()
```

## Operaciones matemáticas con conjuntos

- **Métodos `issubset()` e `issuperset()`**: Los métodos `issubset()` y `issuperset()` verifican si un conjunto es un subconjunto o un superconjunto de otro conjunto, respectivamente.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **Método `isdisjoint()`**: El método `isdisjoint()` verifica si dos conjuntos son disjuntos, es decir, si no tienen elementos en común.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **Operador unión (`|`)**: El operador unión `|` devuelve un nuevo conjunto con todos los elementos de ambos conjuntos.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Operador intersección (`&`)**: El operador intersección `&` devuelve un nuevo conjunto con solo los elementos que los conjuntos tienen en común.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Operador diferencia (`-`)**: El operador diferencia `-` devuelve un nuevo conjunto con los elementos del primer conjunto que no están en el otro conjunto.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Operador diferencia simétrica (`^`)**: El operador diferencia simétrica `^` devuelve un nuevo conjunto con los elementos que están en el primer o segundo conjunto, pero no en ambos.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **Operadores compuestos para conjuntos**: Los operadores `|=`, `&=`, `-=`, y `^=` realizan las operaciones de unión, intersección, diferencia y diferencia simétrica, pero actualizan el conjunto existente en lugar de crear uno nuevo.

```python
my_set = {1, 2, 3}

my_set |= {3, 4}          # {1, 2, 3, 4}
my_set &= {2, 3, 4, 5}    # {2, 3, 4}
my_set -= {4}             # {2, 3}
my_set ^= {3, 5}          # {2, 5}
```

- **Operador `in`**: Puedes verificar si un elemento está en un conjunto o no con el operador `in`.

```python
print(5 in my_set) # True
```

## Biblioteca estándar de Python

- **Biblioteca estándar de Python**: Una biblioteca te ofrece código preescrito y reutilizable, como funciones, clases y estructuras de datos, que puedes usar en tus proyectos. Python tiene una extensa biblioteca estándar con módulos integrados que implementan soluciones estandarizadas para muchos problemas y tareas. Algunos ejemplos de módulos integrados populares son `math`, `random`, `re` (abreviatura de "expresiones regulares") y `datetime`.

## Sentencia import

- **Sentencia import**: Para acceder a los elementos definidos en módulos integrados, usas una sentencia import. Las sentencias import generalmente se escriben al inicio del archivo. Las sentencias import funcionan igual para funciones, clases, constantes, variables y cualquier otro elemento definido en el módulo.

- **Sentencia import básica**: Puedes usar la palabra clave `import` seguida del nombre del módulo:

```python
import module_name
```

Luego, si necesitas llamar a una función de ese módulo, usarías la notación de punto, con el nombre del módulo seguido del nombre de la función.

```python
module_name.function_name()
```

Por ejemplo, escribirías lo siguiente en tu código para importar el módulo `math` y obtener la raíz cuadrada de 36:

```python
import math

math.sqrt(36)
```

- **Importar un módulo con un nombre diferente**: Si necesitas importar el módulo con un nombre diferente (también conocido como "alias"), puedes usar `as` seguido del alias al final de la sentencia import. Esto se usa a menudo para nombres largos de módulos o para evitar conflictos de nombres.

```python
import module_name as module_alias
```

Por ejemplo, para referirte al módulo `math` como `m` en tu código, puedes asignar un alias así:

```python
import math as m
```

Luego, puedes acceder a los elementos del módulo usando el alias:

```python
m.sqrt(36)
```

- **Importar elementos específicos**: Si no necesitas todo de un módulo, puedes importar elementos específicos usando `from`. En este caso, la sentencia import comienza con `from`, seguido del nombre del módulo, luego la palabra clave `import` y finalmente los nombres de los elementos que quieres importar.

```python
from module_name import name1, name2
```

Luego, puedes usar estos nombres sin el prefijo del módulo en tu script de Python. Por ejemplo:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
Esto es útil, pero puede resultar en conflictos de nombres si ya tienes funciones o variables con el mismo nombre. Tenlo en cuenta al elegir qué tipo de sentencia import quieres usar.

Si necesitas asignar alias a estos nombres, también puedes hacerlo usando la palabra clave `as` seguida del alias.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Sentencia de importación con asterisco (`*`)**: El asterisco indica a Python que quieres importar los nombres públicos del módulo para no tener que usar el nombre del módulo como prefijo. Si el módulo define `__all__`, esa lista controla qué nombres se importan. De lo contrario, se excluyen los nombres que comienzan con un guion bajo.

```python
from module_name import *
```

Por ejemplo, si usas esto para importar el módulo `math`, podrás llamar a cualquier función definida en ese módulo sin especificar el nombre del módulo como prefijo.

```python
from math import *
print(sqrt(36))  # 6.0
```

Sin embargo, esto generalmente se desaconseja porque puede causar colisiones en el espacio de nombres y dificultar saber de dónde vienen los nombres.

## `if __name__ == '__main__'`

- **Variable `__name__`**: `__name__` es una variable integrada especial en Python. Cuando un archivo Python se ejecuta directamente, Python asigna a esta variable el valor de cadena `"__main__"`. Pero si el archivo Python se importa como módulo en otro script Python, el valor de la variable `__name__` se establece en el nombre de ese módulo.

Por eso encontrarás a menudo esta condición en scripts de Python. Contiene el código que quieres ejecutar **solo** si el script de Python se está ejecutando como programa principal.

```python
if __name__ == '__main__': 
    # Code
```

## Validación de datos

- **Crear un conjunto a partir de un iterable**: El constructor `set()` acepta un iterable, como una lista, una cadena o un diccionario (que proporciona sus claves), siempre que sus elementos puedan almacenarse en un conjunto. Por ejemplo, una lista de números es válida, pero una lista que contiene otras listas no. Esto es útil para comparar las claves que esperas con las que realmente tienes.

```python
expected_keys = {'name', 'age'}
data = {'name': 'Jessica', 'age': 30}

print(set(data) == expected_keys)  # True
```

- **Desempaquetado de diccionarios con `**`**: El operador `**` desempaqueta un diccionario en argumentos con nombre, donde cada clave se usa como nombre de parámetro.

```python
def greet(name, age):
    print(f'{name} is {age}')

data = {'name': 'Jessica', 'age': 30}
greet(**data)  # Jessica is 30
```

- **Expresiones regulares y `re.search()`**: Una expresión regular describe un patrón de texto. La función `re.search()` busca el patrón en cualquier parte de una cadena. Devuelve un objeto de coincidencia si encuentra uno, o `None` si no.

```python
import re

print(re.search('cat', 'concatenate'))  # <re.Match object; span=(3, 6), match='cat'>
print(re.search('dog', 'concatenate'))  # None
```

- **Coincidencia sin distinguir mayúsculas y minúsculas con `re.IGNORECASE`**: Pasa `re.IGNORECASE` como tercer argumento para ignorar la diferencia entre mayúsculas y minúsculas.

```python
print(re.search('cat', 'CAT', re.IGNORECASE))  # <re.Match object; span=(0, 3), match='CAT'>
```

- **Cadenas crudas y `\d`**: Una cadena cruda comienza con `r` y trata las barras invertidas como caracteres literales, lo que mantiene legibles las expresiones regulares. En un patrón, `\d` coincide con cualquier dígito único.

```python
print(re.search(r'\d', 'room 5'))  # <re.Match object; span=(5, 6), match='5'>
```

- **El cuantificador `+`**: El cuantificador `+` coincide con una o más repeticiones del patrón anterior.

```python
print(re.search(r'\d+', 'room 305'))  # <re.Match object; span=(5, 8), match='305'>
```

- **Función `re.fullmatch()`**: La función `re.fullmatch()` solo devuelve un objeto de coincidencia si toda la cadena coincide con el patrón. De lo contrario, devuelve `None`.

```python
print(re.fullmatch(r'\d+', '305'))      # <re.Match object; span=(0, 3), match='305'>
print(re.fullmatch(r'\d+', 'room 305')) # None
```

- **Identidad de objetos con `is` y `is not`**: El operador `is` verifica si dos nombres se refieren al mismo objeto, mientras que `is not` verifica que no sea así. Estos operadores son la forma estándar de comprobar si un valor es `None`.

```python
result = None

print(result is None)      # True
print(result is not None)  # False
```

- **La función `all()`**: La función `all()` devuelve `True` si todos los elementos de un iterable son verdaderos. También devuelve `True` para un iterable vacío.

```python
print(all([1, 'a', True]))  # True
print(all([1, 0, True]))    # False
```

# --assignment--

Revise los temas y conceptos de Diccionarios y Conjuntos.
