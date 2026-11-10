---
id: 6aeaec9c8f05dde6a77e511f
title: Cómo se comportan las listas compartidas en Python
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

Has aprendido que los nombres se refieren a objetos y que las listas son mutables. Veamos qué sucede cuando más de un nombre se refiere a la misma lista.

## Comparar listas iguales y alias

Dos listas pueden contener valores iguales sin ser el mismo objeto. Recuerda que `==` verifica igualdad, mientras que `is` verifica identidad:

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

Cada expresión `['milk']` crea una lista separada. Sin embargo, `alias = items` no crea una copia. Asigna otro nombre a la lista existente. A este otro nombre lo llamamos alias.

Cambiar la lista a través de cualquiera de los nombres es visible a través del otro:

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

La lista separada `equal_items` permanece sin cambios.

## Mutar una lista a través de un parámetro de función

Los argumentos se pasan por asignación. Un parámetro es un nombre local inicialmente asignado al objeto proporcionado por quien llama. Python no copia automáticamente ese objeto.

Aquí, el parámetro `items` y la variable del llamador `groceries` se refieren a la misma lista:

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

Llamar a `append()` muta la lista compartida. La función no tiene una sentencia `return`, por lo que devuelve `None`, pero el cambio en la lista sigue siendo visible para quien llama.

Reasignar el parámetro local tiene un efecto diferente:

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

La asignación hace que el nombre local `items` se refiera a una nueva lista. No cambia la lista original ni reasigna la variable `groceries` del llamador.

## Devolver una nueva lista

Una función puede crear y devolver una nueva lista en lugar de mutar la que se suministra. El operador `+` concatena listas, creando una nueva lista externa que contiene sus elementos:

```py
def with_extra_item(items):
    return items + ['eggs']

groceries = ['milk']
alias = groceries

groceries = with_extra_item(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk']
print(groceries is alias) # False
```

El llamador asigna la lista devuelta a `groceries`. El nombre `alias` todavía se refiere a la lista original. Llamar a la función sin asignar o usar su valor de retorno dejaría a `groceries` refiriéndose también a esa lista original.

La concatenación crea una nueva lista externa, pero no copia ningún objeto anidado. Si un elemento es a su vez una lista, la nueva lista externa contiene una referencia a esa misma lista interna.

## Comparar `+` y `+=` para listas

Para listas integradas, `items = items + [...]` crea una nueva lista y reasigna `items`. En cambio, `items += [...]` extiende la lista existente en su lugar:

```py
def add_with_plus(items):
    items = items + ['eggs']

def add_with_plus_equals(items):
    items += ['eggs']

groceries = ['milk']
alias = groceries

add_with_plus(groceries)
print(groceries) # ['milk']
print(alias) # ['milk']

add_with_plus_equals(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
```

En la primera función, solo el nombre local se refiere a la nueva lista. En la segunda, la lista compartida se muta y el nombre local sigue refiriéndose a ella. Por eso `+=` en listas no es intercambiable con suma seguida de asignación cuando existen otras referencias a la lista.

## Usar una lista como argumento predeterminado

Un argumento predeterminado suministra un valor cuando quien llama omite ese argumento. Si usas una lista vacía como predeterminado, Python crea esa lista una vez, cuando se define la función. Las llamadas que omiten el argumento reutilizan la misma lista:

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

La segunda llamada recibe la lista modificada por la primera llamada. Aunque cada llamada tiene su propio nombre local para el parámetro, ese nombre se refiere al mismo objeto predeterminado. La lista no vuelve a estar vacía entre llamadas.

Si cada llamada debe comenzar con una lista nueva cuando no se suministra ninguna, usa `None` como predeterminado y crea la lista dentro de la función:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

Aquí, `items = []` se ejecuta cada vez que el argumento se omite o se pasa explícitamente como `None`, creando una lista nueva para esa llamada.

Aún puedes pasar una lista existente para que se mute:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

groceries = []
add_item('milk', groceries)
add_item('eggs', groceries)
print(groceries) # ['milk', 'eggs']
```

La comprobación `items is None` distingue una lista ausente de una lista vacía suministrada por quien llama. Usar `if not items` también coincidiría con una lista vacía y la reemplazaría por una nueva, por lo que la lista vacía del llamador no recibiría el elemento agregado.

## Repetir referencias a listas anidadas

Has visto cómo la repetición de listas puede crear una lista como `[0] * 3`. La repetición crea una nueva lista externa, pero repite referencias a sus elementos en lugar de copiar esos elementos.

Esto importa cuando el elemento es mutable:

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

La expresión `[[]]` crea una lista interna. Repetirla coloca referencias a esa misma lista interna en las tres posiciones. Mutarla a través de `rows[0]` es visible en todas las posiciones.

Con `numbers = [0] * 3`, asignar `numbers[0] = 1` reemplaza una referencia de elemento; no muta el entero inmutable `0`. Por eso las otras posiciones permanecen en `0`.

Si necesitas listas internas separadas, crea cada una por separado:

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

Más adelante en este módulo, aprenderás cómo las comprensiones de listas pueden crear un número elegido de listas internas separadas.

# --questions--

## --text--

¿Qué hará el siguiente código?

```py
def update(items):
    items.append('b')
    items = ['c']

letters = ['a']
update(letters)
print(letters)
```

## --answers--

`['a']`

### --feedback--

Agregar cambia la lista compartida, mientras que la reasignación cambia solo el nombre local.

---

`['c']`

### --feedback--

Agregar cambia la lista compartida, mientras que la reasignación cambia solo el nombre local.

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

Agregar cambia la lista compartida, mientras que la reasignación cambia solo el nombre local.

## --video-solution--

3

## --text--

Después de `items = ['milk']` y `alias = items`, ¿qué sentencia agrega `'eggs'` a la lista a la que se refiere `alias`?

## --answers--

`items = items + ['eggs']`

### --feedback--

Piensa en qué operación extiende la lista existente en su lugar.

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

Piensa en qué operación extiende la lista existente en su lugar.

---

`items + ['eggs']`

### --feedback--

Piensa en qué operación extiende la lista existente en su lugar.

## --video-solution--

2

## --text--

¿Por qué agregar a `rows[0]` después de `rows = [[]] * 3` hace que las tres posiciones muestren el nuevo elemento?

## --answers--

Cada posición se refiere a la misma lista interna.

---

Python copia automáticamente cada cambio a listas internas separadas.

### --feedback--

La repetición de listas repite referencias a los elementos sin copiar los elementos mismos.

---

El método `append()` siempre cambia todas las listas en un programa.

### --feedback--

La repetición de listas repite referencias a los elementos sin copiar los elementos mismos.

---

El operador de multiplicación ejecuta `append()` tres veces.

### --feedback--

La repetición de listas repite referencias a los elementos sin copiar los elementos mismos.

## --video-solution--

1
