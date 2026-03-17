---
id: 67f39babe1e2ec1fb6eea32a
title: Revisione di dizionari e insiemi
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Dizionari

- **Dizionari**: I dizionari sono strutture dati integrate che archiviano collezioni di coppie chiave-valore. Le chiavi devono essere tipi di dati immutabili. Questa è la sintassi generale di un dizionario Python:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` costruttore**: Il costruttore `dict()` è un modo alternativo per costruire il dizionario. Passi una lista di tuple come argomento al costruttore `dict()`. Queste tuple contengono la chiave come primo elemento e il valore come secondo elemento.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Notazione a parentesi**: Per consultare il valore di una coppia chiave-valore, puoi usare la sintassi nota come notazione a parentesi.

```python
dictionary[key]
```

## Metodi comuni dei dizionari

- **Metodo `get()`**: Il metodo `get()` recupera il valore associato a una chiave. È simile alla notazione a parentesi, ma ti permette di impostare un valore predefinito, evitando errori se la chiave non esiste.

```python
dictionary.get(key, default)
```

- **Metodi `keys()` e `values()`**: I metodi `keys()` e `values()` restituiscono rispettivamente un oggetto vista con tutte le chiavi e tutti i valori nel dizionario. Un oggetto vista è un modo per vedere il contenuto di un dizionario senza creare una copia separata dei dati.

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

- **Metodo `items()`**: Il metodo `items()` restituisce un oggetto vista con tutte le coppie chiave-valore nel dizionario, includendo sia le chiavi sia i valori.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **Metodo `clear()`**: Il metodo `clear()` rimuove tutte le coppie chiave-valore dal dizionario.

```python
pizza.clear()
```

- **Metodo `pop()`**: Il metodo `pop()` rimuove la coppia chiave-valore con la chiave specificata come primo argomento e restituisce il suo valore. Se la chiave non esiste, restituisce il valore predefinito specificato come secondo argomento. Se la chiave non esiste e il valore predefinito non è specificato, viene sollevata un'eccezione `KeyError`.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **Metodo `popitem()`**: In Python 3.7 e versioni successive, il metodo `popitem()` rimuove l'ultimo elemento inserito.

```python
pizza.popitem()
```

- **Metodo `update()`**: Il metodo `update()` aggiorna le coppie chiave-valore con quelle di un altro dizionario. Se hanno chiavi in comune, i loro valori vengono sovrascritti. Le nuove chiavi verranno aggiunte al dizionario come nuove coppie chiave-valore.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Iterare su un dizionario

- **Iterare sui valori**: Se hai bisogno di iterare sui valori in un dizionario, puoi scrivere un loop `for` con `values()` per ottenere tutti i valori di un dizionario.

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

Output:

```md
990
600
250
70
```

- **Iterare sulle chiavi**: Se hai bisogno di iterare sulle chiavi nel dizionario `products` sopra, puoi scrivere `products.keys()` o `products` direttamente.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

Output:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **Iterare sulle coppie chiave-valore**: Se hai bisogno di iterare contemporaneamente sulle chiavi e sui rispettivi valori, puoi iterare su `products.items()`. Ottieni tuple individuali con le chiavi e i rispettivi valori.

```python
for product in products.items():
    print(product)
```

Output:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

Per memorizzare la chiave e il valore in variabili separate nel loop, devi separarli con una virgola. La prima variabile memorizza la chiave, la seconda memorizza il valore.

```python
for product, price in products.items():
    print(product, price)
```

Output:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **Funzione `enumerate()`**: Se hai bisogno di iterare su un dizionario tenendo traccia di un contatore, puoi chiamare la funzione `enumerate()`. La funzione restituisce un oggetto `enumerate`, che assegna un intero a ogni elemento, come un contatore. Puoi iniziare il contatore da qualsiasi numero, ma per impostazione predefinita parte da 0.

Assegnare l'indice e l'elemento a variabili separate nel loop è il modo comune di usare `enumerate()`. Per esempio, con `products.items()` puoi ottenere l'intera coppia chiave-valore oltre all'indice:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

Output:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

Per personalizzare il valore iniziale del contatore, puoi passare un secondo argomento a `enumerate()`. Per esempio, qui iniziamo il conteggio da 1.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

Output:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## Insiemi

- **Insiemi**: Gli insiemi sono strutture dati integrate in Python che non permettono valori duplicati. Gli insiemi sono mutabili e non ordinati, il che significa che i loro elementi non sono archiviati in un ordine specifico, quindi non puoi usare indici o chiavi per consultarli. Inoltre, gli insiemi possono contenere solo valori di tipi di dati immutabili, come numeri, stringhe e tuple.

- **Definire un insieme**: Per definire un insieme, devi scrivere i suoi elementi tra parentesi graffe e separarli con virgole.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Definire un insieme vuoto**: Se hai bisogno di definire un insieme vuoto, devi usare la funzione `set()`. Scrivere solo parentesi graffe vuote creerà automaticamente un dizionario.

```python
set() # Set
{}    # Dictionary
```

## Metodi comuni degli insiemi

- **Metodo `add()`**: Puoi aggiungere un elemento a un insieme con il metodo `add()`, passando il nuovo elemento come argomento.

```python
my_set.add(6)
```

- **Metodi `remove()` e `discard()`**: Per rimuovere un elemento da un insieme, puoi usare il metodo `remove()` oppure il metodo `discard()`, passando l'elemento che vuoi rimuovere come argomento. Il metodo `remove()` solleverà un'eccezione `KeyError` se l'elemento non viene trovato, mentre il metodo `discard()` no.

```python
my_set.remove(4)
my_set.discard(4)
```

- **Metodo `clear()`**: Il metodo `clear()` rimuove tutti gli elementi dall'insieme.

```python
my_set.clear()
```

## Operazioni matematiche sugli insiemi

- **Metodi `issubset()` e `issuperset()`**: I metodi `issubset()` e `issuperset()` verificano se un insieme è un sottoinsieme o un sovrainsieme di un altro insieme, rispettivamente.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **Metodo `isdisjoint()`**: Il metodo `isdisjoint()` verifica se due insiemi sono disgiunti, cioè se non hanno elementi in comune.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **Operatore unione (`|`)**: L'operatore unione `|` restituisce un nuovo insieme con tutti gli elementi di entrambi gli insiemi.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Operatore intersezione (`&`)**: L'operatore intersezione `&` restituisce un nuovo insieme con solo gli elementi che gli insiemi hanno in comune.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Operatore differenza (`-`)**: L'operatore differenza `-` restituisce un nuovo insieme con gli elementi del primo insieme che non sono negli altri insiemi.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Operatore differenza simmetrica (`^`)**: L'operatore differenza simmetrica `^` restituisce un nuovo insieme con gli elementi che sono nel primo o nel secondo insieme, ma non in entrambi.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **Operatore `in`**: Puoi verificare se un elemento è in un insieme o no con l'operatore `in`.

```python
print(5 in my_set) # True
```

## Libreria standard di Python

- **Libreria standard di Python**: Una libreria ti offre codice pre-scritto e riutilizzabile, come funzioni, classi e strutture dati, che puoi riusare nei tuoi progetti. Python ha una libreria standard estesa con moduli integrati che implementano soluzioni standardizzate per molti problemi e attività. Alcuni esempi di moduli integrati popolari sono `math`, `random`, `re` (abbreviazione di "espressioni regolari") e `datetime`.

## Istruzione import

- **Istruzione import**: Per consultare gli elementi definiti nei moduli integrati, usi un'istruzione import. Le istruzioni import sono generalmente scritte all'inizio del file. Funzionano allo stesso modo per funzioni, classi, costanti, variabili e qualsiasi altro elemento definito nel modulo.

- **Istruzione import base**: Puoi usare la parola chiave `import` seguita dal nome del modulo:

```python
import module_name
```

Poi, se hai bisogno di chiamare una funzione da quel modulo, useresti la notazione a punto, con il nome del modulo seguito dal nome della funzione.

```python
module_name.function_name()
```

Per esempio, scriveresti quanto segue nel tuo codice per importare il modulo `math` e ottenere la radice quadrata di 36:

```python
import math

math.sqrt(36)
```

- **Importare un modulo con un nome diverso**: Se hai bisogno di importare il modulo con un nome diverso (noto anche come "alias"), puoi usare `as` seguito dall'alias alla fine dell'istruzione import. Questo è spesso usato per nomi di moduli lunghi o per evitare conflitti di nomi.

```python
import module_name as module_alias
```

Per esempio, per riferirti al modulo `math` come `m` nel tuo codice, puoi assegnare un alias così:

```python
import math as m
```

Poi, puoi consultare gli elementi del modulo usando l'alias:

```python
m.sqrt(36)
```

- **Importare elementi specifici**: Se non ti serve tutto da un modulo, puoi importare elementi specifici usando `from`. In questo caso, l'istruzione import inizia con `from`, seguito dal nome del modulo, poi la parola chiave `import` e infine i nomi degli elementi che vuoi importare.

```python
from module_name import name1, name2
```

Poi, puoi usare questi nomi senza il prefisso del modulo nel tuo script Python. Per esempio:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
Questo è utile, ma può causare conflitti di nomi se hai già funzioni o variabili con lo stesso nome. Tienilo a mente quando scegli quale tipo di istruzione import usare.

Se hai bisogno di assegnare alias a questi nomi, puoi farlo anche usando la parola chiave `as` seguita dall'alias.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Istruzione import con asterisco (`*`)**: L'asterisco dice a Python che vuoi importare tutto in quel modulo, ma vuoi farlo in modo da non dover usare il nome del modulo come prefisso.

```python
from module_name import *
```

Per esempio, se usi questo per importare il modulo `math`, potrai chiamare qualsiasi funzione definita in quel modulo senza specificare il nome del modulo come prefisso.

```python
from math import *
print(sqrt(36))  # 6.0
```

Tuttavia, questo è generalmente sconsigliato perché può portare a collisioni di nomi e rendere più difficile sapere da dove provengono i nomi.

## `if __name__ == '__main__'`

- **Variabile `__name__`**: `__name__` è una variabile integrata speciale in Python. Quando un file Python viene eseguito direttamente, Python imposta il valore di questa variabile alla stringa `"__main__"`. Ma se il file Python viene importato come modulo in un altro script Python, il valore della variabile `__name__` viene impostato al nome di quel modulo.

Per questo motivo troverai spesso questa condizione negli script Python. Contiene il codice che vuoi eseguire **solo** se lo script Python viene eseguito come programma principale.

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

Rivedi gli argomenti e i concetti di dizionari e insiemi.
