---
id: 697a7f71ebfcd9e4cacd69c2
title: الخطوة 9
challengeType: 20
dashedName: step-9
---

# --description--

محدد التنسيق `:.2f` الذي كنت تستخدمه يغير فقط كيفية عرض الأرقام. القيم نفسها لا تزال تحتفظ بكل أرقامها العشرية. للحصول على رقم يتم تقريبه فعليًا ويمكن استخدامه في حسابات لاحقة، يمكنك استخدام الدالة `round()`.

في درس سابق، تعلمت أن الدالة `round()` تأخذ معلمتين: الرقم الذي تريد تقريبه وعدد المنازل العشرية التي تريد الاحتفاظ بها. إليك مثالًا:

```py
num = 4.815162342
round(num, 3) # 4.815
```

استخدم الدالة `round()` لتقريب `final_bill` إلى منزلتين عشريتين وعيّن النتيجة في متغير جديد اسمه `each_pays`.

ثم استخدم `print()` لعرض السلسلة النصية `Each person pays:` متبوعة بمسافة والمتغير `each_pays` الخاص بك. لا تقم بتنسيق الرقم هذه المرة.

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
        assert re.search(r"^Each person pays: 62\\.1$", buffer.getvalue(), re.M)
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
drinks = 64.11

running_total += appetizers + main_courses + desserts + drinks
print(f'Total bill so far: {running_total:.2f}')

tip = running_total * 0.25
print(f'Tip amount: {tip:.2f}')

running_total += tip
print(f'Total with tip: {running_total:.2f}')

final_bill = running_total / num_of_friends
print(f'Bill per person: {final_bill:.2f}')

--fcc-editable-region--

--fcc-editable-region--
```
