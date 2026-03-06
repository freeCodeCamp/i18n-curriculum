---
id: 697a7f71ebfcd9e4cacd69c2
title: Passo 8
challengeType: 20
dashedName: step-8
---

# --description--

A conta é dividida, mas a divisão frequentemente resulta em números decimais longos. Como o dinheiro normalmente é representado com duas casas decimais, você deve arredondar o resultado final.

Python fornece uma `round()` função embutida para isso. Ela recebe dois argumentos: o número que você quer arredondar e o número de casas decimais a manter. Aqui está um exemplo:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Use a `round()` função para arredondar `final_bill` para duas casas decimais e atribuir o resultado a uma nova variável chamada `each_pays`.

Finalmente, use `print()` para exibir a string `Each person pays:` seguida de um espaço e da sua variável `each_pays`.

Com isso, a oficina do divisor de conta está completa.

# --hints--

Você deve definir uma variável chamada `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

Você deve usar a `round()` função para arredondar `final_bill` para duas casas decimais e atribuir o resultado à sua variável `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

Você deve usar `print()` para exibir a string `Each person pays:` seguida de um espaço e da sua variável `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_call("print('Each person pays:', each_pays)") or _Node(_code).has_call("print(f'Each person pays: {each_pays}')")`))
})
```

# --seed--

## --seed-contents--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

--fcc-editable-region--

--fcc-editable-region--
```

# --solutions--

```py
running_total = 0

num_of_friends = 4

appetizers = 37.89
main_courses = 57.34
desserts = 39.39
drinks = 64.21

running_total += appetizers + main_courses + desserts + drinks
print('Total bill so far:', running_total)

tip = running_total * 0.25
print('Tip amount:', tip)

running_total += tip
print('Total with tip:', running_total)

final_bill = running_total / num_of_friends
print('Bill per person:', final_bill)

each_pays = round(final_bill, 2)
print('Each person pays:', each_pays)
```
