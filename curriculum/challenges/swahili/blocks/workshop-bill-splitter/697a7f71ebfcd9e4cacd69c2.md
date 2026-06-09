---
id: 697a7f71ebfcd9e4cacd69c2
title: Hatua 8
challengeType: 20
dashedName: step-8
---

# --description--

Bili imegawanywa, lakini mgawanyo mara nyingi husababisha nambari ndefu za desimali. Kwa kuwa pesa kawaida huwakilishwa na sehemu mbili za desimali, unapaswa kuzungusha matokeo ya mwisho.

Katika funzo la awali, ulijifunza kuhusu kitendakazi cha `round()` ambacho kinachukua hoja mbili: nambari unayotaka kuzungusha na idadi ya sehemu za desimali za kuhifadhi. Hapa kuna mfano:

```py
num = 4.815162342
round(num, 3) # 4.815
```

Tumia kitendakazi cha `round()` kuzungusha `final_bill` hadi sehemu mbili za desimali na weka thamani hiyo katika kigezo kipya kinachoitwa `each_pays`.

Mwishowe, tumia `print()` kuonyesha mfuatano wa herufi `Each person pays:` ukifuatiwa na nafasi na kigezo chako cha `each_pays`.

Kwa hivyo, warsha ya kugawanya bili imekamilika.

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

match = re.search(r"Each person pays: ([0-9]+(?:\\.[0-9]+)?)", buffer.getvalue())

assert match
assert abs(float(match.group(1)) - 62.13) < 1e-6
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
