---
id: 6af5ed0beae849400fb2f9fb
title: Hatua 12
challengeType: 20
dashedName: step-12
---

# --description--

Ifuatayo, utaandika kitendakazi cha kutafuta kipande katika programu.

Kama ulivyotumia kiendeshaji `in` kuangalia kama mfuatano wa herufi una sehemu ndogo, unaweza kutumia pia kuangalia kama kipengee kiko katika orodha. Njia ya `index()` inarudisha kielezo cha tukio la kwanza la kipengee.

Taja kitendakazi kinachoitwa `find_piece` chenye vigezo viwili, `piece` na `program`. Ndani yake, tumia tamko la `if` kuangalia kama `piece` iko katika `program`. Ikiwa ipo, rudisha f-string inayoonyesha nafasi ya `piece` katika programu, ukihesabu kuanzia `1`. Ili kupata nafasi hiyo, ongeza `1` kwenye kielezo cha `piece`.

Kwa mfano, `find_piece('Slavonic Dance No. 8', pieces)` inapaswa kurudisha `Slavonic Dance No. 8 is piece number 4.`

# --hints--

Unapaswa kutaja kitendakazi kinachoitwa `find_piece` chenye vigezo viwili, `piece` na `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

Kitendakazi chako cha `find_piece` kinapaswa kuwa na tamko la `if` linaloangalia kama `piece` iko katika `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

Tamko lako la `if` linapaswa kurudisha `f'{piece} is piece number {program.index(piece) + 1}.'`.

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
