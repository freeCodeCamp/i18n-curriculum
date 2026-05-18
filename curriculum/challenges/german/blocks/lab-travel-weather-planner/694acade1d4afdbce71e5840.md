---
id: 694acade1d4afdbce71e5840
title: Einen Reise-Wetterplaner erstellen
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

Für dieses Labor verwenden Sie bedingte Anweisungen, um zu bestimmen, ob das Pendeln möglich ist, basierend auf dem Wetter, der zu reisenden Entfernung und der Verfügbarkeit eines Fahrzeugs.

**Ziel:** Erfüllen Sie die unten stehenden User Stories und bestehen Sie alle Tests, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten die folgenden Variablen erstellen:
   * `distance_mi` (eine Zahl, die die zu reisende Entfernung in Meilen darstellt)
   * `is_raining` (ein Boolean, der darstellt, ob der Benutzer gerade Regenwetter hat)
   * `has_bike` (ein Boolean, der darstellt, ob der Benutzer ein Fahrrad besitzt)
   * `has_car` (ein Boolean, der darstellt, ob der Benutzer ein Auto besitzt)
   * `has_ride_share_app` (ein Boolean, der darstellt, ob der Benutzer eine App hat, mit der er eine Mitfahrgelegenheit anfragen kann)
1. Sie sollten bedingte Anweisungen verwenden, um zu bestimmen, ob das Pendeln möglich ist, basierend auf den Werten dieser Variablen.
1. Sie sollten `if`, `elif` und `else` Anweisungen verwenden, um die Entfernungsbereiche aufsteigend zu bewerten.
1. Wenn `distance_mi` ein falsy-Wert ist:
   * Sie sollten `False` ausgeben.
1. Wenn die Entfernung **kleiner oder gleich 1 Meile** ist:
   * Sie sollten `True` nur ausgeben, wenn es **nicht regnet**.
   * Andernfalls sollten Sie `False` ausgeben.
1. Wenn die Entfernung **größer als 1 Meile und kleiner oder gleich 6 Meilen** ist:
   * Sie sollten `True` nur ausgeben, wenn die Person ein Fahrrad hat **und** es nicht regnet.
   * Andernfalls sollten Sie `False` ausgeben.
1. Wenn die Entfernung **größer als 6 Meilen** ist:
   * Sie sollten `True` ausgeben, wenn die Person ein Auto hat **oder** eine Mitfahr-App besitzt.
   * Andernfalls sollten Sie `False` ausgeben.

# --hints--

Sie sollten eine Variable namens `distance_mi` haben.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

Sie sollten Ihrer `distance_mi` Variable eine Zahl zuweisen.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

Sie sollten eine Variable namens `is_raining` haben.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

Sie sollten Ihrer `is_raining` Variable einen Boolean zuweisen.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

Sie sollten eine Variable namens `has_bike` haben.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

Sie sollten Ihrer `has_bike` Variable einen Boolean zuweisen.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

Sie sollten eine Variable namens `has_car` haben.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

Sie sollten Ihrer `has_car` Variable einen Boolean zuweisen.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

Sie sollten eine Variable namens `has_ride_share_app` haben.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

Sie sollten Ihrer `has_ride_share_app` Variable einen Boolean zuweisen.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

Sie sollten mindestens eine `if` Anweisung verwenden.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

Sie sollten mindestens einen `elif` Zweig in Ihrem Programm verwenden.

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

Sie sollten mindestens einen Boolean-Operator (`and`, `or` oder `not`) in Ihrem Code verwenden.

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

Sie sollten die `print()` Funktion verwenden, um das Ergebnis anzuzeigen.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

Wenn `distance_mi` ein falsy-Wert ist, sollte das Programm `False` ausgeben.

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

Wenn die Entfernung `1` Meile oder weniger beträgt und es nicht regnet, sollte das Programm `True` ausgeben.

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

Wenn die Entfernung `1` Meile oder weniger beträgt und es regnet, sollte das Programm `False` ausgeben.

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

Wenn die Entfernung zwischen `1` Meile (ausgeschlossen) und `6` Meilen (einschließlich) liegt und es regnet ohne Fahrrad, sollte das Programm `False` ausgeben.

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

Wenn die Entfernung zwischen `1` Meile (ausgeschlossen) und `6` Meilen (einschließlich) liegt, es nicht regnet, aber kein Fahrrad verfügbar ist, sollte das Programm `False` ausgeben.

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

Wenn die Entfernung zwischen `1` Meile (ausgeschlossen) und `6` Meilen (einschließlich) liegt, ein Fahrrad verfügbar ist und es nicht regnet, sollte das Programm `True` ausgeben.

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

Wenn die Entfernung größer als `6` Meilen ist und eine Mitfahr-App verfügbar ist, sollte das Programm `True` ausgeben.

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

Wenn die Entfernung größer als `6` Meilen ist und ein Auto verfügbar ist, sollte das Programm `True` ausgeben.

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

Wenn die Entfernung größer als `6` Meilen ist und weder ein Auto noch eine Mitfahr-App verfügbar sind, sollte das Programm `False` ausgeben.

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

