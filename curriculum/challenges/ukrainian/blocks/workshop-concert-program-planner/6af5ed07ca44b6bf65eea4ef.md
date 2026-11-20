---
id: 6af5ed07ca44b6bf65eea4ef
title: Крок 7
challengeType: 20
dashedName: step-7
---

# --description--

Метод `extend()` додає всі елементи іншого списку в кінець списку. Якщо ви використали б `append()` замість цього, то весь список додався б як один елемент, створюючи вкладений список.

Створіть змінну з назвою `extra_pieces` і призначте їй список, що містить рядки `Serenade for Strings` та `Cello Concerto in B Minor` у цьому порядку. Потім використайте `extend()`, щоб додати елементи `extra_pieces` в кінець `pieces`.

# --hints--

У вас має бути змінна з назвою `extra_pieces`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

Ви маєте призначити `extra_pieces` список, що містить рядки `Serenade for Strings` та `Cello Concerto in B Minor` у цьому порядку.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

Ви маєте викликати `pieces.extend()` з `extra_pieces` як аргументом.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.extend(extra_pieces)")
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']
print(f'Opening piece: {pieces[0]}')
print(f'Closing piece: {pieces[-1]}')
print(f'Number of pieces: {len(pieces)}')

pieces.append('Slavonic Dance No. 8')
pieces.insert(3, 'Slavonic Dance No. 1')
--fcc-editable-region--

--fcc-editable-region--
print(pieces)
```
