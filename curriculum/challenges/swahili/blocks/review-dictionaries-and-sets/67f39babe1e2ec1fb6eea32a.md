---
id: 67f39babe1e2ec1fb6eea32a
title: Ukaguzi wa Kamusi na Seti
challengeType: 31
dashedName: review-dictionaries-and-sets
---

# --description--

## Kamusi

- **Kamusi**: Kamusi ni miundo ya data iliyojengwa ndani inayohifadhi makusanyo ya jozi za ufunguo-thamani. Funguo lazima ziwe za kipekee. Nambari, mfuatano wa herufi, na tuple za nambari na mfuatano wa herufi zinaweza kutumika kama funguo, lakini tuple inayojumuisha orodha haiwezi. Thamani zinaweza kurudiwa na zinaweza kuwa aina yoyote ya data. Kamusi pia huhifadhi mpangilio wa vitu vilivyoongezwa. Hii ni sintaksia ya jumla ya kamusi ya Python:

```python
dictionary = {
    key1: value1,
    key2: value2
}
```

- **Kijenzi cha `dict()`**: Kijenzi cha `dict()` ni njia mbadala ya kujenga kamusi. Unapitisha orodha ya tuple kama hoja kwa kijenzi cha `dict()`. Tuple hizi zinafunguo kama kipengele cha kwanza na thamani kama kipengele cha pili.

```python
pizza = dict([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250), ('toppings', ['mozzarella', 'basil'])])
```

- **Uandishi wa mabano**: Ili kupata thamani ya jozi ya ufunguo-thamani, unaweza kutumia sintaksia inayojulikana kama uandishi wa mabano.

```python
dictionary[key]
```

- **Mgawo wa mabano**: Unaweza kuongeza jozi mpya ya ufunguo-thamani au kusasisha thamani ya ufunguo uliopo kwa kutumia uandishi wa mabano. Ikiwa ufunguo haupo, huongezwa. Ikiwa tayari upo, thamani yake imebadilishwa.

```python
dictionary[key] = value
```

- **Kusasisisha thamani wakati wa kurudia**: Unaweza kusasisha thamani za funguo zilizopo ndani ya mzunguko unaotumia `items()` kwa kuweka thamani kwa kila ufunguo.

```python
products = {'apple': 10, 'pear': 20}

for product, price in products.items():
    products[product] = round(price * 0.8)

print(products)  # {'apple': 8, 'pear': 16}
```

- **Kufungua kamusi kwa `**`**: Opereta `**` hufungua kamusi kuwa hoja za kigezo, ambapo kila ufunguo hutumika kama jina la kigezo.

```python
def greet(name, age):
    print(f'{name} is {age}')

data = {'name': 'Jessica', 'age': 30}
greet(**data)  # Jessica is 30
```

- **Kazi ya `all()`**: Kazi ya `all()` hurudisha `True` ikiwa kila kipengele katika inayoweza kurudiwa ni kweli. Pia hurudisha `True` kwa inayoweza kurudiwa tupu.

```python
print(all([1, 'a', True]))  # True
print(all([1, 0, True]))    # False
```

## Njia za kawaida za kamusi

- **`get()`**: Njia ya `get()` inapata thamani inayohusiana na ufunguo. Ni sawa na uandishi wa mabano, lakini inakuwezesha kuweka thamani ya chaguo-msingi, kuzuia makosa ikiwa ufunguo haupo.

```python
dictionary.get(key, default)
```

- **`keys()` na `values()`**: Njia za `keys()` na `values()` hurudisha kitu cha mtazamo chenye funguo zote na thamani zote katika kamusi, mtawalia. Kitu cha mtazamo ni njia ya kuona yaliyomo katika kamusi bila kuunda nakala tofauti ya data.

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

- **`items()`**: Njia ya `items()` hurudisha kitu cha mtazamo chenye jozi zote za ufunguo-thamani katika kamusi, ikiwa ni pamoja na funguo na thamani.

```python
pizza.items()
# dict_items([('name', 'Margherita Pizza'), ('price', 8.9), ('calories_per_slice', 250)])
```

- **`clear()`**: Njia ya `clear()` huondoa jozi zote za ufunguo-thamani kutoka kamusi.

```python
pizza.clear()
```

- **`pop()`**: Njia ya `pop()` huondoa jozi ya ufunguo-thamani yenye ufunguo uliotajwa kama hoja ya kwanza na kurudisha thamani yake. Ikiwa ufunguo haupo, inarudisha thamani ya chaguo-msingi kama hoja ya pili. Ikiwa ufunguo haupo na thamani ya chaguo-msingi haitajwi, hitilafu ya `KeyError` itatupwa.

```python
pizza.pop('price', 10)
pizza.pop('total_price') # KeyError
```

- **`popitem()`**: Katika Python 3.7 na zaidi, njia ya `popitem()` huondoa kipengele cha mwisho kilichowekwa.

```python
pizza.popitem()
```

- **`update()`**: Njia ya `update()` husahihisha jozi za ufunguo-thamani kwa jozi za ufunguo-thamani za kamusi nyingine. Ikiwa zinafunguo sawa, thamani zao hubadilishwa. Funguo mpya zitaongezwa kama jozi mpya za ufunguo-thamani.

```python
pizza.update({ 'price': 15, 'total_time': 25 })
```

## Kurudia juu ya kamusi

- **Kurudia juu ya thamani**: Ikiwa unahitaji kurudia juu ya thamani katika kamusi, unaweza kuandika `for` loop na `values()` kupata thamani zote za kamusi.

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

- **Kurudia juu ya jozi za ufunguo-thamani**: Ikiwa unahitaji kurudia funguo na thamani zao sambamba, unaweza kurudia juu ya `products.items()`. Unapata tuple binafsi zenye funguo na thamani zao.

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

- **`enumerate()`**: Ikiwa unahitaji kurudia juu ya kamusi huku ukifuatilia kielezo, unaweza kuita kitendakazi cha `enumerate()`. Kitendakazi kinarudisha kitu cha `enumerate` kinachoweka nambari kamili kwa kila kipengele, kama kielezo. Unaweza kuanza kuhesabu kutoka nambari yoyote, lakini kwa chaguo-msingi huanza kwa 0.

Kuweka kielezo na kipengele katika vigezo tofauti vya mzunguko ni njia ya kawaida ya kutumia `enumerate()`. Kwa mfano, kwa `products.items()`, unaweza kupata jozi nzima ya thamani ya ufunguo pamoja na faharasa:

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

Ili kubinafsisha thamani ya mwanzo ya kuhesabu, unaweza kupitisha hoja ya pili kwa `enumerate()`. Kwa mfano, hapa tunaanza kuhesabu kutoka 1.

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

- **Sets**: Sets ni miundo ya data iliyojengwa ndani katika Python ambayo hairuhusu thamani kurudiwa. Sets ni zinazobadilika na hazina mpangilio maalum, ambayo ina maana vipengele vyake havihifadhiwi kwa mpangilio wowote maalum, hivyo huwezi kutumia nambari za index au funguo kuzipata. Nambari, mfuatano wa herufi, na tuple za nambari na mfuatano wa herufi zinaweza kuwa vipengele vya seti, lakini tuple inayojumuisha orodha haiwezi.

- **Kufafanua set**: Ili kufafanua set, unahitaji kuandika vipengele vyake ndani ya mabano ya mviringo na kuvitenganisha kwa koma.

```python
my_set = {1, 2, 3, 4, 5}
```

- **Kufafanua set tupu**: Ikiwa unahitaji kufafanua set tupu, lazima utumie kitendakazi cha `set()`. Kuandika mabano ya mviringo tupu tu kutaunda kamusi moja kwa moja.

```python
set() # Set
{}    # Dictionary
```

- **Kutengeneza seti kutoka kwa inayoweza kurudiwa**: Kijenzi cha `set()` kinakubali kitu kinachoweza kurudiwa, kama orodha, mfuatano wa herufi, au kamusi (ambayo hutoa funguo zake), mradi vipengele vyake vinaweza kuhifadhiwa katika seti. Kwa mfano, orodha ya nambari ni halali, lakini orodha inayojumuisha orodha nyingine si halali. Hii ni muhimu kwa kulinganisha funguo unazotarajia na funguo ulizonazo kweli.

```python
expected_keys = {'name', 'age'}
data = {'name': 'Jessica', 'age': 30}

print(set(data) == expected_keys)  # True
```

## Njia za kawaida za set

- **`add()`**: Unaweza kuongeza kipengele kwenye set kwa njia ya `add()`, ukipitisha kipengele kipya kama hoja.

```python
my_set.add(6)
```

- **`remove()` na `discard()`**: Kuondoa kipengele kutoka set, unaweza kutumia njia ya `remove()` au `discard()`, ukipitisha kipengele unachotaka kuondoa kama hoja. Njia ya `remove()` itatupa hitilafu ya `KeyError` ikiwa kipengele hakipatikani, wakati `discard()` haitatupa hitilafu.

```python
my_set.remove(4)
my_set.discard(4)
```

- **`clear()`**: Njia ya `clear()` huondoa vipengele vyote kutoka set.

```python
my_set.clear()
```

## Operesheni za kihesabu za set

- **`issubset()` na `issuperset()`**: Njia za `issubset()` na `issuperset()` zinakagua kama set ni seti ndogo au seti kubwa ya set nyingine, mtawalia.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 5}

print(your_set.issubset(my_set)) # True
print(my_set.issuperset(your_set)) # True
```

- **`isdisjoint()`**: Njia ya `isdisjoint()` inakagua kama sets mbili hazina vipengele vinavyofanana.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

print(my_set.isdisjoint(your_set)) # True
```

- **Operator ya muungano (`|`)**: Operator ya muungano `|` inarudisha set mpya yenye vipengele vyote kutoka sets zote mbili.

```python
my_set = {1, 2, 3}
your_set = {4, 5, 6}

my_set | your_set # {1, 2, 3, 4, 5, 6}
```

- **Operator ya mkusanyiko (intersection) (`&`)**: Operator ya mkusanyiko `&` inarudisha set mpya yenye vipengele vinavyopatikana katika sets zote mbili.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set & your_set # {2, 3, 4}
```

- **Operator ya tofauti (difference) (`-`)**: Operator ya tofauti `-` inarudisha set mpya yenye vipengele za seti ya kwanza ambazo hazipo katika seti ya pili.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set - your_set # {1, 5}
```

- **Operator ya tofauti ya usawa (symmetric difference) (`^`)**: Operator ya tofauti ya usawa `^` inarudisha set mpya yenye vipengele ambazo ziko katika seti ya kwanza au ya pili, lakini si zote mbili.

```python
my_set = {1, 2, 3, 4, 5}
your_set = {2, 3, 4, 6}

my_set ^ your_set # {1, 5, 6}
```

- **Vendeshaji changamano wa seti**: Vendeshaji `|=`, `&=`, `-=`, na `^=` hufanya operesheni za muungano, mkusanyiko, tofauti, na tofauti ya usawa, lakini husasisha seti iliyopo badala ya kuunda mpya.

```python
my_set = {1, 2, 3}

my_set |= {3, 4}          # {1, 2, 3, 4}
my_set &= {2, 3, 4, 5}    # {2, 3, 4}
my_set -= {4}             # {2, 3}
my_set ^= {3, 5}          # {2, 5}
```

- **Operator ya kuangalia uwepo (`in`)**: Unaweza kuangalia kama kipengele kiko katika set au la kwa operator ya `in`.

```python
print(5 in my_set) # True
```

## Maktaba ya kawaida ya Python

- **Maktaba ya kawaida ya Python**: Maktaba inakupa msimbo uliandikwa tayari na unaoweza kutumika tena, kama vitendakazi, madarasa, na miundo ya data, ambayo unaweza kutumia katika miradi yako. Python ina maktaba kubwa ya kawaida yenye moduli zilizojengwa ndani zinazotekeleza suluhisho za viwango kwa matatizo na kazi nyingi. Baadhi ya mifano ya moduli maarufu zilizojengwa ndani ni `math`, `random`, `re` (mfupi wa "regular expressions"), na `datetime`.

## Kauli ya import

- **Kauli ya import**: Ili kupata vipengele vilivyotajwa katika moduli zilizojengwa ndani, unatumia kauli ya import. Kauli za import kwa kawaida huandikwa juu ya faili. Kauli za import hufanya kazi sawa kwa vitendakazi, madarasa, constants, vigezo, na vipengele vingine vyote vilivyotajwa katika moduli.

- **Kauli ya msingi ya import**: Unaweza kutumia neno kuu `import` ikifuatiwa na jina la moduli:

```python
import module_name
```

Kisha, ikiwa unahitaji kuita kitendakazi kutoka moduli hiyo, utatumia uandishi wa nukta, na jina la moduli ikifuatiwa na jina la kitendakazi.

```python
module_name.function_name()
```

Kwa mfano, utaandika ifuatayo katika msimbo wako kuleta moduli ya `math` na kupata mzizi wa mraba wa 36:

```python
import math

math.sqrt(36)
```

- **Kuleta moduli kwa jina tofauti**: Ikiwa unahitaji kuleta moduli kwa jina tofauti (inayojulikana kama "alias"), unaweza kutumia neno kuu `as` kama alias mwishoni mwa kauli ya import. Hii hutumika mara nyingi kwa majina marefu ya moduli au kuepuka migongano ya majina.

```python
import module_name as module_alias
```

Kwa mfano, kurejelea moduli ya `math` kama `m` katika msimbo wako, unaweza kuweka alias kama hii:

```python
import math as m
```

Kisha, unaweza kupata vipengele vya moduli ukitumia alias:

```python
m.sqrt(36)
```

- **Kuleta vipengele maalum**: Ikiwa huna haja ya kila kitu kutoka moduli, unaweza kuleta vipengele maalum kwa kutumia `from`. Katika kesi hii, kauli ya import huanza na `from`, ikifuatiwa na jina la moduli, kisha neno kuu `import`, na hatimaye majina ya vipengele unavyotaka kuleta.

```python
from module_name import name1, name2
```

Kisha, unaweza kutumia majina haya bila kiambishi cha moduli katika script yako ya Python. Kwa mfano:

```python
from math import radians, sin, cos

angle_degrees = 40
angle_radians = radians(angle_degrees)

sine_value = sin(angle_radians)
cos_value = cos(angle_radians)

print(sine_value) # 0.6427876096865393
print(cos_value)  # 0.766044443118978
```
 
Hii ni msaada, lakini inaweza kusababisha migongano ya majina ikiwa tayari una vitendakazi au vigezo vyenye majina sawa. Tafadhali zingatia hili unapoamua aina gani ya kauli ya import utumie.

Ikiwa unahitaji kuweka majina haya kuwa na alias, unaweza pia kufanya hivyo kwa kutumia neno kuu `as` ikifuatiwa na alias.

```python
from module_name import name1 as alias1, name2 as alias2
```

- **Kauli ya import yenye nyota (`*`)**: Nyota inaambia Python kwamba unataka kuleta majina ya umma ya moduli ili usihitaji kutumia jina la moduli kama kiambishi awali. Ikiwa moduli inaeleza `__all__`, orodha hiyo hudhibiti majina yanayoletwa. Vinginevyo, majina yanayoanza na mstari chini hayajumuishwi.

```python
from module_name import *
```

Kwa mfano, ikiwa utatumia hii kuleta moduli ya `math`, utaweza kuita kitendakazi chochote kilichotajwa katika moduli hiyo bila kuonyesha jina la moduli kama kiambishi.

```python
from math import *
print(sqrt(36))  # 6.0
```

Hata hivyo, hii kwa kawaida haipendekezwi kwa sababu inaweza kusababisha migongano ya majina na kufanya iwe vigumu kujua majina yanatoka wapi.

## `if __name__ == '__main__'`

- **Kigezo cha `__name__`**: `__name__` ni kigezo maalum kilichojengwa ndani katika Python. Wakati faili ya Python inatekelezwa moja kwa moja, Python huweka thamani ya kigezo hiki kuwa mfuatano wa herufi `"__main__"`. Lakini ikiwa faili ya Python inaletiwa kama moduli katika script nyingine ya Python, thamani ya kigezo `__name__` huwekwa kuwa jina la moduli hiyo.

Hii ndiyo sababu mara nyingi utapata masharti haya katika skiripti za Python. Yana msimbo unaotaka kuendesha **tu** ikiwa skiripti ya Python inaendeshwa kama programu kuu.

```python
if __name__ == '__main__': 
    # Code
```

## Usemi wa kawaida

- **Usemi wa kawaida**: Usemi wa kawaida, au regex, ni muundo unaotumika kulinganisha mfululizo wa herufi katika maandishi. Ili kuvitumia katika Python, unahitaji kuimport moduli ya `re`.

- **Kitendakazi cha `re.search()`**: Kitendakazi cha `search()` hutafuta muundo mahali popote katika mfuatano wa herufi. Hurejesha kitu cha mechi ikiwa kinakipata, na `None` vinginevyo. Njia za `group()` na `span()` za kitu cha mechi hurudisha maandishi yaliyo lingana na viashiria vya kuanzia na kumalizika.

```python
import re

result = re.search('cat', 'The cat sat on the mat.')
print(result)         # <re.Match object; span=(4, 7), match='cat'>
print(result.group()) # cat
print(result.span())  # (4, 7)
```

- **Bendera**: Ulinganifu wa regex ni wa kuzingatia herufi kubwa na ndogo kwa chaguo-msingi. Bendera ya `re.IGNORECASE` hufanya ulinganifu usizingatie herufi kubwa au ndogo, kama katika `re.search('Cat', 'The cat sat', re.IGNORECASE)`.

- **Mfuatano wa herufi ghafi**: Mfuatano wa herufi ghafi, unaotengenezwa kwa kuongeza `r` kabla ya nukuu ya kufungua, hutumia mkwaju wa nyuma kama herufi halisi badala ya mfuatano wa kutoroka. Ni desturi nzuri kuandika mifumo ya regex kama mfuatano wa herufi ghafi, kama `r'\d'`.

- **Mfuatano maalum**: `\d` hulingana na nambari yoyote, `\w` hulingana na herufi yoyote ya neno (herufi, nambari, na alama ya mstari chini), na `\s` hulingana na herufi yoyote ya nafasi. `\D`, `\W`, na `\S` hulingana na kinyume chake.

- **Kihimarisha**: Kihimarisha kinaeleza ni mara ngapi herufi iliyotangulia inaweza kurudiwa: `+` mara moja au zaidi, `*` mara sifuri au zaidi, `?` mara sifuri au moja, `{n}` mara `n` hasa, na `{n,m}` kutoka mara `n` hadi `m`.

```python
import re

print(re.search(r'\d+', 'Room 42B'))    # <re.Match object; span=(5, 7), match='42'>
print(re.search(r'colou?r', 'color'))   # <re.Match object; span=(0, 5), match='color'>
print(re.search(r'\d{4}', 'Room 1987')) # <re.Match object; span=(5, 9), match='1987'>
```

## Kitendakazi muhimu katika moduli ya `re`

- **Kitendakazi cha `re.match()`**: Kama `search()`, lakini hutafuta muundo tu mwanzoni mwa mfuatano wa herufi.

- **Kitendakazi cha `re.fullmatch()`**: Hurejesha kitu cha mechi tu wakati muundo unalingana na mfuatano mzima wa herufi. Hii hufanya kitumike kwa uthibitishaji wa data.

- **Kitendakazi cha `re.findall()`**: Hurejesha orodha ya mfuatano wa herufi yenye mechi zote, au orodha tupu ikiwa hakuna mechi.

- **Kitendakazi cha `re.sub()`**: Hubadilisha kila mechi ya muundo na mfuatano mwingine wa herufi na hurudisha mfuatano mpya. Vigezo vyake vya hiari vya `count` na `flags` vinapaswa kila mara kupitishwa kama maneno ya kigezo.

```python
import re

print(re.match(r'\d+', 'apples: 42'))             # None
print(re.fullmatch(r'\d+:\d+', '10:30pm'))        # None
print(re.findall(r'\d+', 'Rooms 12, 7, and 105')) # ['12', '7', '105']
print(re.sub(r'\d', '*', '555 0123', count=3))    # *** 0123
```

# --assignment--

Kagua mada na dhana za kamusi na seti.
