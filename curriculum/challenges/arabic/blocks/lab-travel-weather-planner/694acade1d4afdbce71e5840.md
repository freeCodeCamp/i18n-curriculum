---
id: 694acade1d4afdbce71e5840
title: بناء مخطط طقس للسفر
challengeType: 27
dashedName: build-a-travel-weather-planner
---

# --description--

في هذا المختبر، ستستخدم عبارات شرطية لتحديد ما إذا كان التنقل ممكنًا بناءً على الطقس، والمسافة التي يجب قطعها، وتوفر وسيلة نقل.

**الهدف:** إكمال قصص المستخدم أدناه واجتياز جميع الاختبارات لإتمام المختبر.

**قصص المستخدم:**

1. يجب عليك إنشاء المتغيرات التالية:
   * `distance_mi` (رقم يُمثل المسافة التي يجب قطعها بالأميال)
   * `is_raining` (قيمة منطقية تُمثل ما إذا كان المستخدم يواجه طقسًا ممطرًا حاليًا)
   * `has_bike` (قيمة منطقية تُمثل ما إذا كان لدى المستخدم دراجة)
   * `has_car` (قيمة منطقية تُمثل ما إذا كان لدى المستخدم سيارة)
   * `has_ride_share_app` (قيمة منطقية تُمثل ما إذا كان لدى المستخدم تطبيق يسمح له بطلب رحلة)
1. يجب عليك استخدام عبارات شرطية لتحديد ما إذا كان التنقل ممكنًا بناءً على قيم هذه المتغيرات.
1. يجب عليك استخدام عبارات `if` و `elif` و `else` لتقييم فئات المسافة بترتيب تصاعدي.
1. إذا كانت قيمة `distance_mi` قيمة خاطئة:
   * يجب عليك طباعة `False`.
1. إذا كانت المسافة **أقل من أو تساوي ميلًا واحدًا**:
   * يجب عليك طباعة `True` فقط إذا لم يكن هناك مطر.
   * وإلا، يجب طباعة `False`.
1. إذا كانت المسافة **أكبر من ميل واحد وأقل من أو تساوي 6 أميال**:
   * يجب عليك طباعة `True` فقط إذا كان لدى الشخص دراجة **و** لم يكن هناك مطر.
   * وإلا، يجب طباعة `False`.
1. إذا كانت المسافة **أكبر من 6 أميال**:
   * يجب عليك طباعة `True` إذا كان لدى الشخص سيارة **أو** تطبيق لطلب الرحلات.
   * وإلا، يجب طباعة `False`.

# --hints--

يجب أن يكون لديك متغير اسمه `distance_mi`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("distance_mi")`) })
```

يجب تعيين رقم إلى متغير `distance_mi` الخاص بك.

```js
({ test: () => runPython(`assert isinstance(distance_mi, (int, float))`) })
```

يجب أن يكون لديك متغير اسمه `is_raining`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("is_raining")`) })
```

يجب تعيين قيمة منطقية إلى متغير `is_raining` الخاص بك.

```js
({ test: () => runPython(`assert isinstance(is_raining, bool)`) })
```

يجب أن يكون لديك متغير اسمه `has_bike`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_bike")`) })
```

يجب تعيين قيمة منطقية إلى متغير `has_bike` الخاص بك.

```js
({ test: () => runPython(`assert isinstance(has_bike, bool)`) })
```

يجب أن يكون لديك متغير اسمه `has_car`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_car")`) })
```

يجب تعيين قيمة منطقية إلى متغير `has_car` الخاص بك.

```js
({ test: () => runPython(`assert isinstance(has_car, bool)`) })
```

يجب أن يكون لديك متغير اسمه `has_ride_share_app`.

```js
({ test: () => runPython(`assert _Node(_code).has_variable("has_ride_share_app")`) })
```

يجب تعيين قيمة منطقية إلى متغير `has_ride_share_app` الخاص بك.

```js
({ test: () => runPython(`assert isinstance(has_ride_share_app, bool)`) })
```

يجب استخدام عبارة `if` واحدة على الأقل.

```js
({ test: () => runPython(`
import ast

tree = ast.parse(_code)
ifs = [node for node in ast.walk(tree) if isinstance(node, ast.If)]
assert len(ifs) >= 1
`) })
```

يجب استخدام فرع `elif` واحد على الأقل في برنامجك.

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

يجب استخدام عامل منطقي واحد على الأقل (`and`، `or`، أو `not`) في شفرتك.

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

يجب استخدام الدالة `print()` لعرض النتيجة.

```js
({ test: () => runPython(`assert _Node(_code).block_has_call("print")`) })
```

عندما تكون قيمة `distance_mi` قيمة خاطئة، يجب أن يطبع البرنامج `False`.

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

عندما تكون المسافة `1` ميل أو أقل ولا يكون هناك مطر، يجب أن يطبع البرنامج `True`.

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

عندما تكون المسافة `1` ميل أو أقل ويكون هناك مطر، يجب أن يطبع البرنامج `False`.

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

عندما تكون المسافة بين `1` ميل (مستبعد) و `6` أميال (مشمولة)، ويكون هناك مطر بدون دراجة، يجب أن يطبع البرنامج `False`.

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

عندما تكون المسافة بين `1` ميل (مستبعد) و `6` أميال (مشمولة)، ولا يكون هناك مطر ولكن لا توجد دراجة متاحة، يجب أن يطبع البرنامج `False`.

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

عندما تكون المسافة بين `1` ميل (مستبعد) و `6` أميال (مشمولة)، وتتوفر دراجة، ولا يكون هناك مطر، يجب أن يطبع البرنامج `True`.

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

عندما تكون المسافة أكبر من `6` أميال ويتوفر تطبيق لطلب الرحلات، يجب أن يطبع البرنامج `True`.

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

عندما تكون المسافة أكبر من `6` أميال وتتوفر سيارة، يجب أن يطبع البرنامج `True`.

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

عندما تكون المسافة أكبر من `6` أميال ولا تتوفر سيارة ولا تطبيق لطلب الرحلات، يجب أن يطبع البرنامج `False`.

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

