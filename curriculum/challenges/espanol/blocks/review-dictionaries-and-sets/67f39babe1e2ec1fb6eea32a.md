---
id: 67f39babe1e2ec1fb6eea32a
title: Revisión de Diccionarios y Conjuntos
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Diccionarios

- **Diccionarios**: Los diccionarios son estructuras de datos integradas que almacenan colecciones de pares clave-valor. Las claves deben ser tipos de datos inmutables. Esta es la sintaxis general de un diccionario en Python:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **Constructor `dict()`**: El constructor `dict()` es una forma alternativa de construir el diccionario. Pasas una lista de tuplas como argumento al constructor `dict()`. Estas tuplas contienen la clave como el primer elemento y el valor como el segundo elemento.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Notación de corchetes**: Para acceder al valor de un par clave-valor, puedes usar la sintaxis conocida como notación de corchetes.

```python
dictionary[key]
```

## Métodos Comunes del Diccionario

- **Método `get()`**: El método `get()` recupera el valor asociado con una clave. Es similar a la notación de corchetes, pero te permite establecer un valor predeterminado, evitando errores si la clave no existe.

```python
dictionary.get(key, default)
```

- **Métodos `keys()` y `values()`**: Los métodos `keys()` y `values()` devuelven un objeto vista con todas las claves y valores del diccionario, respectivamente. Un objeto vista es una forma de ver el contenido de un diccionario sin crear una copia separada de los datos.

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

- **Método `pop()`**: El método `pop()` elimina el par clave-valor con la clave especificada como el primer argumento y devuelve su valor. Si la clave no existe, devuelve el valor predeterminado especificado como el segundo argumento. Si la clave no existe y no se especifica un valor predeterminado, se genera un `KeyError`.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **Método `popitem()`**: En Python 3.7 y versiones superiores, el método `popitem()` elimina el último elemento insertado.

```python
pizza.popitem()
```

- **Método `update()`**: El método `update()` actualiza los pares clave-valor con los pares clave-valor de otro diccionario. Si tienen claves en común, sus valores se sobrescriben. Las claves nuevas se agregarán al diccionario como nuevos pares clave-valor.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Iterando sobre un diccionario

- **Iterando Sobre Valores**: Si necesitas iterar sobre los valores en un diccionario, puedes escribir un ciclo `for` con `values()` para obtener todos los valores de un diccionario.

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

Resultado:

```md
990
600
250
70
```

- **Iterando sobre las claves**: Si necesitas iterar sobre las claves en el diccionario `products` de arriba, puedes escribir `products.keys()` o `products` directamente.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

Resultado:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **Iterando sobre pares clave-valor**: Si necesitas iterar sobre las claves y sus valores correspondientes simultáneamente, puedes iterar sobre `products.items()`. Obtienes tuplas individuales con las claves y sus valores correspondientes.

```python
for product in products.items():
    print(product)
```

Resultado:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

Para almacenar la clave y el valor en variables de bucle separadas, necesitas separarlas con una coma. La primera variable almacena la clave, y la segunda almacena el valor.

```python
for product, price in products.items():
    print(product, price)
```

Resultado:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **Función `enumerate()`**: Si necesitas iterar sobre un diccionario mientras llevas un contador, puedes llamar a la función `enumerate()`. La función devuelve un objeto `enumerate`, que asigna un entero a cada elemento, como un contador. Puedes iniciar el contador desde cualquier número, pero por defecto, comienza en 0.

Asignar el índice y el elemento a variables separadas en el ciclo es la forma común de usar `enumerate()`. Por ejemplo, con `products.items()`, puedes obtener el par clave-valor completo además del índice:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

Resultado:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

Para personalizar el valor inicial del conteo, puedes pasar un segundo argumento a `enumerate()`. Por ejemplo, aquí estamos comenzando el conteo desde 1.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

Resultado:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## Conjuntos

- **Conjuntos**: Los conjuntos son estructuras de datos integradas en Python que no permiten valores duplicados. Los conjuntos son mutables y no ordenados, lo que significa que sus elementos no se almacenan en un orden específico, por lo que no puedes usar índices o claves para acceder a ellos. Además, los conjuntos solo pueden contener valores de tipos de datos inmutables, como números, cadenas y tuplas.

- **Definiendo un Conjunto**: Para definir un conjunto, necesitas escribir sus elementos dentro de llaves y separarlos con comas.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Definiendo un Conjunto Vacío**: Si necesitas definir un conjunto vacío, debes usar la función `set()`. Solo escribir llaves vacías creará automáticamente un diccionario.

```python
set() # Set
{}    # Dictionary
```

## Métodos Comunes de Conjunto

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

## Operaciones Matemáticas de Conjuntos

- **Métodos `issubset()` y `issuperset()`**: Los métodos `issubset()` y `issuperset()` verifican si un conjunto es un subconjunto o un superconjunto de otro conjunto, respectivamente.

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

- **Operador de Unión (`|`)**: El operador de unión `|` devuelve un nuevo conjunto con todos los elementos de ambos conjuntos.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Operador de intersección (`&`)**: El operador de intersección `&` devuelve un nuevo conjunto con solo los elementos que los conjuntos tienen en común.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Operador de diferencia (`-`)**: El operador de diferencia `-` devuelve un nuevo conjunto con los elementos del primer conjunto que no están en los otros conjuntos.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Operador de Diferencia Simétrica (`^`)**: El operador de diferencia simétrica `^` devuelve un nuevo conjunto con los elementos que están en el primer o en el segundo conjunto, pero no en ambos.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **Operador `in`**: Puedes verificar si un elemento está en un conjunto o no con el operador `in`.

```python
print(5 in my_set) # True
```

## Biblioteca Estándar de Python

- **Biblioteca Estándar de Python**: Una biblioteca te ofrece código preescrito y reutilizable, como funciones, clases y estructuras de datos, que puedes reutilizar en tus proyectos. Python tiene una extensa biblioteca estándar con módulos integrados que implementan soluciones estandarizadas para muchos problemas y tareas. Algunos ejemplos de módulos integrados populares son `math`, `random`, `re` (abreviatura de "expresiones regulares") y `datetime`.

## Declaración de importación

- **Declaración Import**: Para acceder a los elementos definidos en módulos integrados, usas una declaración import. Las declaraciones import generalmente se escriben al principio del archivo. Las declaraciones import funcionan igual para funciones, clases, constantes, variables y cualquier otro elemento definido en el módulo.

- **Declaración básica de importación**: Puedes usar la palabra clave `import` seguida del nombre del módulo:

```python
import module_name
```

Luego, si necesitas llamar a un método de ese módulo, usarías la notación de punto, con el nombre del módulo seguido del nombre del método.

```python
module_name.method_name()
```

Por ejemplo, escribirías lo siguiente en tu código para importar el módulo `math` y obtener la raíz cuadrada de 36:

```python
import math

math.sqrt(36)
```

- **Importar un Módulo con un Nombre Diferente**: Si necesitas importar el módulo con un nombre diferente (también conocido como un "alias"), puedes usar `as` seguido del alias al final de la declaración de importación. Esto se usa a menudo para nombres de módulos largos o para evitar conflictos de nombres.

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

- **Importar Elementos Específicos**: Si no necesitas todo de un módulo, puedes importar elementos específicos usando `from`. En este caso, la declaración de importación comienza con `from`, seguida del nombre del módulo, luego la palabra clave `import` y finalmente los nombres de los elementos que quieres importar.

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
 
Esto es útil, pero puede resultar en conflictos de nombres si ya tienes funciones o variables con el mismo nombre. Tenlo en cuenta al elegir qué tipo de declaración de importación quieres usar.

Si necesitas asignar alias a estos nombres, también puedes hacerlo usando la palabra clave `as` seguida del alias.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Declaración de importación con asterisco (`*`)**: El asterisco indica a Python que quieres importar todo en ese módulo, pero quieres importarlo para que no necesites usar el nombre del módulo como prefijo.

```python
from module_name import *
```

Por ejemplo, si usas esto para importar el módulo `math`, podrás llamar a cualquier función definida en ese módulo sin especificar el nombre del módulo como prefijo.

```python
from math import *
print(sqrt(36))  # 6.0
```

Sin embargo, esto generalmente se desaconseja porque puede provocar colisiones de espacio de nombres y dificultar saber de dónde provienen los nombres.

## `if __name__ == '__main__'`

- **Variable `__name__`**: `__name__` es una variable especial incorporada en Python. Cuando un archivo Python se ejecuta directamente, Python asigna el valor de esta variable a la cadena `__main__`. Pero si el archivo Python se importa como un módulo en otro script Python, el valor de la variable `__name__` se establece con el nombre de ese módulo.

Por eso a menudo encontrarás esta condicional en scripts de Python. Contiene el código que solo quieres ejecutar **solo** si el script de Python se está ejecutando como el programa principal.

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

Revise los temas y conceptos de Diccionarios y Conjuntos.
