---
id: 694acade1d4afdbce71e5840
title: 여행 날씨 계획표 만들기
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

이 실습에서는 조건문을 사용해 날씨, 이동 거리, 차량 보유 여부에 따라 통근이 가능한지 판단합니다.

**목표:** 아래 사용자 스토리를 충족하고 모든 테스트를 통과해 실습을 완료하세요.

1. 다음 변수를 만들어야 합니다:
   * `distance_mi` (이동 거리를 마일 단위로 나타내는 숫자)
   * `is_raining` (사용자가 현재 비가 오는 날씨인지 나타내는 불리언)
   * `has_bike` (사용자가 자전거를 가지고 있는지 나타내는 불리언)
   * `has_car` (사용자가 자동차를 가지고 있는지 나타내는 불리언)
   * `has_ride_share_app` (사용자가 호출 요청이 가능한 앱을 가지고 있는지 나타내는 불리언)
1. 이 변수들의 값에 따라 조건문을 사용해 통근 가능 여부를 판단해야 합니다.
1. `if`, `elif`, `else` 문을 사용해 거리에 따른 범주를 오름차순으로 평가해야 합니다.
1. `distance_mi`가 거짓 같은 값이라면:
   * `False`를 출력해야 합니다.
1. 거리가 **1마일 이하**라면:
   * 비가 오지 않을 때만 `True`을 출력해야 합니다.
   * 그렇지 않으면 `False`을 출력해야 합니다.
1. 거리가 **1마일 초과 6마일 이하**라면:
   * 자전거가 있고 비가 오지 않을 때만 `True`를 출력해야 합니다.
   * 그렇지 않으면 `False`을 출력해야 합니다.
1. 거리가 **6마일 초과**라면:
   * 자동차가 있거나 호출 앱이 있을 때 `True`를 출력해야 합니다.
   * 그렇지 않으면 `False`를 출력해야 합니다.

# --hints--

`distance_mi`라는 변수를 만들어야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

`distance_mi` 변수에 숫자를 할당해야 합니다.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

`is_raining`라는 변수를 만들어야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

`is_raining` 변수에 불리언을 할당해야 합니다.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

`has_bike`라는 변수를 만들어야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

`has_bike` 변수에 불리언을 할당해야 합니다.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

`has_car`라는 변수를 만들어야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

`has_car` 변수에 불리언을 할당해야 합니다.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

`has_ride_share_app`라는 변수를 만들어야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

`has_ride_share_app` 변수에 불리언을 할당해야 합니다.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

적어도 하나의 `if` 문을 사용해야 합니다.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

프로그램에 적어도 하나의 `elif` 분기를 사용해야 합니다.

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

코드에 적어도 하나의 불리언 연산자(`and`, `or`, 또는 `not`)를 사용해야 합니다.

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

결과를 표시하려면 `print()` 함수를 사용해야 합니다.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

`distance_mi`가 거짓 같은 값일 때 프로그램은 `False`를 출력해야 합니다.

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

거리가 `1` 마일 이하이고 비가 오지 않을 때 프로그램은 `True`를 출력해야 합니다.

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

거리가 `1` 마일 이하이고 비가 올 때 프로그램은 `False`를 출력해야 합니다.

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

거리가 `1` 마일(제외) 초과 `6` 마일(포함) 이하이고 비가 오며 자전거가 없을 때 프로그램은 `False`를 출력해야 합니다.

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

거리가 `1` 마일(제외) 초과 `6` 마일(포함) 이하이고 비가 오지 않으며 자전거가 없을 때 프로그램은 `False`를 출력해야 합니다.

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

거리가 `1` 마일(제외) 초과 `6` 마일(포함) 이하이고 자전거가 있으며 비가 오지 않을 때 프로그램은 `True`를 출력해야 합니다.

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

거리가 `6` 마일 초과이고 호출 앱이 있을 때 프로그램은 `True`를 출력해야 합니다.

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

거리가 `6` 마일 초과이고 자동차가 있을 때 프로그램은 `True`를 출력해야 합니다.

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

거리가 `6` 마일 초과이고 자동차도 호출 앱도 없을 때 프로그램은 `False`를 출력해야 합니다.

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
