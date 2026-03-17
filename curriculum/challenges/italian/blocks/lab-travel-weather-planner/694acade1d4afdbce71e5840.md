---
id: 694acade1d4afdbce71e5840
title: crea un pianificatore meteo per viaggi
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

Per questo laboratorio, userai istruzioni condizionali per determinare se è possibile spostarsi in base al meteo, alla distanza da percorrere e alla disponibilità di un veicolo.

**Obiettivo:** Completa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

1. Dovresti creare le seguenti variabili:
   * `distance_mi` (un numero che rappresenta la distanza da percorrere in miglia)
   * `is_raining` (un booleano che indica se l’utente sta attualmente vivendo una giornata piovosa)
   * `has_bike` (un booleano che indica se l’utente ha una bicicletta)
   * `has_car` (un booleano che indica se l’utente ha un’auto)
   * `has_ride_share_app` (un booleano che indica se l’utente ha un’app che permette di richiedere un passaggio)
1. Dovresti usare istruzioni condizionali per determinare se è possibile spostarsi in base ai valori di queste variabili.
1. Dovresti usare istruzioni `if`, `elif` e `else` per valutare le categorie di distanza in ordine crescente.
1. Se `distance_mi` è un valore falsy:
   * Dovresti stampare `False`.
1. Se la distanza è **minore o uguale a 1 miglio**:
   * Dovresti stampare `True` solo se **non sta piovendo**.
   * Altrimenti, dovresti stampare `False`.
1. Se la distanza è **maggiore di 1 miglio e minore o uguale a 6 miglia**:
   * Dovresti stampare `True` solo se la persona ha una bici **e** non sta piovendo.
   * Altrimenti, dovresti stampare `False`.
1. Se la distanza è **maggiore di 6 miglia**:
   * Dovresti stampare `True` se la persona ha un’auto **o** ha un’app per il ride-share.
   * Altrimenti, dovresti stampare `False`. 

# --hints--

Dovresti avere una variabile chiamata `distance_mi`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

Dovresti assegnare un numero alla tua variabile `distance_mi`.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

Dovresti avere una variabile chiamata `is_raining`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

Dovresti assegnare un booleano alla tua variabile `is_raining`.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

Dovresti avere una variabile chiamata `has_bike`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

Dovresti assegnare un booleano alla tua variabile `has_bike`.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

Dovresti avere una variabile chiamata `has_car`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

Dovresti assegnare un booleano alla tua variabile `has_car`.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

Dovresti avere una variabile chiamata `has_ride_share_app`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

Dovresti assegnare un booleano alla tua variabile `has_ride_share_app`.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

Dovresti usare almeno un’istruzione `if`.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

Dovresti usare almeno un ramo `elif` nel tuo programma.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
elifs = []

for node in ast.walk(tree):
    if isinstance(node, ast.If) and node.orelse:
        if isinstance(node.orelse[0], ast.If):
            elifs.append(node)

assert len(elifs) >= 1
`) })
```

Dovresti usare almeno un operatore booleano (`and`, `or` o `not`) nel tuo codice.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)

bool_ops = [
    node for node in ast.walk(tree)
    if isinstance(node, (ast.BoolOp, ast.UnaryOp))
]

assert len(bool_ops) >= 1
`) })
```

Dovresti usare la funzione `print()` per mostrare il risultato.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

Quando `distance_mi` è un valore falsy, il programma dovrebbe stampare `False`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 0,
        "is_raining": False,
        "has_bike": True,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)

run_case(
    {
        "distance_mi": 0.0,
        "is_raining": False,
        "has_bike": True,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)
`) })
```

Quando la distanza è `1` miglio o meno e non sta piovendo, il programma dovrebbe stampare `True`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 0.5,
        "is_raining": False,
        "has_bike": False,
        "has_car": False,
        "has_ride_share_app": False
    },
    "True"
)

run_case(
    {
        "distance_mi": 1,
        "is_raining": False,
        "has_bike": False,
        "has_car": False,
        "has_ride_share_app": False
    },
    "True"
)
`) })
```

Quando la distanza è `1` miglio o meno e sta piovendo, il programma dovrebbe stampare `False`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 0.5,
        "is_raining": True,
        "has_bike": False,
        "has_car": False,
        "has_ride_share_app": False
    },
    "False"
)

run_case(
    {
        "distance_mi": 1,
        "is_raining": True,
        "has_bike": False,
        "has_car": False,
        "has_ride_share_app": False
    },
    "False"
)
`) })
```

Quando la distanza è tra `1` miglio (escluso) e `6` miglia (incluso), e sta piovendo senza bici, il programma dovrebbe stampare `False`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 2,
        "is_raining": True,
        "has_bike": False,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)

run_case(
    {
        "distance_mi": 4,
        "is_raining": True,
        "has_bike": False,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)

run_case(
    {
        "distance_mi": 6,
        "is_raining": True,
        "has_bike": False,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)
`) })
```

Quando la distanza è tra `1` miglio (escluso) e `6` miglia (incluso), non sta piovendo ma non c’è bici disponibile, il programma dovrebbe stampare `False`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 2,
        "is_raining": False,
        "has_bike": False,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)

run_case(
    {
        "distance_mi": 5,
        "is_raining": False,
        "has_bike": False,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)

run_case(
    {
        "distance_mi": 6,
        "is_raining": False,
        "has_bike": False,
        "has_car": True,
        "has_ride_share_app": True
    },
    "False"
)
`) })
```

Quando la distanza è tra `1` miglio (escluso) e `6` miglia (incluso), c’è una bici disponibile e non sta piovendo, il programma dovrebbe stampare `True`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 2,
        "is_raining": False,
        "has_bike": True,
        "has_car": False,
        "has_ride_share_app": False
    },
    "True"
)
run_case(
    {
        "distance_mi": 5,
        "is_raining": False,
        "has_bike": True,
        "has_car": False,
        "has_ride_share_app": False
    },
    "True"
)
run_case(
    {
        "distance_mi": 6,
        "is_raining": False,
        "has_bike": True,
        "has_car": False,
        "has_ride_share_app": False
    },
    "True"
)
`) })
```

Quando la distanza è maggiore di `6` miglia e c’è un’app per il ride-share, il programma dovrebbe stampare `True`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 12,
        "is_raining": False,
        "has_bike": False,
        "has_car": False,
        "has_ride_share_app": True
    },
    "True"
)
`) })
```

Quando la distanza è maggiore di `6` miglia e c’è un’auto disponibile, il programma dovrebbe stampare `True`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 12,
        "is_raining": False,
        "has_bike": True,
        "has_car": True,
        "has_ride_share_app": False
    },
    "True"
)
`) })
```

Quando la distanza è maggiore di `6` miglia e non c’è né un’auto né un’app per il ride-share, il programma dovrebbe stampare `False`.

```js
({ test: () => runPython(`
import ast, io, contextlib

VARIABLES = {
    "distance_mi",
    "is_raining",
    "has_bike",
    "has_car",
    "has_ride_share_app"
}

def run_case(env, expected):
    tree = ast.parse(_code)

    tree.body = [
        node for node in tree.body
        if not (
            isinstance(node, ast.Assign)
            and isinstance(node.targets[0], ast.Name)
            and node.targets[0].id in VARIABLES
        )
    ]

    clean_code = compile(tree, "<ast>", "exec")

    buffer = io.StringIO()
    with contextlib.redirect_stdout(buffer):
        exec(clean_code, env)

    assert buffer.getvalue().strip() == expected


run_case(
    {
        "distance_mi": 12,
        "is_raining": False,
        "has_bike": True,
        "has_car": False,
        "has_ride_share_app": False
    },
    "False"
)
`) })
```

# --seed--

## --seed-contents--

```py

```

# --solutions--

```py
distance_mi = 12
is_raining = False
has_bike = False
has_car = False
has_ride_share_app = True

if not distance_mi:
    print(False)

elif distance_mi <= 1:
    print(not is_raining)

elif distance_mi <= 6:
    print(has_bike and not is_raining)

else:
    print(has_car or has_ride_share_app)
```
