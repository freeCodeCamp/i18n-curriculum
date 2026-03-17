---
id: 697a7f71ebfcd9e4cacd69c2
title: Крок 8
challengeType: 20
dashedName: step-8
---

# --description--

Рахунок розділено, але ділення часто дає довгі десяткові числа. Оскільки гроші зазвичай представляють з двома десятковими знаками, слід округлити фінальний результат.

Python надає вбудовану `round()` функцію для цього. Вона приймає два аргументи: число, яке потрібно округлити, і кількість десяткових знаків, які слід зберегти. Ось приклад:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Використайте функцію `round()` щоб округлити `final_bill` до двох десяткових знаків і призначте результат новій змінній з ім’ям `each_pays`.

Нарешті, використайте `print()` щоб вивести рядок `Each person pays:`, за яким іде пробіл і ваша змінна `each_pays`.

На цьому практичне заняття з розділення рахунку завершено.

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
    test: () => assert(runPython(`
    _Node(_code).has_call("print('Each person pays:', each_pays)") or _Node(_code).has_call("print(f'Each person pays: {each_pays}')")`))
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
