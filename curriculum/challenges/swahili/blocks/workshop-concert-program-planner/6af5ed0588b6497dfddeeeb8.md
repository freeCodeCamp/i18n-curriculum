---
id: 6af5ed0588b6497dfddeeeb8
title: Hatua 5
challengeType: 20
dashedName: step-5
---

# --description--

Orodha ni zinazobadilika, ambayo inamaanisha unaweza kuzibadilisha baada ya kuzitengeneza.

Njia ya `append()` inaongeza kipengee mwishoni mwa orodha. Inabadilisha orodha hapo hapo, kwa hivyo huna haja ya kuweka thamani tena kwa kigezo:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

Msimamizi anataka kumaliza tamasha na kipande chenye nguvu. Tumia `append()` kuongeza mfuatano wa herufi `Slavonic Dance No. 8` mwishoni mwa `pieces`. Kisha, chapisha `pieces` kuona orodha iliyosasishwa.

# --hints--

Unapaswa kuita `pieces.append()` ukiwa na mfuatano wa herufi `Slavonic Dance No. 8`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

Unapaswa kuchapisha `pieces` baada ya kuita `pieces.append()`.

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
