---
id: 6af5ed0beae849400fb2f9fb
title: Крок 12
challengeType: 20
dashedName: step-12
---

# --description--

Далі ви напишете функцію, щоб знайти елемент у програмі.

Так само, як ви використовували оператор `in`, щоб перевірити, чи містить рядок підрядок, ви можете використовувати його, щоб перевірити, чи є елемент у списку. Метод `index()` повертає індекс першої появи елемента.

Визначте функцію з назвою `find_piece` з двома параметрами — `piece` і `program`. Усередині неї використайте інструкцію `if`, щоб перевірити, чи `piece` є в `program`. Якщо так, поверніть f-рядок, який показує позицію `piece` у програмі, рахуючи з `1`. Щоб отримати позицію, додайте `1` до індексу `piece`.

Наприклад, `find_piece('Slavonic Dance No. 8', pieces)` має повернути `Slavonic Dance No. 8 is piece number 4.`

# --hints--

Ви маєте визначити функцію з назвою `find_piece` з двома параметрами — `piece` і `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

У вашій функції `find_piece` має бути інструкція `if`, яка перевіряє, чи `piece` є в `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

Ваша інструкція `if` має повертати `f'{piece} is piece number {program.index(piece) + 1}.'`.

```js
({ test: () => runPython(`
body = _Node(_code).find_function("find_piece").find_ifs()[0].find_bodies()[0]
assert any(
  body.is_equivalent(code)
  for code in [
    "return f'{piece} is piece number {program.index(piece) + 1}.'",
    "return f'{piece} is piece number {1 + program.index(piece)}.'"
  ]
)
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']

pieces.append('Slavonic Dance No. 8')
pieces.insert(3, 'Slavonic Dance No. 1')
extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']
pieces.extend(extra_pieces)
pieces.remove('Song to the Moon')
removed_piece = pieces.pop()

pieces[1] = 'Romance for Violin'
print(pieces)


--fcc-editable-region--

--fcc-editable-region--
```
