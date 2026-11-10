---
id: 6aeaec9c8f05dde6a77e511f
title: Come si comportano le liste condivise in Python?
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

Hai imparato che i nomi si riferiscono agli oggetti e che le liste sono mutabili. Vediamo cosa succede quando più di un nome si riferisce alla stessa lista.

## Confrontare liste uguali e alias

Due liste possono contenere valori uguali senza essere lo stesso oggetto. Ricorda che `==` verifica l'uguaglianza, mentre `is` verifica l'identità:

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

Ogni espressione `['milk']` crea una lista separata. Tuttavia, `alias = items` non crea una copia. Assegna un altro nome alla lista esistente. Chiamiamo questo altro nome alias.

Modificare la lista tramite uno dei due nomi è visibile anche dall'altro:

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

La lista separata `equal_items` rimane invariata.

## Mutare una lista tramite un parametro di funzione

Gli argomenti vengono passati tramite assegnazione. Un parametro è un nome locale inizialmente assegnato all'oggetto fornito dal chiamante. Python non copia automaticamente quell'oggetto.

Qui, il parametro `items` e la variabile del chiamante `groceries` si riferiscono alla stessa lista:

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

Chiamare `append()` muta la lista condivisa. La funzione non ha un'istruzione `return`, quindi restituisce `None`, ma la modifica alla lista è comunque visibile al chiamante.

Riassegnare il parametro locale ha un effetto diverso:

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

L'assegnazione fa sì che il nome locale `items` si riferisca a una nuova lista. Non modifica la lista originale né riassegna la variabile `groceries` del chiamante.

## Restituire una nuova lista

Una funzione può creare e restituire una nuova lista invece di mutare quella fornita. L'operatore `+` concatena le liste, creando una nuova lista esterna contenente i loro elementi:

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

Il chiamante assegna la lista restituita a `groceries`. Il nome `alias` si riferisce ancora alla lista originale. Chiamare la funzione senza assegnare o usare il valore di ritorno lascerebbe `groceries` riferito a quella lista originale.

La concatenazione crea una nuova lista esterna, ma non copia gli oggetti annidati. Se un elemento è a sua volta una lista, la nuova lista esterna contiene un riferimento a quella stessa lista interna.

## Confronto tra `+` e `+=` per le liste

Per le liste integrate, `items = items + [...]` crea una nuova lista e riassegna `items`. Invece, `items += [...]` estende la lista esistente sul posto:

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

Nella prima funzione, solo il nome locale si riferisce alla nuova lista. Nella seconda, la lista condivisa viene mutata e il nome locale continua a riferirsi a essa. Per questo `+=` per le liste non è intercambiabile con l'addizione seguita da assegnazione quando esistono altri riferimenti alla lista.

## Usare una lista come argomento predefinito

Un argomento predefinito fornisce un valore quando il chiamante omette quell'argomento. Se usi una lista vuota come predefinito, Python crea quella lista una sola volta, quando la funzione viene definita. Le chiamate che omettono l'argomento riutilizzano la stessa lista:

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

La seconda chiamata riceve la lista modificata dalla prima chiamata. Anche se ogni chiamata ha il proprio nome locale per il parametro, quel nome si riferisce allo stesso oggetto predefinito. La lista non torna vuota tra le chiamate.

Se ogni chiamata deve iniziare con una lista nuova quando non viene fornita, usa `None` come predefinito e crea la lista dentro la funzione:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

Qui, `items = []` viene eseguito ogni volta che l'argomento è omesso o passato esplicitamente come `None`, creando una nuova lista per quella chiamata.

Puoi comunque passare una lista esistente da mutare:

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

Il controllo `items is None` distingue una lista mancante da una lista vuota fornita dal chiamante. Usare `if not items` corrisponderebbe anche a una lista vuota e la sostituirebbe con una nuova, quindi la lista vuota del chiamante non riceverebbe l'elemento aggiunto.

## Ripetere riferimenti a liste annidate

Hai visto come la ripetizione di liste può creare una lista come `[0] * 3`. La ripetizione crea una nuova lista esterna, ma ripete i riferimenti ai suoi elementi invece di copiarli.

Questo è importante quando l'elemento è mutabile:

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

L'espressione `[[]]` crea una lista interna. Ripeterla mette riferimenti a quella stessa lista interna in tutte e tre le posizioni. Mutarla tramite `rows[0]` è visibile in ogni posizione.

Con `numbers = [0] * 3`, assegnare `numbers[0] = 1` sostituisce un riferimento a un elemento; non muta l'intero immutabile `0`. Per questo le altre posizioni rimangono `0`.

Se ti servono liste interne separate, crea ciascuna separatamente:

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

Più avanti in questo modulo, imparerai come le comprensioni di lista possono creare un numero scelto di liste interne separate.

# --questions--

## --text--

Cosa stamperà il seguente codice?

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

Aggiungere modifica la lista condivisa, mentre la riassegnazione modifica solo il nome locale.

---

`['c']`

### --feedback--

Aggiungere modifica la lista condivisa, mentre la riassegnazione modifica solo il nome locale.

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

Aggiungere modifica la lista condivisa, mentre la riassegnazione modifica solo il nome locale.

## --video-solution--

3

## --text--

Dopo `items = ['milk']` e `alias = items`, quale istruzione aggiunge `'eggs'` alla lista a cui si riferisce `alias`?

## --answers--

`items = items + ['eggs']`

### --feedback--

Pensa a quale operazione estende la lista esistente sul posto.

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

Pensa a quale operazione estende la lista esistente sul posto.

---

`items + ['eggs']`

### --feedback--

Pensa a quale operazione estende la lista esistente sul posto.

## --video-solution--

2

## --text--

Perché aggiungere a `rows[0]` dopo `rows = [[]] * 3` fa sì che tutte e tre le posizioni mostrino il nuovo elemento?

## --answers--

Ogni posizione si riferisce alla stessa lista interna.

---

Python copia automaticamente ogni modifica in liste interne separate.

### --feedback--

La ripetizione di liste ripete i riferimenti agli elementi senza copiarli.

---

Il metodo `append()` cambia sempre ogni lista in un programma.

### --feedback--

La ripetizione di liste ripete i riferimenti agli elementi senza copiarli.

---

L'operatore di moltiplicazione esegue `append()` tre volte.

### --feedback--

La ripetizione di liste ripete i riferimenti agli elementi senza copiarli.

## --video-solution--

1
