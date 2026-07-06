---
id: 697a7f71ebfcd9e4cacd69c2
title: الخطوة 8
challengeType: 20
dashedName: step-8
---

# --description--

تم تقسيم الفاتورة، لكن القسمة غالبًا ما تؤدي إلى أرقام عشرية طويلة. بما أن المال يُمثّل عادةً برقمين عشريين، يجب عليك تقريب النتيجة النهائية.

في درس سابق، تعلّمت عن الدالة `round()` التي تأخذ معلمتين: الرقم الذي تريد تقريبه وعدد المنازل العشرية التي تريد الاحتفاظ بها. إليك مثالًا:

```py
num = 4.815162342
round(num, 3) # 4.815
```

استخدم الدالة `round()` لتقريب `final_bill` إلى منزلتين عشريتين وعيّن النتيجة في متغير جديد اسمه `each_pays`.

أخيرًا، استخدم `print()` لعرض السلسلة النصية `Each person pays:` متبوعة بمسافة ثم متغير `each_pays` الخاص بك.

بهذا، تكتمل ورشة عمل تقسيم الفاتورة.

# --hints--

يجب تعريف متغير اسمه `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

يجب استخدام الدالة `round()` لتقريب `final_bill` إلى منزلتين عشريتين وعيّن النتيجة في متغير `each_pays` الخاص بك.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

يجب استخدام `print()` لعرض السلسلة النصية `Each person pays:` متبوعة بمسافة ثم متغير `each_pays` الخاص بك.

```js
({
    test: () => runPython(`
import io, contextlib, re

buffer = io.StringIO()
with contextlib.redirect_stdout(buffer):
    exec(_code)

match = re.search(r"Each person pays: ([0-9]+(?:\\.[0-9]+)?)", buffer.getvalue())

assert match
assert abs(float(match.group(1)) - 62.13) < 1e-6
`)
})
```

# --seed--

## --seed-contents--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

each_pays = round(final_bill, 2)
print('Each person pays:', each_pays)
```
