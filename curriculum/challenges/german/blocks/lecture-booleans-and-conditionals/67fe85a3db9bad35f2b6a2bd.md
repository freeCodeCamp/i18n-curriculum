---
id: 67fe85a3db9bad35f2b6a2bd
title: Wie funktionieren bedingte Anweisungen und logische Operatoren?
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

Bedingte Anweisungen, oder Konditionale, ermöglichen es Ihnen, den Ablauf Ihres Programms basierend darauf zu steuern, ob bestimmte Bedingungen wahr oder falsch sind.

Bevor wir jedoch darauf eingehen, sehen wir uns die grundlegenden Bausteine bedingter Anweisungen an, beginnend mit Vergleichsoperatoren. Vergleichsoperatoren sind Operatoren, mit denen Sie zwei oder mehr Werte vergleichen und einen Boolean-Wert zurückgeben können.

In einer vorherigen Lektion haben Sie gelernt, dass Booleans einer der Datentypen in Python sind und nur `True` oder `False` sein können.

Hier ist eine Tabelle mit den Vergleichsoperatoren in Python:

| Operator | Name | Beschreibung |
| --- | --- | --- |
| `==` | Gleich | Prüft, ob zwei Werte gleich sind |
| `!=` | Ungleich | Prüft, ob zwei Werte ungleich sind |
| `>` | Größer als | Prüft, ob der Wert links größer ist als der Wert rechts |
| `<` | Kleiner als | Prüft, ob der Wert links kleiner ist als der Wert rechts |
| `>=` | Größer oder gleich | Prüft, ob der Wert links größer oder gleich dem Wert rechts ist |
| `<=` | Kleiner oder gleich | Prüft, ob der Wert links kleiner oder gleich dem Wert rechts ist |

Hier sind einige dieser Ausdrücke, die zu `True` oder `False` ausgewertet werden:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

Diese Operatoren können in Konditionalen verwendet werden, um Werte zu vergleichen und bestimmten Code auszuführen, je nachdem, ob die Bedingung zu `True` oder `False` ausgewertet wird.

In Python ist die grundlegendste bedingte Anweisung die `if`-Anweisung. Hier ist die grundlegende Syntax:

```python
if condition:
    pass # Code to execute if condition is True
```

* `if`-Anweisungen beginnen mit dem Schlüsselwort `if`.
    
* `condition` ist ein Ausdruck, der zu `True` oder `False` ausgewertet wird, gefolgt von einem Doppelpunkt (`:`).

* Der Körper der `if`-Anweisung bildet einen <dfn>Codeblock</dfn>, eine Gruppe von Anweisungen, die zusammengehören. In Python definiert die Einrückungsebene einen Codeblock.
    
Im obigen Beispiel enthält der Körper der `if`-Anweisung eine `pass`-Anweisung. Wenn eine `pass`-Anweisung ausgeführt wird, passiert nichts. Dies ist ein spezielles Schlüsselwort, das als Platzhalter für zukünftigen Code verwendet werden kann und nützlich ist, wenn leere Codeblöcke nicht erlaubt sind.

Der Code im Körper der `if`-Anweisung wird nur ausgeführt, wenn die Bedingung zu `True` ausgewertet wird. Zum Beispiel:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

Beachten Sie die Einrückung vor `print('You are an adult')`. Während andere Programmiersprachen Zeichen wie geschweifte Klammern verwenden, um Codeblöcke zu definieren, und Einrückungen nur zur Lesbarkeit nutzen, werden in Python Codeblöcke durch Einrückung bestimmt.

Der folgende Code würde einen `IndentationError` auslösen, was in Python bedeutet, dass an einer bestimmten Stelle im Code eine Einrückung erforderlich ist:

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

Obwohl Sie jede Anzahl von Leerzeichen (solange Sie konsistent sind) zur Bestimmung jeder Einrückungsebene verwenden können, empfiehlt der Python-Stil-Guide die Verwendung von vier Leerzeichen.

Blöcke finden sich auch in Schleifen und Funktionen, die Sie in zukünftigen Lektionen kennenlernen werden.

Zurück zu unserem Beispiel: Wenn `age` kleiner als `18` ist, wird nichts im Terminal ausgegeben:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

Aber was, wenn Sie auch etwas ausgeben möchten, wenn `age` kleiner als `18` ist? Hier kommt die `else`-Klausel ins Spiel. Die `else`-Klausel wird ausgeführt, wenn die `if`-Bedingung falsch ist. Hier ist die Syntax für eine `if…else`-Anweisung:

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

Zum Beispiel:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

Beachten Sie, dass Sie keine Anweisungen zwischen dem `if`-Block und der `else`-Klausel platzieren können. Der folgende Code würde einen `SyntaxError` auslösen:

```python
age = 12

if age >= 18:
    print('You are an adult')
print('Almost there!')
else: # SyntaxError: invalid syntax
    print('You are not an adult yet')
```

Es kann Situationen geben, in denen Sie mehrere Bedingungen berücksichtigen möchten. Dafür erlaubt Python, Ihre if-Anweisung mit dem Schlüsselwort `elif` (else if) zu erweitern.

Hier ist die Syntax:

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

Zum Beispiel:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

Beachten Sie, dass Sie beliebig viele `elif`-Klauseln verwenden können:

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

Jetzt, da Sie verstanden haben, wie Vergleichsoperatoren und bedingte Anweisungen in Python funktionieren, können Sie Programme schreiben, die Entscheidungen basierend auf Logik und Eingaben treffen. Ob Sie Werte vergleichen oder durch mehrere Bedingungen verzweigen – diese Werkzeuge sind die Grundlage für das Schreiben flexibler, responsiver Programme.

# --questions--

## --text--

Was machen Vergleichsoperatoren?

## --answers--

Führen mathematische Berechnungen mit Boolean-Werten durch

### --feedback--

Diese Operatoren prüfen Dinge wie Gleichheit oder welcher Wert größer ist, und das Ergebnis ist entweder `True` oder `False`.

---

Konvertieren Strings in Boolean-Werte.

### --feedback--

Diese Operatoren prüfen Dinge wie Gleichheit oder welcher Wert größer ist, und das Ergebnis ist entweder `True` oder `False`.

---

Vergleichen zwei Werte und geben einen Boolean-Wert zurück.

---

Erstellen Schleifen und Iterationen.

### --feedback--

Diese Operatoren prüfen Dinge wie Gleichheit oder welcher Wert größer ist, und das Ergebnis ist entweder `True` oder `False`.

## --video-solution--

3

## --text--

Was wird das Ergebnis für den folgenden Code sein?

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

`You are an adult` wird in der Konsole ausgegeben.

### --feedback--

Überprüfen Sie den letzten Teil der Lektion für die richtige Antwort.

---

`You are a teenager` wird in der Konsole ausgegeben.

### --feedback--

Überprüfen Sie den letzten Teil der Lektion für die richtige Antwort.

---

`You are a child` wird in der Konsole ausgegeben.

---

Ein Fehler wird in der Konsole ausgegeben.

### --feedback--

Überprüfen Sie den letzten Teil der Lektion für die richtige Antwort.

## --video-solution--

3

## --text--

Was wird der Ausdruck `3 >= 4` auswerten?

## --answers--

`True`

### --feedback--

3 ist nicht größer oder gleich 4.

---

`SyntaxError`

### --feedback--

3 ist nicht größer oder gleich 4.

---

`None`

### --feedback--

3 ist nicht größer oder gleich 4.

---

`False`

## --video-solution--

4
