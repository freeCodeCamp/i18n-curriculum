---
id: 6af5ed0deabc7b8ea909f1f6
title: Крок 14
challengeType: 20
dashedName: step-14
---

# --description--

Концерт матиме антракт на половині виступу. Перед тим як працювати над цим, видаліть два виклики `print()` функції `find_piece`, щоб термінал залишався чистим.

Ви можете нарізати список так само, як нарізаєте рядок, використовуючи синтаксис `my_list[start:end]`. Результатом буде новий список.

Створіть змінну з ім’ям `half` і призначте їй довжину `pieces`, поділену з округленням вниз на `2`. Потім створіть змінну `before_intermission` і призначте їй зріз `pieces` від початку до, але не включно, індексу `half`.

Нарешті, використайте f-рядок, щоб вивести `Before intermission:` з пробілом і `before_intermission`.

# --hints--

Ви повинні видалити два виклики `print()` функції `find_piece`.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

У вас має бути змінна з ім’ям `half`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

Ви повинні призначити `len(pieces) // 2` змінній `half`.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

У вас має бути змінна з ім’ям `before_intermission`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

Ви повинні призначити `pieces[:half]` змінній `before_intermission`.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

Ви повинні вивести `f'Before intermission: {before_intermission}'`.

```js
({ test: () => runPython(`
assert _Node(_code).has_call("print(f'Before intermission: {before_intermission}')")
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


def find_piece(piece, program):
    if piece in program:
        return f'{piece} is piece number {program.index(piece) + 1}.'
    return f'{piece} is not in the program.'



--fcc-editable-region--
print(find_piece('Serenade for Strings', pieces))
print(find_piece('Stabat Mater', pieces))

--fcc-editable-region--
```
