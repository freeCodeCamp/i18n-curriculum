---
id: 694acade1d4afdbce71e5840
title: Створіть планувальник погоди для подорожей
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

Для цієї лабораторної роботи ви використаєте умовні інструкції, щоб визначити, чи можливо дістатися до місця призначення залежно від погоди, відстані подорожі та наявності транспортного засобу.

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

1. Ви повинні створити такі змінні:
   * `distance_mi` (число, що представляє відстань для подорожі в милях)
   * `is_raining` (булевий, що показує, чи зараз у користувача дощова погода)
   * `has_bike` (булевий, що показує, чи має користувач велосипед)
   * `has_car` (булевий, що показує, чи має користувач автомобіль)
   * `has_ride_share_app` (булевий, що показує, чи має користувач застосунок для замовлення поїздки)
1. Ви повинні використати умовні інструкції, щоб визначити, чи можливо дістатися до місця призначення, базуючись на значеннях цих змінних.
1. Ви повинні використати інструкції `if`, `elif` та `else` для оцінки категорій відстані у зростаючому порядку.
1. Якщо `distance_mi` є хибним значенням:
   * Ви повинні вивести `False`.
1. Якщо відстань **менша або дорівнює 1 милі**:
   * Ви повинні вивести `True` лише якщо **не йде дощ**.
   * Інакше ви повинні вивести `False`.
1. Якщо відстань **більша за 1 милю і менша або дорівнює 6 милям**:
   * Ви повинні вивести `True` лише якщо у людини є велосипед **і** не йде дощ.
   * Інакше ви повинні вивести `False`.
1. Якщо відстань **більша за 6 миль**:
   * Ви повинні вивести `True`, якщо у людини є автомобіль **або** застосунок для замовлення поїздки.
   * Інакше ви повинні вивести `False`. 

# --hints--

Ви повинні мати змінну з іменем `distance_mi`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

Ви повинні призначити число змінній `distance_mi`.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

Ви повинні мати змінну з іменем `is_raining`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

Ви повинні призначити булеве значення змінній `is_raining`.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

Ви повинні мати змінну з іменем `has_bike`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

Ви повинні призначити булеве значення змінній `has_bike`.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

Ви повинні мати змінну з іменем `has_car`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

Ви повинні призначити булеве значення змінній `has_car`.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

Ви повинні мати змінну з іменем `has_ride_share_app`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

Ви повинні призначити булеве значення змінній `has_ride_share_app`.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

Ви повинні використати принаймні одну інструкцію `if`.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

Ви повинні використати принаймні одну гілку `elif` у вашій програмі.

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

Ви повинні використати принаймні один булевий оператор (`and`, `or` або `not`) у вашому коді.

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

Ви повинні використати функцію `print()` для виведення результату.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

Коли `distance_mi` є хибним значенням, програма повинна вивести `False`.

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

Коли відстань дорівнює або менша за `1` милі і не йде дощ, програма повинна вивести `True`.

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

Коли відстань дорівнює або менша за `1` милі і йде дощ, програма повинна вивести `False`.

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

Коли відстань більша за `1` милі (не включно) і менша або дорівнює `6` милям, і йде дощ без велосипеда, програма повинна вивести `False`.

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

Коли відстань більша за `1` милі (не включно) і менша або дорівнює `6` милям, не йде дощ, але велосипеда немає, програма повинна вивести `False`.

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

Коли відстань більша за `1` милі (не включно) і менша або дорівнює `6` милям, велосипед є, і не йде дощ, програма повинна вивести `True`.

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

Коли відстань більша за `6` миль і є застосунок для замовлення поїздки, програма повинна вивести `True`.

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

Коли відстань більша за `6` миль і є автомобіль, програма повинна вивести `True`.

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

Коли відстань більша за `6` миль і немає ні автомобіля, ні застосунку для замовлення поїздки, програма повинна вивести `False`.

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
