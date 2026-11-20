---
id: 6af5ed0deabc7b8ea909f1f6
title: Hatua 14
challengeType: 20
dashedName: step-14
---

# --description--

Tamasha litakuwa na mapumziko katikati. Kabla hujaendelea nalo, ondoa wito mbili za `print()` za `find_piece` ili kuweka terminali safi.

Unaweza kata orodha kwa njia ile ile unayokatakata mfuatano wa herufi, kwa sintaksia `my_list[start:end]`. Matokeo ni orodha mpya.

Tengeneza kigezo kinachoitwa `half` na weka thamani ya urefu wa `pieces` uliogawanywa kwa sakafu na `2`. Kisha, tengeneza kigezo kinachoitwa `before_intermission` na weka thamani ya kipande cha `pieces` kuanzia mwanzo hadi, lakini si pamoja na, kielezo `half`.

Mwishowe, tumia f-string kuchapisha `Before intermission:` ikifuatiwa na nafasi na `before_intermission`.

# --hints--

Unapaswa kuondoa wito mbili za `print()` za `find_piece`.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

Unapaswa kuwa na kigezo kinachoitwa `half`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

Unapaswa kuweka `len(pieces) // 2` kwa `half`.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

Unapaswa kuwa na kigezo kinachoitwa `before_intermission`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

Unapaswa kuweka `pieces[:half]` kwa `before_intermission`.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

Unapaswa kuchapisha `f'Before intermission: {before_intermission}'`.

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
