---
id: 6af5ed07ca44b6bf65eea4ef
title: الخطوة 7
challengeType: 20
dashedName: step-7
---

# --description--

تضيف الطريقة `extend()` كل عناصر قائمة أخرى إلى نهاية قائمة. إذا استخدمت `append()` بدلًا من ذلك، ستُضاف القائمة كلها كعنصر واحد، مما يُنشئ قائمة مسكنة.

أنشئ متغيرًا باسم `extra_pieces` وعيّن له قائمة تحتوي على السلسلتين النصيتين `Serenade for Strings` و`Cello Concerto in B Minor` بهذا الترتيب. ثم استخدم `extend()` لإضافة عناصر `extra_pieces` إلى نهاية `pieces`.

# --hints--

يجب أن يكون لديك متغير باسم `extra_pieces`.

```js
({ test: () => runPython(`
assert _Node(_code).has_variable("extra_pieces")
`) });
```

يجب أن تعيّن لـ `extra_pieces` قائمة تحتوي على السلسلتين النصيتين `Serenade for Strings` و`Cello Concerto in B Minor` بهذا الترتيب.

```js
({ test: () => runPython(`
assert _Node(_code).find_variable("extra_pieces").is_equivalent("extra_pieces = ['Serenade for Strings', 'Cello Concerto in B Minor']")
`) });
```

يجب أن تستدعي `pieces.extend()` مع `extra_pieces` كمعلمة.

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
