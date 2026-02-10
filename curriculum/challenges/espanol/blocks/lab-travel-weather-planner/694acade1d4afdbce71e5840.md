---
id: 694acade1d4afdbce71e5840
title: Construye un Planificador de Clima para Viajes
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

Para este laboratorio, usarás sentencias condicionales para determinar si es posible desplazarte según el clima, la distancia a recorrer y la disponibilidad de un vehículo.

**Objetivo:** Cumplir con las historias de usuario a continuación y pasar todas las pruebas para completar el laboratorio.

1. You should create the following variables:
   * `distance_mi` (un número que representa la distancia a recorrer en millas)
   * `is_raining` (un booleano que representa si el usuario está experimentando clima lluvioso actualmente)
   * `has_bike` (un booleano que representa si el usuario tiene una bicicleta)
   * `has_car` (un booleano que representa si el usuario tiene un coche)
   * `has_ride_share_app` (un booleano que representa si el usuario tiene una app que le permite solicitar un viaje)
1. Debes usar sentencias condicionales para determinar si es posible el desplazamiento basado en los valores de estas variables.
1. Debes usar las sentencias `if`, `elif` y `else` para evaluar las categorías de distancia en orden ascendente.
1. If `distance_mi` is a falsy value:
   * Deberías imprimir `False`.
1. If the distance is **less than or equal to 1 mile**:
   * Debes imprimir `True` solo si **no está lloviendo**.
   * De lo contrario, deberías imprimir `False`.
1. If the distance is **greater than 1 mile and less than or equal to 6 miles**:
   * Debes imprimir `True` solo si la persona tiene una bicicleta **y** no está lloviendo.
   * De lo contrario, debes imprimir `False`.
1. If the distance is **greater than 6 miles**:
   * Debes imprimir `True` si la persona tiene un coche **o** tiene una aplicación de viaje compartido.
   * De lo contrario, deberías imprimir `False`.

# --hints--

Debes tener una variable llamada `distance_mi`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

Debes asignar un número a tu variable `distance_mi`.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

Debes tener una variable llamada `is_raining`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

Debes asignar un booleano a tu variable `is_raining`.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

Debes tener una variable llamada `has_bike`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

Debes asignar un booleano a tu variable `has_bike`.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

Debes tener una variable llamada `has_car`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

Debes asignar un booleano a tu variable `has_car`.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

Debes tener una variable llamada `has_ride_share_app`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

Debes asignar un booleano a tu variable `has_ride_share_app`.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

Debes usar al menos una sentencia `if`.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

Debes usar al menos una rama `elif` en tu programa.

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

Debes usar al menos un operador booleano (`and`, `or` o `not`) en tu código.

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

Debes usar la función `print()` para mostrar el resultado.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

Cuando la distancia es `1` milla o menos y no está lloviendo, el programa debe imprimir `True`.

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

Cuando la distancia es `1` milla o menos y está lloviendo, el programa debería imprimir `False`.

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

Cuando la distancia está entre `1` milla (excluida) y `6` millas (incluida), y está lloviendo sin bicicleta, el programa debería imprimir `False`.

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

Cuando la distancia está entre `1` milla (excluida) y `6` millas (incluidas), no está lloviendo pero no hay bicicleta disponible, el programa debería imprimir `False`.

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

Cuando la distancia está entre `1` milla (excluida) y `6` millas (incluidas), hay una bicicleta disponible y no está lloviendo, el programa debe imprimir `True`.

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

Cuando la distancia es mayor a `6` millas y hay una app de viaje compartido disponible, el programa debe imprimir `True`.

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

Cuando la distancia es mayor a `6` millas y hay un coche disponible, el programa debe imprimir `True`.

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

Cuando la distancia es mayor a `6` millas y no hay ni un coche ni una app de viaje compartido disponible, el programa debe imprimir `False`.

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

