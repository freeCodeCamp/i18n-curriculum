---
id: 6af5ed0588b6497dfddeeeb8
title: Крок 5
challengeType: 20
dashedName: step-5
---

# --description--

Списки змінні, тобто ви можете змінювати їх після створення.

Метод `append()` додає елемент у кінець списку. Він змінює список на місці, тому не потрібно повторно призначати результат змінній:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

Диригент хоче завершити концерт жвавим твором. Використайте `append()`, щоб додати рядок `Slavonic Dance No. 8` у кінець `pieces`. Потім виведіть `pieces`, щоб побачити оновлений список.

# --hints--

Ви повинні викликати `pieces.append()` з рядком `Slavonic Dance No. 8`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

Ви повинні вивести `pieces` після виклику `pieces.append()`.

```js
({ test: () => runPython(`
assert _Node(_code).is_ordered("pieces.append('Slavonic Dance No. 8')", "print(pieces)")
`) });
```

# --seed--

## --seed-contents--

```py
pieces = ['Carnival Overture', 'Song to the Moon', 'Silent Woods']
print(f'Opening piece: {pieces[0]}')
print(f'Closing piece: {pieces[-1]}')
print(f'Number of pieces: {len(pieces)}')

--fcc-editable-region--

--fcc-editable-region--
```
