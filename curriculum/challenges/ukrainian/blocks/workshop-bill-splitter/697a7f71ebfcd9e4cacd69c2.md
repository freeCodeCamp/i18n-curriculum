---
id: 697a7f71ebfcd9e4cacd69c2
title: Крок 9
challengeType: 20
dashedName: step-9
---

# --description--

Специфікатор формату `:.2f`, який ви використовували, змінює лише спосіб відображення чисел. Самі значення все ще мають усі свої десяткові знаки. Щоб отримати число, яке дійсно округлене і може бути використане в подальших обчисленнях, ви можете використати функцію `round()`.

У попередньому уроці ви дізналися, що функція `round()` приймає два аргументи: число, яке ви хочете округлити, і кількість десяткових знаків, які потрібно зберегти. Ось приклад:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Використайте функцію `round()` щоб округлити `final_bill` до двох десяткових знаків і призначте результат новій змінній з ім’ям `each_pays`.

Потім використайте `print()`, щоб вивести рядок `Each person pays:` з пробілом і вашою змінною `each_pays`. Цього разу не форматуй число.

# --hints--

Ви повинні визначити змінну з ім’ям `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

Ви повинні використати функцію `round()` щоб округлити `final_bill` до двох десяткових знаків і призначити результат вашій змінній `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

Ви повинні використати `print()` щоб вивести рядок `Each person pays:`, за яким іде пробіл і ваша змінна `each_pays`.

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
