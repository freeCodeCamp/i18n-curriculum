---
id: 6af5ed0beae849400fb2f9fb
title: الخطوة 12
challengeType: 20
dashedName: step-12
---

# --description--

بعد ذلك، ستكتب دالة للبحث عن قطعة في البرنامج.

تمامًا كما استخدمت العامل `in` للتحقق مما إذا كانت سلسلة نصية تحتوي على سلسلة فرعية، يمكنك استخدامه للتحقق مما إذا كان عنصر موجودًا في قائمة. تُرجع الطريقة `index()` فهرس أول ظهور للعنصر.

عرّف دالة باسم `find_piece` بمعلمتين، `piece` و `program`. بداخلها، استخدم جملة `if` للتحقق مما إذا كانت `piece` موجودة في `program`. إذا كانت موجودة، أرجع سلسلة نصية بصيغة f-string تُظهر موقع `piece` في البرنامج، مع العد بدءًا من `1`. للحصول على الموقع، أضف `1` إلى فهرس `piece`.

على سبيل المثال، يجب أن تُرجع `find_piece('Slavonic Dance No. 8', pieces)` القيمة `Slavonic Dance No. 8 is piece number 4.`

# --hints--

يجب أن تعرف دالة باسم `find_piece` بمعلمتين، `piece` و `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").has_args("piece, program")
`) });
```

يجب أن تحتوي دالة `find_piece` على جملة `if` تتحقق مما إذا كانت `piece` موجودة في `program`.

```js
({ test: () => runPython(`
assert _Node(_code).find_function("find_piece").find_ifs()[0].find_conditions()[0].is_equivalent("piece in program")
`) });
```

يجب أن تُرجع جملة `if` القيمة `f'{piece} is piece number {program.index(piece) + 1}.'`.

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
