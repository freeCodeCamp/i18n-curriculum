---
id: 6aeaec9c8f05dde6a77e511f
title: Wie verhalten sich geteilte Listen in Python?
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

Sie haben gelernt, dass Namen sich auf Objekte beziehen und dass Listen veränderbar sind. Schauen wir uns an, was passiert, wenn mehr als ein Name sich auf dieselbe Liste bezieht.

## Gleichwertige Listen und Aliase vergleichen

Zwei Listen können gleiche Werte enthalten, ohne dass sie dasselbe Objekt sind. Denken Sie daran, dass `==` Gleichheit prüft, während `is` Identität prüft:

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

Jeder Ausdruck `['milk']` erzeugt eine separate Liste. `alias = items` hingegen erstellt keine Kopie. Es bindet einen weiteren Namen an die bestehende Liste. Diesen weiteren Namen nennen wir Alias.

Eine Änderung der Liste über einen der Namen ist auch über den anderen sichtbar:

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

Die separate Liste `equal_items` bleibt unverändert.

## Eine Liste über einen Funktionsparameter verändern

Argumente werden durch Zuweisung übergeben. Ein Parameter ist ein lokaler Name, der zunächst an das vom Aufrufer übergebene Objekt gebunden ist. Python kopiert dieses Objekt nicht automatisch.

Hier beziehen sich der Parameter `items` und die Variable `groceries` des Aufrufers auf dieselbe Liste:

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

Der Aufruf von `append()` verändert die geteilte Liste. Die Funktion hat keine `return`-Anweisung, daher gibt sie `None` zurück, aber die Änderung an der Liste ist für den Aufrufer sichtbar.

Eine Neu-Zuweisung des lokalen Parameters hat eine andere Wirkung:

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

Die Zuweisung lässt den lokalen Namen `items` auf eine neue Liste verweisen. Sie ändert nicht die ursprüngliche Liste und weist die Variable `groceries` des Aufrufers nicht neu zu.

## Eine neue Liste zurückgeben

Eine Funktion kann eine neue Liste erzeugen und zurückgeben, anstatt die übergebene zu verändern. Der Operator `+` verknüpft Listen, indem er eine neue äußere Liste mit deren Elementen erstellt:

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

Der Aufrufer weist die zurückgegebene Liste `groceries` zu. Der Name `alias` verweist weiterhin auf die ursprüngliche Liste. Ein Funktionsaufruf ohne Zuweisung oder anderweitige Verwendung des Rückgabewerts würde `groceries` ebenfalls auf die ursprüngliche Liste verweisen lassen.

Die Verkettung erzeugt eine neue äußere Liste, kopiert aber keine verschachtelten Objekte. Wenn ein Element selbst eine Liste ist, enthält die neue äußere Liste eine Referenz auf dieselbe innere Liste.

## Vergleich von `+` und `+=` bei Listen

Bei eingebauten Listen erzeugt `items = items + [...]` eine neue Liste und weist `items` neu zu. Im Gegensatz dazu erweitert `items += [...]` die bestehende Liste direkt vor Ort:

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

In der ersten Funktion verweist nur der lokale Name auf die neue Liste. In der zweiten wird die geteilte Liste verändert, und der lokale Name verweist weiterhin darauf. Deshalb ist `+=` bei Listen nicht austauschbar mit Addition gefolgt von Zuweisung, wenn andere Referenzen auf die Liste existieren.

## Eine Liste als Standardargument verwenden

Ein Standardargument liefert einen Wert, wenn der Aufrufer dieses Argument weglässt. Wenn Sie eine leere Liste als Standard verwenden, erstellt Python diese Liste einmal, wenn die Funktion definiert wird. Aufrufe, die das Argument weglassen, verwenden dieselbe Liste wieder:

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

Der zweite Aufruf erhält die Liste, die durch den ersten Aufruf verändert wurde. Obwohl jeder Aufruf seinen eigenen lokalen Parameternamen hat, verweist dieser auf dasselbe Standardobjekt. Die Liste wird zwischen den Aufrufen nicht wieder leer.

Wenn jeder Aufruf mit einer frischen Liste starten soll, wenn keine Liste übergeben wird, verwenden Sie `None` als Standard und erstellen die Liste innerhalb der Funktion:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

Hier wird `items = []` jedes Mal ausgeführt, wenn das Argument weggelassen oder explizit als `None` übergeben wird, wodurch für diesen Aufruf eine neue Liste entsteht.

Sie können weiterhin eine bestehende Liste übergeben, die verändert werden soll:

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

Die Prüfung `items is None` unterscheidet eine fehlende Liste von einer leeren Liste, die der Aufrufer übergibt. Die Verwendung von `if not items` würde auch eine leere Liste erfassen und durch eine neue ersetzen, sodass die leere Liste des Aufrufers das hinzugefügte Element nicht erhalten würde.

## Wiederholte Referenzen auf verschachtelte Listen

Sie haben gesehen, wie Listenwiederholung eine Liste wie `[0] * 3` erzeugen kann. Die Wiederholung erzeugt eine neue äußere Liste, wiederholt aber Referenzen auf ihre Elemente, anstatt diese Elemente zu kopieren.

Das ist wichtig, wenn das Element veränderbar ist:

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

Der Ausdruck `[[]]` erzeugt eine innere Liste. Die Wiederholung platziert Referenzen auf dieselbe innere Liste an allen drei Positionen. Eine Veränderung über `rows[0]` ist an jeder Position sichtbar.

Bei `numbers = [0] * 3` ersetzt die Zuweisung `numbers[0] = 1` eine Elementreferenz; sie verändert nicht die unveränderliche Ganzzahl `0`. Deshalb bleiben die anderen Positionen `0`.

Wenn Sie separate innere Listen benötigen, erstellen Sie jede einzeln:

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

Später in diesem Modul lernen Sie, wie List Comprehensions eine gewünschte Anzahl separater innerer Listen erzeugen können.

# --questions--

## --text--

Was wird der folgende Code ausgeben?

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

Anhängen verändert die geteilte Liste, während eine Neu-Zuweisung nur den lokalen Namen ändert.

---

`['c']`

### --feedback--

Anhängen verändert die geteilte Liste, während eine Neu-Zuweisung nur den lokalen Namen ändert.

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

Anhängen verändert die geteilte Liste, während eine Neu-Zuweisung nur den lokalen Namen ändert.

## --video-solution--

3

## --text--

Nach `items = ['milk']` und `alias = items`, welche Anweisung fügt `'eggs'` zu der Liste hinzu, auf die `alias` verweist?

## --answers--

`items = items + ['eggs']`

### --feedback--

Überlegen Sie, welche Operation die bestehende Liste vor Ort erweitert.

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

Überlegen Sie, welche Operation die bestehende Liste vor Ort erweitert.

---

`items + ['eggs']`

### --feedback--

Überlegen Sie, welche Operation die bestehende Liste vor Ort erweitert.

## --video-solution--

2

## --text--

Warum bewirkt das Anhängen an `rows[0]` nach `rows = [[]] * 3`, dass alle drei Positionen das neue Element anzeigen?

## --answers--

Jede Position verweist auf dieselbe innere Liste.

---

Python kopiert jede Änderung automatisch in separate innere Listen.

### --feedback--

Listenwiederholung wiederholt Referenzen auf die Elemente, ohne die Elemente selbst zu kopieren.

---

Die Methode `append()` verändert immer jede Liste in einem Programm.

### --feedback--

Listenwiederholung wiederholt Referenzen auf die Elemente, ohne die Elemente selbst zu kopieren.

---

Der Multiplikationsoperator führt `append()` dreimal aus.

### --feedback--

Listenwiederholung wiederholt Referenzen auf die Elemente, ohne die Elemente selbst zu kopieren.

## --video-solution--

1
