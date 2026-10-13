---
id: 67f39babe1e2ec1fb6eea32a
title: Überprüfung von Dictionaries und Sets
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Dictionaries

- **Dictionaries**: Dictionaries sind eingebaute Datenstrukturen, die Sammlungen von Schlüssel-Wert-Paaren speichern. Schlüssel müssen unveränderliche Datentypen sein. Dies ist die allgemeine Syntax eines Python-Dictionaries:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()`-Konstruktor**: Der `dict()`-Konstruktor ist eine alternative Möglichkeit, ein Dictionary zu erstellen. Sie übergeben eine Liste von Tuples als Argument an den `dict()`-Konstruktor. Diese Tuples enthalten den Schlüssel als erstes Element und den Wert als zweites Element.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Klammernotation**: Um auf den Wert eines Schlüssel-Wert-Paares zuzugreifen, können Sie die Syntax verwenden, die als Klammernotation bekannt ist.

```python
dictionary[key]
```

## Häufige Dictionary-Methoden

- **`get()`-Methode**: Die `get()`-Methode ruft den Wert ab, der mit einem Schlüssel verknüpft ist. Sie ist ähnlich wie die Klammernotation, ermöglicht es Ihnen jedoch, einen Standardwert festzulegen, um Fehler zu vermeiden, falls der Schlüssel nicht existiert.

```python
dictionary.get(key, default)
```

- **`keys()`- und `values()`-Methoden**: Die `keys()`- und `values()`-Methoden geben jeweils ein View-Objekt mit allen Schlüsseln und Werten im Dictionary zurück. Ein View-Objekt ist eine Möglichkeit, den Inhalt eines Dictionaries zu sehen, ohne eine separate Kopie der Daten zu erstellen.

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

- **`items()`-Methode**: Die `items()`-Methode gibt ein View-Objekt mit allen Schlüssel-Wert-Paaren im Dictionary zurück, einschließlich der Schlüssel und Werte.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()`-Methode**: Die `clear()`-Methode entfernt alle Schlüssel-Wert-Paare aus dem Dictionary.

```python
pizza.clear()
```

- **`pop()`-Methode**: Die `pop()`-Methode entfernt das Schlüssel-Wert-Paar mit dem als erstem Argument angegebenen Schlüssel und gibt dessen Wert zurück. Wenn der Schlüssel nicht existiert, wird der als zweites Argument angegebene Standardwert zurückgegeben. Wenn der Schlüssel nicht existiert und kein Standardwert angegeben ist, wird ein `KeyError` ausgelöst.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()`-Methode**: In Python 3.7 und höher entfernt die `popitem()`-Methode das zuletzt eingefügte Element.

```python
pizza.popitem()
```

- **`update()`-Methode**: Die `update()`-Methode aktualisiert die Schlüssel-Wert-Paare mit den Schlüssel-Wert-Paaren eines anderen Dictionaries. Wenn Schlüssel gemeinsam sind, werden deren Werte überschrieben. Neue Schlüssel werden als neue Schlüssel-Wert-Paare zum Dictionary hinzugefügt.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Über ein Dictionary iterieren

- **Über Werte iterieren**: Wenn Sie über die Werte in einem Dictionary iterieren müssen, können Sie eine `for`-Schleife mit `values()` schreiben, um alle Werte eines Dictionaries zu erhalten.

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

Ausgabe:

```md
990
600
250
70
```

- **Über Schlüssel iterieren**: Wenn Sie über die Schlüssel im oben genannten `products`-Dictionary iterieren müssen, können Sie `products.keys()` oder `products` direkt schreiben.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

Ausgabe:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **Über Schlüssel-Wert-Paare iterieren**: Wenn Sie gleichzeitig über die Schlüssel und deren zugehörige Werte iterieren müssen, können Sie über `products.items()` iterieren. Sie erhalten einzelne Tuples mit den Schlüsseln und deren zugehörigen Werten.

```python
for product in products.items():
    print(product)
```

Ausgabe:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

Um den Schlüssel und den Wert in separaten Schleifenvariablen zu speichern, müssen Sie sie mit einem Komma trennen. Die erste Variable speichert den Schlüssel, die zweite den Wert.

```python
for product, price in products.items():
    print(product, price)
```

Ausgabe:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **`enumerate()`-Funktion**: Wenn Sie über ein Dictionary iterieren müssen und dabei einen Zähler verfolgen wollen, können Sie die `enumerate()`-Funktion aufrufen. Die Funktion gibt ein `enumerate`-Objekt zurück, das jedem Element eine ganze Zahl als Zähler zuweist. Sie können den Zähler bei jeder Zahl starten lassen, standardmäßig beginnt er bei 0.

Das Zuweisen von Index und Element zu separaten Schleifenvariablen ist die übliche Verwendung von `enumerate()`. Zum Beispiel können Sie mit `products.items()` das gesamte Schlüssel-Wert-Paar zusätzlich zum Index erhalten:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

Ausgabe:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

Um den Anfangswert der Zählung anzupassen, können Sie der `enumerate()`-Funktion ein zweites Argument übergeben. Hier starten wir die Zählung bei 1.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

Ausgabe:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## Sets

- **Sets**: Sets sind eingebaute Datenstrukturen in Python, die keine doppelten Werte zulassen. Sets sind veränderlich und ungeordnet, was bedeutet, dass ihre Elemente nicht in einer bestimmten Reihenfolge gespeichert werden, sodass Sie nicht mit Indizes oder Schlüsseln darauf zugreifen können. Außerdem können Sets nur Werte unveränderlicher Datentypen enthalten, wie Zahlen, Strings und Tuples.

- **Ein Set definieren**: Um ein Set zu definieren, schreiben Sie seine Elemente innerhalb geschweifter Klammern und trennen sie mit Kommas.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Ein leeres Set definieren**: Wenn Sie ein leeres Set definieren müssen, müssen Sie die `set()`-Funktion verwenden. Nur leere geschweifte Klammern zu schreiben, erzeugt automatisch ein Dictionary.

```python
set() # Set
{}    # Dictionary
```

## Häufige Set-Methoden

- **`add()`-Methode**: Sie können ein Element mit der `add()`-Methode zu einem Set hinzufügen, indem Sie das neue Element als Argument übergeben.

```python
my_set.add(6)
```

- **`remove()`- und `discard()`-Methoden**: Um ein Element aus einem Set zu entfernen, können Sie entweder die `remove()`-Methode oder die `discard()`-Methode verwenden, wobei Sie das zu entfernende Element als Argument übergeben. Die `remove()`-Methode löst einen `KeyError` aus, wenn das Element nicht gefunden wird, während die `discard()`-Methode dies nicht tut.

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()`-Methode**: Die `clear()`-Methode entfernt alle Elemente aus dem Set.

```python
my_set.clear()
```

## Mathematische Mengenoperationen

- **`issubset()`- und `issuperset()`-Methoden**: Die `issubset()`- und `issuperset()`-Methoden prüfen, ob ein Set eine Teilmenge oder Obermenge eines anderen Sets ist.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()`-Methode**: Die `isdisjoint()`-Methode prüft, ob zwei Sets disjunkt sind, also keine gemeinsamen Elemente haben.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **Vereinigungsoperator (`|`)**: Der Vereinigungsoperator `|` gibt ein neues Set mit allen Elementen beider Sets zurück.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Schnittmengenoperator (`&`)**: Der Schnittmengenoperator `&` gibt ein neues Set mit nur den Elementen zurück, die beide Sets gemeinsam haben.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Differenzoperator (`-`)**: Der Differenzoperator `-` gibt ein neues Set mit den Elementen des ersten Sets zurück, die nicht im anderen Set sind.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Symmetrischer Differenzoperator (`^`)**: Der symmetrische Differenzoperator `^` gibt ein neues Set mit den Elementen zurück, die entweder im ersten oder im zweiten Set, aber nicht in beiden sind.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **`in`-Operator**: Sie können mit dem `in`-Operator prüfen, ob ein Element in einem Set enthalten ist oder nicht.

```python
print(5 in my_set) # True
```

## Python-Standardbibliothek

- **Python-Standardbibliothek**: Eine Bibliothek bietet Ihnen vorgefertigten und wiederverwendbaren Code, wie Funktionen, Klassen und Datenstrukturen, die Sie in Ihren Projekten verwenden können. Python verfügt über eine umfangreiche Standardbibliothek mit eingebauten Modulen, die standardisierte Lösungen für viele Probleme und Aufgaben implementieren. Einige Beispiele für beliebte eingebaute Module sind `math`, `random`, `re` (Abkürzung für „reguläre Ausdrücke“) und `datetime`.

## Import-Anweisung

- **Import-Anweisung**: Um auf die in eingebauten Modulen definierten Elemente zuzugreifen, verwenden Sie eine Import-Anweisung. Import-Anweisungen werden in der Regel am Anfang der Datei geschrieben. Import-Anweisungen funktionieren gleich für Funktionen, Klassen, Konstanten, Variablen und alle anderen im Modul definierten Elemente.

- **Einfache Import-Anweisung**: Sie können das Schlüsselwort `import` gefolgt vom Namen des Moduls verwenden:

```python
import module_name
```

Wenn Sie dann eine Funktion aus diesem Modul aufrufen müssen, verwenden Sie die Punktnotation mit dem Namen des Moduls, gefolgt vom Namen der Funktion.

```python
module_name.function_name()
```

Zum Beispiel würden Sie in Ihrem Code Folgendes schreiben, um das Modul `math` zu importieren und die Quadratwurzel von 36 zu erhalten:

```python
import math

math.sqrt(36)
```

- **Importieren eines Moduls unter einem anderen Namen**: Wenn Sie ein Modul unter einem anderen Namen importieren müssen (auch als „Alias“ bezeichnet), können Sie `as` gefolgt vom Alias am Ende der Import-Anweisung verwenden. Dies wird oft für lange Modulnamen oder zur Vermeidung von Namenskonflikten genutzt.

```python
import module_name as module_alias
```

Zum Beispiel können Sie das Modul `math` in Ihrem Code als `m` bezeichnen, indem Sie einen Alias so zuweisen:

```python
import math as m
```

Dann können Sie auf die Elemente des Moduls mit dem Alias zugreifen:

```python
m.sqrt(36)
```

- **Importieren bestimmter Elemente**: Wenn Sie nicht alles aus einem Modul benötigen, können Sie bestimmte Elemente mit `from` importieren. In diesem Fall beginnt die Import-Anweisung mit `from`, gefolgt vom Modulnamen, dann dem Schlüsselwort `import` und schließlich den Namen der zu importierenden Elemente.

```python
from module_name import name1, name2
```

Dann können Sie diese Namen ohne das Modulpräfix in Ihrem Python-Skript verwenden. Zum Beispiel:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
Das ist hilfreich, kann aber zu Namenskonflikten führen, wenn Sie bereits Funktionen oder Variablen mit demselben Namen haben. Behalten Sie das im Hinterkopf, wenn Sie entscheiden, welche Art von Import-Anweisung Sie verwenden möchten.

Wenn Sie diesen Namen Aliase zuweisen müssen, können Sie dies ebenfalls tun, indem Sie das Schlüsselwort `as` gefolgt vom Alias verwenden.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Import-Anweisung mit Sternchen (`*`)**: Das Sternchen sagt Python, dass Sie alles in diesem Modul importieren möchten, aber so, dass Sie den Namen des Moduls nicht als Präfix verwenden müssen.

```python
from module_name import *
```

Zum Beispiel, wenn Sie dies verwenden, um das Modul `math` zu importieren, können Sie jede Funktion, die in diesem Modul definiert ist, aufrufen, ohne den Namen des Moduls als Präfix anzugeben.

```python
from math import *
print(sqrt(36))  # 6.0
```

Dies wird jedoch allgemein nicht empfohlen, da es zu Namensraumkollisionen führen und es schwieriger machen kann, zu wissen, woher Namen stammen.

## `if __name__ == '__main__'`

- **`__name__`-Variable**: `__name__` ist eine spezielle eingebaute Variable in Python. Wenn eine Python-Datei direkt ausgeführt wird, setzt Python den Wert dieser Variablen auf den String `"__main__"`. Wenn die Python-Datei jedoch als Modul in ein anderes Python-Skript importiert wird, wird der Wert der `__name__`-Variablen auf den Namen dieses Moduls gesetzt.

Deshalb finden Sie diese Bedingung oft in Python-Skripten. Sie enthält den Code, den Sie **nur** ausführen möchten, wenn das Python-Skript als Hauptprogramm läuft.

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

Überprüfen Sie die Themen und Konzepte zu Dictionaries und Sets.
