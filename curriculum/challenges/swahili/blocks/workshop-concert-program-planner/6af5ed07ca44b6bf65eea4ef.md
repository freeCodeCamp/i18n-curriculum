---
id: 6af5ed07ca44b6bf65eea4ef
title: Hatua 7
challengeType: 20
dashedName: step-7
---

# --description--

Njia ya `extend()` inaongeza vitu vyote vya orodha nyingine mwishoni mwa orodha. Ikiwa ungetumia `append()` badala yake, orodha nzima ingeongezwa kama kipengee kimoja, na kuunda orodha zilizopangwa ndani.

Tengeneza kigezo kinachoitwa `extra_pieces` na weka thamani yake orodha yenye mfuatano wa herufi `Serenade for Strings` na `Cello Concerto in B Minor`, kwa mpangilio huu. Kisha, tumia `extend()` kuongeza vitu vya `extra_pieces` mwishoni mwa `pieces`.

# --hints--

Unapaswa kuwa na kigezo kinachoitwa `extra_pieces`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

Unapaswa kuweka thamani ya `extra_pieces` orodha yenye mfuatano wa herufi `Serenade for Strings` na `Cello Concerto in B Minor`, kwa mpangilio huu.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

Unapaswa kuita `pieces.extend()` ukiwa na `extra_pieces` kama hoja.

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
