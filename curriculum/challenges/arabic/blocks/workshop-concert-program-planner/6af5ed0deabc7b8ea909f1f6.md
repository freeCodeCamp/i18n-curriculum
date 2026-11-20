---
id: 6af5ed0deabc7b8ea909f1f6
title: الخطوة 14
challengeType: 20
dashedName: step-14
---

# --description--

سيكون هناك استراحة في منتصف الحفل. قبل أن تبدأ العمل عليها، احذف استدعائي `print()` الخاصين بـ `find_piece` للحفاظ على نظافة الطرفية.

يمكنك تقطيع قائمة بنفس طريقة تقطيع سلسلة نصية، باستخدام الصيغة النحوية `my_list[start:end]`. النتيجة تكون قائمة جديدة.

أنشئ متغيرًا باسم `half` وعيّن له طول `pieces` مقسومًا على `2` باستخدام القسمة الأرضية. ثم أنشئ متغيرًا باسم `before_intermission` وعيّن له جزءًا من `pieces` يبدأ من البداية وحتى، لكن لا يشمل، الفهرس `half`.

أخيرًا، استخدم سلسلة نصية بصيغة f لطباعة `Before intermission:` متبوعة بمسافة و`before_intermission`.

# --hints--

يجب حذف استدعائي `print()` الخاصين بـ `find_piece`.

```js
({ test: () => runPython(`
assert not _Node(_code).has_call("print(find_piece('Serenade for Strings', pieces))")
assert not _Node(_code).has_call("print(find_piece('Stabat Mater', pieces))")
`) });
```

يجب أن يكون لديك متغير باسم `half`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("half")
`) });
```

يجب تعيين `len(pieces) // 2` إلى `half`.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("half").is_equivalent("half = len(pieces) // 2")
`) });
```

يجب أن يكون لديك متغير باسم `before_intermission`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("before_intermission")
`) });
```

يجب تعيين `pieces[:half]` إلى `before_intermission`.

```js
({ test: () => runPython(`
assert any(
  _Node(_code).find_variable("before_intermission").is_equivalent(code)
  for code in ["before_intermission = pieces[:half]", "before_intermission = pieces[0:half]"]
)
`) });
```

يجب طباعة `f'Before intermission: {before_intermission}'`.

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
