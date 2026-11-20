---
id: 697a7f71ebfcd9e4cacd69c2
title: Hatua 9
challengeType: 20
dashedName: step-9
---

# --description--

Kielekezi cha muundo `:.2f` ambacho umekuwa ukikitumia hubadilisha tu jinsi nambari zinavyoonyeshwa. Thamani zenyewe bado zina sehemu zote za desimali. Ili kupata nambari ambayo imesawazishwa kweli na inaweza kutumika katika mahesabu zaidi, unaweza kutumia kitendakazi cha `round()`.

Katika funzo la awali, ulijifunza kwamba kitendakazi cha `round()` kinachukua hoja mbili: nambari unayotaka kusawazisha na idadi ya sehemu za desimali unazotaka kuhifadhi. Hapa kuna mfano:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Tumia kitendakazi cha `round()` kuzungusha `final_bill` hadi sehemu mbili za desimali na weka thamani hiyo katika kigezo kipya kinachoitwa `each_pays`.

Kisha, tumia `print()` kuonyesha mfuatano wa herufi `Each person pays:` ukifuatiwa na nafasi na kigezo chako cha `each_pays`. Usifanye muundo wa nambari wakati huu.

# --hints--

Unapaswa kufafanua kigezo kinachoitwa `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).has_variable('each_pays')
    `))
})
```

Unapaswa kutumia kitendakazi cha `round()` kuzungusha `final_bill` hadi sehemu mbili za desimali na weka thamani hiyo katika kigezo chako cha `each_pays`.

```js
({
    test: () => assert(runPython(`
    _Node(_code).find_variable('each_pays').is_equivalent('each_pays = round(final_bill, 2)')
    `))
})
```

Unapaswa kutumia `print()` kuonyesha mfuatano wa herufi `Each person pays:` ukifuatiwa na nafasi na kigezo chako cha `each_pays`.

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
