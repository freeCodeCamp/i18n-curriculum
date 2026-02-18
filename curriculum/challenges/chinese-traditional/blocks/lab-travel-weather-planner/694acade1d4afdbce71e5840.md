---
id: 694acade1d4afdbce71e5840
title: 建置一個旅遊天氣規劃器
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

在這個實驗中，你將使用條件述語來判斷是否能根據天氣、距離和車輛可用性進行通勤。

**目標：** 完成以下使用者故事並通過所有測試以完成實驗。

1. 你應該創建以下變數：
   * `distance_mi`（一個表述要行駛英里數的數字）
   * `is_raining`（一個布林值，表述使用者目前是否正經歷雨天）
   * `has_bike`（一個表述使用者是否擁有自行車的布林值）
   * `has_car`（一個表述使用者是否有車的布林值）
   * `has_ride_share_app`（一個布林值，表述使用者是否有一個允許他們叫車的應用程式）
1. 你應該使用條件述語來根據這些變數的值判斷是否可以通勤。
1. 你應該使用 `if`、`elif` 和 `else` 述語，依距離類別的遞增順序進行評估。
1. 如果 `distance_mi` 是假值：
   * 你應該列印 `False`。
1. 如果距離**小於或相等於 1 英里**：
   * 只有在**沒有下雨**時，你才應該列印 `True`。
   * 否則，你應該列印 `False`。
1. 如果距離**大於 1 英里且小於或相等於 6 英里**：
   * 只有當該人有腳踏車**且**沒有下雨時，你才應該列印 `True`。
   * 否則，你應該列印 `False`。
1. 如果距離**大於 6 英里**：
   * 如果此人有車 **或** 有共乘應用程式，你應該列印 `True`。
   * 否則，你應該列印 `False`。

# --hints--

你應該有一個名為 `distance_mi` 的變數。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

你應該為你的 `distance_mi` 變數指定一個數字。

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

你應該有一個名為 `is_raining` 的變數。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

你應該為你的 `is_raining` 變數指定一個布林值。

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

你應該有一個名為 `has_bike` 的變數。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

你應該為你的 `has_bike` 變數指定一個布林值。

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

你應該有一個名為 `has_car` 的變數。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

你應該為你的 `has_car` 變數指定一個布林值。

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

你應該有一個名為 `has_ride_share_app` 的變數。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

你應該為你的 `has_ride_share_app` 變數指定一個布林值。

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

你應該至少使用一個 `if` 述語。

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

你應該在你的程式中至少使用一個 `elif` 分支。

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

你應該在你的程式碼中使用至少一個布林值運算子（`and`、`or` 或 `not`）。

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

你應該使用 `print()` 函式（程式）來顯示結果。

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

當距離為 `1` 英里或更短且沒有下雨時，程式應該列印 `True`。

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

當距離為 `1` 英里或更短且正在下雨時，程式應該列印 `False`。

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

當距離介於 `1` 英里（不包含）和 `6` 英里（包含）之間，且正在下雨且沒有腳踏車時，程式應該列印 `False`。

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

當距離介於 `1` 英里（不包含）和 `6` 英里（包含）之間，且沒有下雨但沒有可用的自行車時，程式應該列印 `False`。

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

當距離介於 `1` 英里（不含）和 `6` 英里（含）之間，且有腳踏車可用，並且沒有下雨時，程式應該列印 `True`。

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

當距離大於 `6` 英里且共乘應用程式可用時，程式應該列印 `True`。

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

當距離大於 `6` 英里且有車輛可用時，程式應該列印 `True`。

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

當距離大於 `6` 英里且沒有車輛或共乘應用程式可用時，程式應該列印 `False`。

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

