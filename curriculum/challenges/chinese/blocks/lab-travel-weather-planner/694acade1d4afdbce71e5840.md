---
id: 694acade1d4afdbce71e5840
title: 构建一个旅行天气规划器
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

在本实验中，你将使用条件式语句来根据天气、旅行距离和车辆可用性判断是否可以通勤。

**目标：**实现以下用户需求并通过所有测试以完成实验。

1. 你应该创建以下变量：
   * `distance_mi`（表示要行驶的英里数的数字）
   * `is_raining`（一个表现用户当前是否正在经历雨天的布尔值）
   * `has_bike`（一个表现用户是否有自行车的布尔值）
   * `has_car`（一个表现用户是否有车的布尔值）
   * `has_ride_share_app`（一个表现用户是否拥有允许他们请求乘车的应用程序的布尔值）
1. 你应该使用条件式语句根据这些变量的值来判断是否可以通勤。
1. 你应该使用 `if`、`elif` 和 `else` 语句按距离类别的升序进行评估。
1. 如果 `distance_mi` 是假值：
   * 你应该打印 `False`。
1. 如果距离**小于或相等于 1 英里**：
   * 只有在**没有下雨**时你才应该打印 `True`。
   * 否则，你应该打印 `False`。
1. 如果距离**大于 1 英里且小于或相等于 6 英里**：
   * 你应该仅在此人有自行车**且**没有下雨时打印 `True`。
   * 否则，你应该打印 `False`。
1. 如果距离**大于 6 英里**：
   * 如果此人有汽车**或**有拼车应用程序，你应该打印 `True`。
   * 否则，你应该打印 `False`。

# --hints--

你应该有一个名为 `distance_mi` 的变量。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

你应该为你的 `distance_mi` 变量赋值一个数字。

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

你应该有一个名为 `is_raining` 的变量。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

你应该为你的 `is_raining` 变量赋值一个布尔值。

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

你应该有一个名为 `has_bike` 的变量。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

你应该为你的 `has_bike` 变量赋值一个布尔值。

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

你应该有一个名为 `has_car` 的变量。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

你应该为你的 `has_car` 变量赋值一个布尔值。

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

你应该有一个名为 `has_ride_share_app` 的变量。

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

你应该为你的 `has_ride_share_app` 变量赋值一个布尔值。

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

你应该至少使用一个 `if` 语句。

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

你应该在你的程序中至少使用一个 `elif` 分支。

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

你应该在你的代码中至少使用一个布尔操作符（`and`、`or` 或 `not`）。

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

你应该使用 `print()` 函数来显示结果。

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

当距离为 `1` 英里或更短且没有下雨时，程序应打印 `True`。

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

当距离为 `1` 英里或更短且正在下雨时，程序应打印 `False`。

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

当距离在 `1` 英里（不包括）和 `6` 英里（包括）之间，且下雨且没有自行车时，程序应打印 `False`。

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

当距离在 `1` 英里（不包括）和 `6` 英里（包括）之间，且没有下雨但没有可用的自行车时，程序应打印 `False`。

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

当距离在 `1` 英里（不包括）和 `6` 英里（包括）之间，自行车可用且没有下雨时，程序应打印 `True`。

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

当距离大于 `6` 英里且有拼车应用可用时，程序应打印 `True`。

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

当距离大于 `6` 英里且有汽车可用时，程序应打印 `True`。

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

当距离大于 `6` 英里且没有汽车或拼车应用可用时，程序应打印 `False`。

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

