---
id: 64de4bccf5becb208a48ca97
title: الخطوة 13
challengeType: 20
dashedName: step-13
---

# --description--

في لغز برج هانوي، يمكنك تحديد الأعمدة الثلاثة حسب وظيفتها:

- العمود الأول هو المصدر، حيث تُرص جميع الأقراص فوق بعضها في بداية اللعبة.
- العمود الثاني هو عمود مساعد، ويساعد في نقل الأقراص إلى العمود الهدف.
- العمود الثالث هو الهدف، حيث يجب وضع جميع الأقراص بترتيب في نهاية اللعبة.

حاليًا، لا تأخذ الدالة `move()` أي معلمات. غيّر إعلان الدالة ليأخذ 4 معلمات: `n`، `source`، `auxiliary`، و`target`. ثم مرّر `NUMBER_OF_DISKS` والسلاسل النصية `'A'`، `'B'`، و`'C'` كمعلمات لاستدعاء الدالة. الترتيب مهم.

# --hints--

يجب أن تحتوي دالتك `move()` على المعلمات `n`، `source`، `auxiliary`، و`target`. الترتيب مهم.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

يجب أن تمرر `NUMBER_OF_DISKS` والسلاسل النصية `'A'`، `'B'`، و`'C'` إلى `move()`. الترتيب مهم.

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
