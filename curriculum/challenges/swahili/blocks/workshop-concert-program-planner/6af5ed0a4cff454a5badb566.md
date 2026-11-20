---
id: 6af5ed0a4cff454a5badb566
title: Hatua 10
challengeType: 20
dashedName: step-10
---

# --description--

Mpiga violin mgeni ameomba kuimba kipande tofauti badala ya `Silent Woods`, ambacho sasa kiko kwenye kielezo `1`.

Kwa kuwa orodha zinaweza kubadilishwa, unaweza kubadilisha kipengee kwa kuweka thamani mpya kwenye kielezo chake:

```py
fruits = ['apple', 'banana', 'cherry']
fruits[0] = 'apricot'
print(fruits) # ['apricot', 'banana', 'cherry']
```

Badilisha kipengee kilicho kwenye kielezo `1` cha `pieces` na mfuatano wa herufi `Romance for Violin`.

# --hints--

Unapaswa kuweka mfuatano wa herufi `Romance for Violin` kwenye `pieces[1]`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces[1] = 'Romance for Violin'")
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
extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']
pieces.extend(extra_pieces)
pieces.remove('Song to the Moon')
removed_piece = pieces.pop()
print(f'Removed from the program: {removed_piece}')

--fcc-editable-region--

--fcc-editable-region--
print(pieces)
```
