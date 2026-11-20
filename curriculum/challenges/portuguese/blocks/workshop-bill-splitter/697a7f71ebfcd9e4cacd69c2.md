---
id: 697a7f71ebfcd9e4cacd69c2
title: Passo 9
challengeType: 20
dashedName: step-9
---

# --description--

O especificador de formato `:.2f` que você tem usado só muda como os números são exibidos. Os valores em si ainda mantêm todas as suas casas decimais. Para obter um número que seja realmente arredondado e possa ser usado em cálculos posteriores, você pode usar a função `round()`.

Em uma lição anterior, você aprendeu que a função `round()` recebe dois argumentos: o número que você quer arredondar e a quantidade de casas decimais a manter. Aqui está um exemplo:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Use a `round()` função para arredondar `final_bill` para duas casas decimais e atribuir o resultado a uma nova variável chamada `each_pays`.

Depois, use `print()` para exibir a string `Each person pays:` seguida de um espaço e da sua variável `each_pays`. Não formate o número desta vez.

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
    test: () => runPython(`
        import io, contextlib, re
        buffer = io.StringIO()
        with contextlib.redirect_stdout(buffer):
            exec(_code)
        assert re.search(r"^Each person pays: 62\\.1$", buffer.getvalue(), re.M)
    `)
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
drinks = 64.11

running_total += appetizers + main_courses + desserts + drinks
print(f'Total bill so far: {running_total:.2f}')

tip = running_total * 0.25
print(f'Tip amount: {tip:.2f}')

running_total += tip
print(f'Total with tip: {running_total:.2f}')

final_bill = running_total / num_of_friends
print(f'Bill per person: {final_bill:.2f}')

--fcc-editable-region--

--fcc-editable-region--
```
