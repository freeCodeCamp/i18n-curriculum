---
id: 6af5ed0588b6497dfddeeeb8
title: الخطوة 5
challengeType: 20
dashedName: step-5
---

# --description--

القوائم قابلة للتغيير، مما يعني أنه يمكنك تعديلها بعد إنشائها.

تضيف الطريقة `append()` عنصرًا إلى نهاية القائمة. تُعدل القائمة في مكانها، لذلك لا تحتاج إلى إعادة تعيين النتيجة إلى المتغير:

```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('date')
print(fruits) # ['apple', 'banana', 'cherry', 'date']
```

يريد المايسترو إنهاء الحفل بقطعة حيوية. استخدم `append()` لإضافة السلسلة النصية `Slavonic Dance No. 8` إلى نهاية `pieces`. ثم اطبع `pieces` لرؤية القائمة المحدثة.

# --hints--

يجب استدعاء `pieces.append()` مع السلسلة النصية `Slavonic Dance No. 8`.

```js
({ test: () => runPython(`
assert _Node(_code).has_stmt("pieces.append('Slavonic Dance No. 8')")
`) });
```

يجب طباعة `pieces` بعد استدعاء `pieces.append()`.

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
