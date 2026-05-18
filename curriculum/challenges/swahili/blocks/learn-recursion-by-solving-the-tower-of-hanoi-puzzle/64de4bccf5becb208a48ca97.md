---
id: 64de4bccf5becb208a48ca97
title: Hatua 13
challengeType: 20
dashedName: step-13
---

# --description--

Katika fumbo la Tower of Hanoi, unaweza kutambua nguzo tatu kulingana na madhumuni yao:

- Nguzo ya kwanza ni chanzo, ambapo diski zote zimewekwa juu ya kila moja mwanzoni mwa mchezo.
- Nguzo ya pili ni nguzo ya msaada, na husaidia katika kusogeza diski kwenda kwenye nguzo lengwa.
- Nguzo ya tatu ni lengwa, ambapo diski zote zinapaswa kuwekwa kwa mpangilio mwishoni mwa mchezo.

Kwa sasa, kitendakazi cha `move()` hakichukui vigezo vyovyote. Badilisha tamko la kitendakazi ili ichukue vigezo 4: `n`, `source`, `auxiliary`, na `target`. Kisha, pita `NUMBER_OF_DISKS` na mfuatano wa herufi `'A'`, `'B'`, na `'C'` kama hoja kwenye wito wa kitendakazi chako. Mpangilio ni muhimu.

# --hints--

Kitendakazi chako cha `move()` kinapaswa kuwa na `n`, `source`, `auxiliary`, na `target` kama vigezo. Mpangilio ni muhimu.

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

Unapaswa kupitisha `NUMBER_OF_DISKS` na mfuatano wa herufi `'A'`, `'B'`, na `'C'` kwa `move()`. Mpangilio ni muhimu.

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
