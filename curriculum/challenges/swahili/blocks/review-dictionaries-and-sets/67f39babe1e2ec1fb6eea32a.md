---
id: 67f39babe1e2ec1fb6eea32a
title: Ukaguzi wa Kamusi na Seti
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Kamusi

- **Kamusi**: Kamusi ni miundo ya data iliyojengwa ndani inayohifadhi makusanyo ya jozi za ufunguo-thamani. Funguo zinapaswa kuwa aina za data zisizobadilika. Hii ni sintaksia ya jumla ya kamusi ya Python:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **`dict()` Kijenzi**: Kijenzi cha `dict()` ni njia mbadala ya kujenga kamusi. Unapita orodha ya tuple kama hoja kwa kijenzi cha `dict()`. Tuple hizi zinafunguo kama kipengele cha kwanza na thamani kama kipengele cha pili.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Uandishi wa mabano**: Ili kupata thamani ya jozi ya ufunguo-thamani, unaweza kutumia sintaksia inayojulikana kama uandishi wa mabano.

```python
dictionary[key]
```

## Njia za kawaida za kamusi

- **Njia ya `get()`**: Njia ya `get()` inarudisha thamani inayohusiana na ufunguo. Ni sawa na uandishi wa mabano, lakini inakuwezesha kuweka thamani ya chaguo-msingi, kuzuia makosa ikiwa ufunguo haupo.

```python
dictionary.get(key, default)
```

- **Njia za `keys()` na `values()`**: Njia za `keys()` na `values()` hurudisha kitu cha mtazamo chenye funguo zote na thamani zote katika kamusi, mtawalia. Kitu cha mtazamo ni njia ya kuona yaliyomo katika kamusi bila kuunda nakala tofauti ya data.

```python
pizza = {
    'name': 'Margherita Pizza',
    'price': 8.9,
    'calories_per_slice': 250
}

pizza.keys()
# dict_keys(['name', 'price', 'calories_per_slice'])

pizza.values()
# dict_values(['Margherita Pizza', 8.9, 250])
```

- **Njia ya `items()`**: Njia ya `items()` hurudisha kitu cha mtazamo chenye jozi zote za ufunguo-thamani katika kamusi, ikijumuisha funguo na thamani.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **Njia ya `clear()`**: Njia ya `clear()` huondoa jozi zote za ufunguo-thamani kutoka kamusi.

```python
pizza.clear()
```

- **Njia ya `pop()`**: Njia ya `pop()` huondoa jozi ya ufunguo-thamani yenye ufunguo uliotajwa kama hoja ya kwanza na hurudisha thamani yake. Ikiwa ufunguo haupo, hurudisha thamani ya chaguo-msingi iliyotajwa kama hoja ya pili. Ikiwa ufunguo haupo na thamani ya chaguo-msingi haijatolewa, `KeyError` hutolewa.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **Njia ya `popitem()`**: Katika Python 3.7 na zaidi, njia ya `popitem()` huondoa kipengele cha mwisho kilichowekwa.

```python
pizza.popitem()
```

- **Njia ya `update()`**: Njia ya `update()` husahihisha jozi za ufunguo-thamani kwa jozi za ufunguo-thamani za kamusi nyingine. Ikiwa zinafunguo sawa, thamani zao hubadilishwa. Funguo mpya zitaongezwa kama jozi mpya za ufunguo-thamani.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Kurudia juu ya kamusi

- **Kurudia juu ya thamani**: Ikiwa unahitaji kurudia juu ya thamani katika kamusi, unaweza kuandika mzunguko wa `for` na `values()` kupata thamani zote za kamusi.

```python
products = {
    'Laptop': 990,
    'Smartphone': 600,
    'Tablet': 250,
    'Headphones': 70,
}

for price in products.values():
    print(price)
```

Matokeo:

```md
990
600
250
70
```

- **Kurudia juu ya funguo**: Ikiwa unahitaji kurudia juu ya funguo katika kamusi ya `products` hapo juu, unaweza kuandika `products.keys()` au `products` moja kwa moja.

```python
for product in products.keys():
    print(product)

# Or

for product in products:
    print(product)
```

Matokeo:

```md
Laptop
Smartphone
Tablet
Headphones
```

- **Kurudia juu ya jozi za ufunguo-thamani**: Ikiwa unahitaji kurudia juu ya funguo na thamani zao kwa wakati mmoja, unaweza kurudia juu ya `products.items()`. Unapata tuple binafsi zenye funguo na thamani zao.

```python
for product in products.items():
    print(product)
```

Matokeo:

```md
('Laptop', 990)
('Smartphone', 600)
('Tablet', 250)
('Headphones', 70)
```

Ili kuhifadhi ufunguo na thamani katika vigezo tofauti vya mzunguko, unahitaji kuvitenganisha kwa koma. Kigezo cha kwanza huhifadhi ufunguo, na cha pili huhifadhi thamani.

```python
for product, price in products.items():
    print(product, price)
```

Matokeo:

```md
Laptop 990
Smartphone 600
Tablet 250
Headphones 70
```

- **Kitendakazi cha `enumerate()`**: Ikiwa unahitaji kurudia juu ya kamusi huku ukifuatilia kielezo, unaweza kuita kitendakazi cha `enumerate()`. Kitendakazi hurudisha kitu cha `enumerate`, ambacho huweka nambari kwa kila kipengele, kama kielezo. Unaweza kuanza kielezo kutoka nambari yoyote, lakini kwa chaguo-msingi huanza kutoka 0.

Kuweka kielezo na kipengele katika vigezo tofauti vya mzunguko ni njia ya kawaida ya kutumia `enumerate()`. Kwa mfano, kwa `products.items()`, unaweza kupata jozi nzima ya ufunguo-thamani pamoja na kielezo:

```python
for index, product in enumerate(products.items()):
    print(index, product)
```

Matokeo:

```md
0 ('Laptop', 990)
1 ('Smartphone', 600)
2 ('Tablet', 250)
3 ('Headphones', 70)
```

Ili kubadilisha thamani ya mwanzo ya hesabu, unaweza kupita hoja ya pili kwa `enumerate()`. Kwa mfano, hapa tunaanza hesabu kutoka 1.

```python
for index, product in enumerate(products.items(), 1):
    print(index, product)
```

Matokeo:

```md
1 ('Laptop', 990)
2 ('Smartphone', 600)
3 ('Tablet', 250)
4 ('Headphones', 70)
```

## Seti

- **Seti**: Seti ni miundo ya data iliyojengwa ndani katika Python ambayo hairuhusu thamani rudufu. Seti ni zinazobadilika na hazina mpangilio, maana yake vipengele vyake havihifadhiwi kwa mpangilio maalum, hivyo huwezi kutumia vielezo au funguo kuzipata. Pia, seti zinaweza kuwa na thamani za aina za data zisizobadilika tu, kama nambari, mfuatano wa herufi, na tuple.

- **Kufafanua seti**: Ili kufafanua seti, unahitaji kuandika vipengele vyake ndani ya mabano ya mviringo na kuvitenganisha kwa koma.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Kufafanua seti tupu**: Ikiwa unahitaji kufafanua seti tupu, lazima utumie kitendakazi cha `set()`. Kuandika mabano ya mviringo tupu pekee kutaunda kamusi moja kwa moja.

```python
set() # Set
{}    # Dictionary
```

## Njia za kawaida za seti

- **Njia ya `add()`**: Unaweza kuongeza kipengele kwenye seti kwa njia ya `add()`, ukipita kipengele kipya kama hoja.

```python
my_set.add(6)
```

- **Njia za `remove()` na `discard()`**: Kuondoa kipengele kutoka seti, unaweza kutumia njia ya `remove()` au njia ya `discard()`, ukipita kipengele unachotaka kuondoa kama hoja. Njia ya `remove()` itatoa `KeyError` ikiwa kipengele hakipatikani, wakati njia ya `discard()` haitatoa.

```python
my_set.remove(4)
my_set.discard(4)
```

- **Njia ya `clear()`**: Njia ya `clear()` huondoa vipengele vyote kutoka seti.

```python
my_set.clear()
```

## Operesheni za kihesabu za seti

- **Njia za `issubset()` na `issuperset()`**: Njia za `issubset()` na `issuperset()` huangalia kama seti ni seti ndogo au seti kubwa ya seti nyingine, mtawalia.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **Njia ya `isdisjoint()`**: Njia ya `isdisjoint()` huangalia kama seti mbili hazina vipengele vinavyofanana.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **Kipengele cha muungano (`|`)**: Kipengele cha muungano `|` hurudisha seti mpya yenye vipengele vyote kutoka seti zote mbili.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Kipengele cha mkusanyiko (`&`)**: Kipengele cha mkusanyiko `&` hurudisha seti mpya yenye vipengele vinavyopatikana katika seti zote.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Kipengele cha tofauti (`-`)**: Kipengele cha tofauti `-` hurudisha seti mpya yenye vipengele vya seti ya kwanza ambavyo havipo katika seti nyingine.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Kipengele cha tofauti ya usawa (`^`)**: Kipengele cha tofauti ya usawa `^` hurudisha seti mpya yenye vipengele vilivyoko katika seti ya kwanza au ya pili, lakini si zote mbili.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **Kipengele cha `in`**: Unaweza kuangalia kama kipengele kiko katika seti au la kwa kutumia kipengele cha `in`.

```python
print(5 in my_set) # True
```

## Maktaba ya kawaida ya Python

- **Maktaba ya kawaida ya Python**: Maktaba hukupa msimbo uliotangulia kuandikwa na unaoweza kutumika tena, kama vitendakazi, madarasa, na miundo ya data, ambayo unaweza kutumia tena katika miradi yako. Python ina maktaba pana ya kawaida yenye moduli zilizojengwa ndani zinazotekeleza suluhisho za viwango kwa changamoto na zoezi nyingi. Mifano ya moduli maarufu zilizojengwa ndani ni `math`, `random`, `re` (mfupi wa "usemi wa kawaida"), na `datetime`.

## Kauli ya import

- **Kauli ya import**: Ili kupata vipengele vilivyofafanuliwa katika moduli zilizojengwa ndani, unatumia kauli ya import. Kauli za import kwa kawaida huandikwa juu ya faili. Kauli za import hufanya kazi sawa kwa vitendakazi, madarasa, constants, vigezo, na vipengele vingine vyote vilivyofafanuliwa katika moduli.

- **Kauli ya msingi ya import**: Unaweza kutumia neno kuu la `import` ikifuatiwa na jina la moduli:

```python
import module_name
```

Kisha, ikiwa unahitaji kuita kitendakazi kutoka moduli hiyo, utatumia uandishi wa nukta, na jina la moduli likifuatiwa na jina la kitendakazi.

```python
module_name.function_name()
```

Kwa mfano, utaandika yafuatayo katika msimbo wako kuleta moduli ya `math` na kupata mzizi wa mraba wa 36:

```python
import math

math.sqrt(36)
```

- **Kuleta moduli kwa jina tofauti**: Ikiwa unahitaji kuleta moduli kwa jina tofauti (inayojulikana pia kama "jina la utani"), unaweza kutumia `as` ikifuatiwa na jina la utani mwishoni mwa kauli ya import. Hii hutumika mara nyingi kwa majina marefu ya moduli au kuepuka migongano ya majina.

```python
import module_name as module_alias
```

Kwa mfano, kurejelea moduli ya `math` kama `m` katika msimbo wako, unaweza kuweka jina la utani kama hii:

```python
import math as m
```

Kisha, unaweza kupata vipengele vya moduli kwa kutumia jina la utani:

```python
m.sqrt(36)
```

- **Kuleta vipengele maalum**: Ikiwa hautaji kila kitu kutoka moduli, unaweza kuleta vipengele maalum kwa kutumia `from`. Katika kesi hii, kauli ya import huanza na `from`, ikifuatiwa na jina la moduli, kisha neno kuu la `import` na hatimaye majina ya vipengele unavyotaka kuleta.

```python
from module_name import name1, name2
```

Kisha, unaweza kutumia majina haya bila kiambishi awali cha moduli katika script yako ya Python. Kwa mfano:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
Hii ni msaada, lakini inaweza kusababisha migongano ya majina ikiwa tayari una vitendakazi au vigezo vyenye majina sawa. Tafadhali zingatia hili unapoamua aina gani ya kauli ya import unayotaka kutumia.

Ikiwa unahitaji kuweka majina haya na majina ya utani, unaweza pia kufanya hivyo, ukitumia neno kuu la `as` ikifuatiwa na jina la utani.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Kauli ya import yenye nyota (`*`)**: Nyota inamwambia Python unataka kuleta kila kitu katika moduli hiyo, lakini unataka kuileta ili usihitaji kutumia jina la moduli kama kiambishi awali.

```python
from module_name import *
```

Kwa mfano, ikiwa utatumia hii kuleta moduli ya `math`, utaweza kuita kitendakazi chochote kilichofafanuliwa katika moduli hiyo bila kutaja jina la moduli kama kiambishi awali.

```python
from math import *
print(sqrt(36))  # 6.0
```

Hata hivyo, hii kwa kawaida haipendekezwi kwa sababu inaweza kusababisha migongano ya majina na kufanya iwe vigumu kujua majina yanatoka wapi.

## `if __name__ == '__main__'`

- **Kigezo cha `__name__`**: `__name__` ni kigezo maalum kilichojengwa ndani katika Python. Wakati faili ya Python inatekelezwa moja kwa moja, Python huweka thamani ya kigezo hiki kuwa mfuatano wa herufi `"__main__"`. Lakini ikiwa faili ya Python inaletwa kama moduli katika script nyingine ya Python, thamani ya kigezo cha `__name__` huwekwa kuwa jina la moduli hiyo.

Hii ndiyo sababu mara nyingi utapata masharti haya katika script za Python. Yana msimbo unaotaka kuendeshwa **tu** ikiwa script ya Python inaendeshwa kama programu kuu.

```python
if __name__ == '__main__': 
    # Code
```

# --assignment--

Kagua mada na dhana za kamusi na seti.
