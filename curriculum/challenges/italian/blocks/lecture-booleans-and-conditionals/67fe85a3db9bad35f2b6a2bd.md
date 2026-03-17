---
id: 67fe85a3db9bad35f2b6a2bd
title: Come funzionano le istruzioni condizionali e gli operatori logici?
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

Le istruzioni condizionali, o condizionali, ti permettono di controllare il flusso del programma in base al fatto che certe condizioni siano vere o false.

Ma prima di entrare nel dettaglio, vediamo i blocchi fondamentali delle istruzioni condizionali, a partire dagli operatori di confronto. Gli operatori di confronto sono operatori che ti permettono di confrontare due o più valori e restituiscono un valore booleano.

In una lezione precedente, hai imparato che i booleani sono uno dei tipi di dato in Python e possono essere solo `True` o `False`.

Ecco una tabella con gli operatori di confronto in Python:

| Operatore | Nome | Descrizione |
| --- | --- | --- |
| `==` | Uguale | Controlla se due valori sono uguali |
| `!=` | Diverso | Controlla se due valori non sono uguali |
| `>` | Maggiore di | Controlla se il valore a sinistra è maggiore del valore a destra |
| `<` | Minore di | Controlla se il valore a sinistra è minore del valore a destra |
| `>=` | Maggiore o uguale | Controlla se il valore a sinistra è maggiore o uguale al valore a destra |
| `<=` | Minore o uguale | Controlla se il valore a sinistra è minore o uguale al valore a destra |

Ecco alcune di quelle espressioni che valutano a `True` o `False`:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

Questi operatori possono essere usati nelle istruzioni condizionali per confrontare valori ed eseguire del codice in base al fatto che la condizione valuti a `True` o `False`.

In Python, la condizione più semplice è l’istruzione `if`. Ecco la sintassi base:

```python
if condition:
    pass # Code to execute if condition is True
```

* Le istruzioni `if` iniziano con la parola chiave `if`.
    
* `condition` è un’espressione che valuta a `True` o `False`, seguita da due punti (`:`).

* Il corpo dell’istruzione `if` costituisce un <dfn>blocco di codice</dfn>, cioè un gruppo di istruzioni che stanno insieme. In Python, il livello di indentazione definisce un blocco di codice.
    
Nell’esempio sopra, il corpo dell’istruzione `if` contiene un’istruzione `pass`. Quando viene eseguita un’istruzione `pass`, non succede nulla. Questa è una parola chiave speciale che può essere usata come segnaposto per codice futuro ed è utile quando non sono permessi blocchi di codice vuoti.

Il codice all’interno del corpo dell’istruzione `if` viene eseguito solo quando la condizione valuta a `True`. Per esempio:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

Nota l’indentazione prima di `print('You are an adult')`. Mentre altri linguaggi di programmazione usano caratteri come le parentesi graffe per definire i blocchi di codice e usano l’indentazione solo per leggibilità, in Python i blocchi di codice sono determinati dall’indentazione.

Il codice seguente genererebbe un `IndentationError`, che è il modo di Python per segnalare che è richiesta l’indentazione in un certo punto del codice:

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

Anche se puoi usare qualsiasi numero di spazi (purché tu sia coerente) per definire ogni livello di indentazione, la guida di stile di Python raccomanda di usare quattro spazi.

I blocchi si trovano anche nei loop e nelle funzioni, che imparerai nelle lezioni future.

Tornando al nostro esempio, se `age` è qualsiasi valore inferiore a `18`, non viene stampato nulla nel terminale:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

Ma cosa succede se vuoi anche stampare qualcosa se `age` è minore di `18`? Qui entra in gioco la clausola `else`. La clausola `else` viene eseguita quando la condizione `if` è falsa. Ecco la sintassi per un’istruzione `if…else`:

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

Per esempio:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

Nota che non puoi inserire istruzioni tra il blocco `if` e la clausola `else`. Il codice seguente genererebbe un `SyntaxError`:

```python
age = 12

if age >= 18:
    print('You are an adult')
print('Almost there!')
else: # SyntaxError: invalid syntax
    print('You are not an adult yet')
```

Potrebbero esserci situazioni in cui vuoi considerare condizioni multiple. Per farlo, Python ti permette di estendere la tua istruzione if con la parola chiave `elif` (else if).

Ecco la sintassi:

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

Per esempio:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

Nota che puoi usare quante istruzioni `elif` vuoi:

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

Ora che hai capito come funzionano gli operatori di confronto e le istruzioni condizionali in Python, puoi iniziare a scrivere programmi che prendono decisioni basate sulla logica e sugli input. Che tu stia confrontando valori o gestendo più condizioni, questi strumenti sono la base per scrivere codice flessibile e responsivo.

# --questions--

## --text--

Cosa fanno gli operatori di confronto?

## --answers--

Eseguono calcoli matematici con valori booleani

### --feedback--

Questi operatori controllano cose come l’uguaglianza o quale valore è maggiore, e il risultato è sempre `True` o `False`.

---

Convertire stringhe in valori booleani.

### --feedback--

Questi operatori controllano cose come l’uguaglianza o quale valore è maggiore, e il risultato è sempre `True` o `False`.

---

Confrontano due valori e restituiscono un valore booleano.

---

Creano loop e iterazioni.

### --feedback--

Questi operatori controllano cose come l’uguaglianza o quale valore è maggiore, e il risultato è sempre `True` o `False`.

## --video-solution--

3

## --text--

Quale sarà il risultato del seguente codice?

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

`You are an adult` verrà stampato nella console.

### --feedback--

Rivedi l’ultima parte della lezione per la risposta corretta.

---

`You are a teenager` verrà stampato nella console.

### --feedback--

Rivedi l’ultima parte della lezione per la risposta corretta.

---

`You are a child` verrà stampato nella console.

---

Verrà stampato un errore nella console.

### --feedback--

Rivedi l’ultima parte della lezione per la risposta corretta.

## --video-solution--

3

## --text--

A cosa valuterà l’espressione `3 >= 4`?

## --answers--

`True`

### --feedback--

3 non è maggiore o uguale a 4.

---

`SyntaxError`

### --feedback--

3 non è maggiore o uguale a 4.

---

`None`

### --feedback--

3 non è maggiore o uguale a 4.

---

`False`

## --video-solution--

4
