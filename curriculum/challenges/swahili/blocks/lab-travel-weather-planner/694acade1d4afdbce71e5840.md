---
id: 694acade1d4afdbce71e5840
title: Tengeneza mpango wa hali ya hewa ya kusafiri
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

Kwa maabara hii, utatumia sentensi za masharti kuamua kama kusafiri kwa njia ya usafiri wa kawaida kunawezekana kulingana na hali ya hewa, umbali wa kusafiri, na upatikanaji wa gari.

**Lengo:** Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara.

**Hadithi za watumizi:**

1. Unapaswa kuunda vigezo vifuatavyo:
   * `distance_mi` (nambari inayowakilisha umbali wa kusafiri kwa maili)
   * `is_raining` (thamani ya kweli au siyo kweli inayowakilisha kama mtumizi kwa sasa anakutana na mvua)
   * `has_bike` (thamani ya kweli au siyo kweli inayowakilisha kama mtumizi ana baiskeli)
   * `has_car` (thamani ya kweli au siyo kweli inayowakilisha kama mtumizi ana gari)
   * `has_ride_share_app` (thamani ya kweli au siyo kweli inayowakilisha kama mtumizi ana programu inayomruhusu kuomba usafiri)
1. Unapaswa kutumia sentensi za masharti kuamua kama kusafiri kunawezekana kulingana na thamani za vigezo hivi.
1. Unapaswa kutumia sentensi za `if`, `elif`, na `else` kutathmini makundi ya umbali kwa mpangilio wa kuongezeka.
1. Ikiwa `distance_mi` ni thamani ya uongo:
   * Unapaswa chapisha `False`.
1. Ikiwa umbali ni **chini au sawa na maili 1**:
   * Unapaswa chapisha `True` tu ikiwa **hakuna mvua**.
   * Vinginevyo, unapaswa chapisha `False`.
1. Ikiwa umbali ni **zaidi ya maili 1 na chini au sawa na maili 6**:
   * Unapaswa chapisha `True` tu ikiwa mtu ana baiskeli **na** hakuna mvua.
   * Vinginevyo, unapaswa chapisha `False`.
1. Ikiwa umbali ni **zaidi ya maili 6**:
   * Unapaswa chapisha `True` ikiwa mtu ana gari **au** ana programu ya kuomba usafiri.
   * Vinginevyo, unapaswa chapisha `False`. 

# --hints--

Unapaswa kuwa na kigezo kinachoitwa `distance_mi`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

Unapaswa weka thamani ya nambari kwa kigezo chako cha `distance_mi`.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

Unapaswa kuwa na kigezo kinachoitwa `is_raining`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

Unapaswa weka thamani ya kweli au siyo kweli kwa kigezo chako cha `is_raining`.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

Unapaswa kuwa na kigezo kinachoitwa `has_bike`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

Unapaswa weka thamani ya kweli au siyo kweli kwa kigezo chako cha `has_bike`.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

Unapaswa kuwa na kigezo kinachoitwa `has_car`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

Unapaswa weka thamani ya kweli au siyo kweli kwa kigezo chako cha `has_car`.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

Unapaswa kuwa na kigezo kinachoitwa `has_ride_share_app`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

Unapaswa weka thamani ya kweli au siyo kweli kwa kigezo chako cha `has_ride_share_app`.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

Unapaswa tumia angalau sentensi moja ya `if`.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

Unapaswa tumia angalau tawi moja la `elif` katika programu yako.

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

Unapaswa tumia angalau mtaalamu mmoja wa thamani ya kweli au siyo kweli (`and`, `or`, au `not`) katika msimbo wako.

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

Unapaswa tumia kitendakazi cha `print()` kuonyesha matokeo.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

Wakati `distance_mi` ni thamani ya uongo, programu inapaswa chapisha `False`.

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

Wakati umbali ni `1` maili au chini na hakuna mvua, programu inapaswa chapisha `True`.

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

Wakati umbali ni `1` maili au chini na kuna mvua, programu inapaswa chapisha `False`.

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

Wakati umbali uko kati ya `1` maili (haijajumuishwa) na `6` maili (imejumuishwa), na kuna mvua bila baiskeli, programu inapaswa chapisha `False`.

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

Wakati umbali uko kati ya `1` maili (haijajumuishwa) na `6` maili (imejumuishwa), hakuna mvua lakini hakuna baiskeli, programu inapaswa chapisha `False`.

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

Wakati umbali uko kati ya `1` maili (haijajumuishwa) na `6` maili (imejumuishwa), baiskeli inapatikana, na hakuna mvua, programu inapaswa chapisha `True`.

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

Wakati umbali ni zaidi ya `6` maili na programu ya kuomba usafiri inapatikana, programu inapaswa chapisha `True`.

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

Wakati umbali ni zaidi ya `6` maili na gari linapatikana, programu inapaswa chapisha `True`.

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

Wakati umbali ni zaidi ya `6` maili na hakuna gari wala programu ya kuomba usafiri inapatikana, programu inapaswa chapisha `False`.

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
