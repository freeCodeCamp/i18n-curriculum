---
id: 6aeaec9c8f05dde6a77e511f
title: Jinsi Orodha Zinavyotendeka Zinaposhirikiwa Katika Python?
challengeType: 19
dashedName: how-do-shared-lists-behave-in-python
---

# --description--

Umejifunza kuwa majina yanarejelea vitu na kwamba orodha zinaweza kubadilika. Hebu tuchunguze kinachotokea wakati majina zaidi ya moja yanarejelea orodha ile ile.

## Kulinganisha Orodha Zenye Thamani Sawa na Majina Mbadala

Orodha mbili zinaweza kuwa na thamani sawa bila kuwa kitu kimoja. Kumbuka kuwa `==` hukagua usawa, wakati `is` hukagua utambulisho:

```py
items = ['milk']
equal_items = ['milk']
alias = items

print(items == equal_items) # True
print(items is equal_items) # False
print(items is alias) # True
```

Kila usemi wa `['milk']` huunda orodha tofauti. Hata hivyo, `alias = items` haiundwi nakala. Inafunga jina jingine kwa orodha iliyopo. Jina hili lingine huitwa jina mbadala.

Kubadilisha orodha kupitia jina lolote kunaonekana kupitia jingine:

```py
items = ['milk']
equal_items = ['milk']
alias = items

alias.append('eggs')
print(items) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
print(equal_items) # ['milk']
```

Orodha tofauti ya `equal_items` haijabadilika.

## Kubadilisha Orodha Kupitia Kigezo cha Kitendakazi

Hoja hupitishwa kwa mgawo wa thamani. Kigezo ni jina la ndani lililofungwa awali kwa kitu kilichotolewa na mtumaji. Python haiundii nakala ya kitu hicho moja kwa moja.

Hapa, kigezo `items` na kigezo cha mtumaji `groceries` vinarejelea orodha ile ile:

```py
def add_item(items):
    items.append('eggs')

groceries = ['milk']
add_item(groceries)
print(groceries) # ['milk', 'eggs']
```

Kupiga wito `append()` hubadilisha orodha inayoshirikiwa. Kitendakazi hakina tamko la `return`, hivyo hurudisha `None`, lakini mabadiliko ya orodha bado yanaonekana kwa mtumaji.

Kuweka upya kigezo cha ndani kuna athari tofauti:

```py
def replace_items(items):
    items = ['bread']

groceries = ['milk']
replace_items(groceries)
print(groceries) # ['milk']
```

Mgawo wa thamani hufanya jina la ndani `items` kurejelea orodha mpya. Hainabadilishi orodha ya awali wala kubadilisha kigezo cha mtumaji `groceries`.

## Kurudisha Orodha Mpya

Kitendakazi kinaweza kuunda na kurudisha orodha mpya badala ya kubadilisha ile iliyotolewa. Opereta `+` huunganisha orodha, kuunda orodha mpya ya nje yenye vitu vyake:

```py
def with_extra_item(items):
    return items + ['eggs']

groceries = ['milk']
alias = groceries

groceries = with_extra_item(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk']
print(groceries is alias) # False
```

Mtumaji huweka orodha iliyorejeshwa kwenye `groceries`. Jina `alias` bado linarejelea orodha ya awali. Kupiga wito kitendakazi bila kuweka au kutumia thamani ya return kusingeacha `groceries` ikirejelea orodha ile ile ya awali pia.

Kuunganisha huunda orodha mpya ya nje, lakini haina nakala ya vitu vilivyopangwa ndani. Ikiwa kipengele ni orodha yenyewe, orodha mpya ya nje ina rejea kwa orodha ile ile ya ndani.

## Kulinganisha `+` na `+=` kwa Orodha

Kwa orodha zilizojengwa ndani, `items = items + [...]` huunda orodha mpya na kuweka upya `items`. Kwa upande mwingine, `items += [...]` huongeza orodha iliyopo mahali hapo:

```py
def add_with_plus(items):
    items = items + ['eggs']

def add_with_plus_equals(items):
    items += ['eggs']

groceries = ['milk']
alias = groceries

add_with_plus(groceries)
print(groceries) # ['milk']
print(alias) # ['milk']

add_with_plus_equals(groceries)
print(groceries) # ['milk', 'eggs']
print(alias) # ['milk', 'eggs']
```

Katika kitendakazi cha kwanza, jina la ndani pekee ndilo linarejelea orodha mpya. Katika cha pili, orodha inayoshirikiwa hubadilishwa, na jina la ndani bado linarejelea. Hii ndiyo sababu `+=` kwa orodha si sawa na kuongeza kisha kuweka upya wakati kuna rejea nyingine kwa orodha.

## Kutumia Orodha kama Hoja ya Chaguo-msingi

Hoja ya chaguo-msingi hutoa thamani wakati mtumaji anapokosa kutoa hoja hiyo. Ikiwa utatumia orodha tupu kama chaguo-msingi, Python huunda orodha hiyo mara moja, wakati kitendakazi kinapofafanuliwa. Mitoo inayokosa hoja hiyo hutumia orodha ile ile:

```py
def add_item(item, items=[]):
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['milk', 'eggs']
```

Mitoo ya pili hupokea orodha iliyobadilishwa na mito ya kwanza. Ingawa kila mito ina jina lake la kigezo la ndani, jina hilo linarejelea kitu kile kile cha chaguo-msingi. Orodha haijazidi kuwa tupu tena kati ya mito.

Ikiwa kila mito inapaswa kuanza na orodha safi wakati orodha haijatolewa, tumia `None` kama chaguo-msingi na unda orodha ndani ya kitendakazi:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

print(add_item('milk')) # ['milk']
print(add_item('eggs')) # ['eggs']
```

Hapa, `items = []` hufanyika kila wakati hoja inakosekana au imepitishwa wazi kama `None`, kuunda orodha mpya kwa mito hiyo.

Bado unaweza kupitisha orodha iliyopo kubadilishwa:

```py
def add_item(item, items=None):
    if items is None:
        items = []
    items.append(item)
    return items

groceries = []
add_item('milk', groceries)
add_item('eggs', groceries)
print(groceries) # ['milk', 'eggs']
```

Kagua `items is None` hutofautisha orodha isiyopo na orodha tupu iliyotolewa na mtumaji. Kutumia `if not items` pia kungeendana na orodha tupu na kuibadilisha na mpya, hivyo orodha tupu ya mtumaji isingepokea kipengele kilichoongezwa.

## Kurudia Rejea kwa Orodha Zilizopangwa Ndani

Umeona jinsi kurudia orodha kunavyoweza kuunda orodha kama `[0] * 3`. Kurudia huunda orodha mpya ya nje, lakini hurudia rejea kwa vitu vyake badala ya kunakili vitu hivyo.

Hii ni muhimu wakati kipengele kinaweza kubadilika:

```py
rows = [[]] * 3
print(rows) # [[], [], []]
print(rows[0] is rows[1]) # True

rows[0].append('hello')
print(rows) # [['hello'], ['hello'], ['hello']]
```

Usemi wa `[[]]` huunda orodha moja ya ndani. Kurudia huweka rejea kwa orodha ile ile ya ndani katika nafasi zote tatu. Kubadilisha kupitia `rows[0]` kunaonekana katika kila nafasi.

Kwa `numbers = [0] * 3`, kuweka `numbers[0] = 1` kunabadilisha rejea moja ya kipengele; hakubadilisha nambari isiyobadilika `0`. Ndiyo sababu nafasi zingine zinabaki `0`.

Ikiwa unahitaji orodha za ndani tofauti, unda kila moja kwa tofauti:

```py
rows = [[], [], []]
print(rows[0] is rows[1]) # False

rows[0].append('hello')
print(rows) # [['hello'], [], []]
```

Baadaye katika moduli hii, utajifunza jinsi maelezo ya orodha yanavyoweza kuunda idadi iliyochaguliwa ya orodha za ndani tofauti.

# --questions--

## --text--

Je, msimbo ufuatao utachapisha nini?

```py
def update(items):
    items.append('b')
    items = ['c']

letters = ['a']
update(letters)
print(letters)
```

## --answers--

`['a']`

### --feedback--

Kuongeza hubadilisha orodha inayoshirikiwa, wakati kuweka upya hubadilisha jina la ndani pekee.

---

`['c']`

### --feedback--

Kuongeza hubadilisha orodha inayoshirikiwa, wakati kuweka upya hubadilisha jina la ndani pekee.

---

`['a', 'b']`

---

`['a', 'b', 'c']`

### --feedback--

Kuongeza hubadilisha orodha inayoshirikiwa, wakati kuweka upya hubadilisha jina la ndani pekee.

## --video-solution--

3

## --text--

Baada ya `items = ['milk']` na `alias = items`, ni tamko gani linaongeza `'eggs'` kwenye orodha inayorejelewa na `alias`?

## --answers--

`items = items + ['eggs']`

### --feedback--

Fikiria ni operesheni gani inayoongeza orodha iliyopo mahali hapo.

---

`items += ['eggs']`

---

`items = ['milk', 'eggs']`

### --feedback--

Fikiria ni operesheni gani inayoongeza orodha iliyopo mahali hapo.

---

`items + ['eggs']`

### --feedback--

Fikiria ni operesheni gani inayoongeza orodha iliyopo mahali hapo.

## --video-solution--

2

## --text--

Kwa nini kuongeza kwenye `rows[0]` baada ya `rows = [[]] * 3` hufanya nafasi zote tatu kuonyesha kipengele kipya?

## --answers--

Kila nafasi inarejelea orodha ile ile ya ndani.

---

Python huunda nakala ya kila mabadiliko kwa orodha tofauti za ndani moja kwa moja.

### --feedback--

Kurudia orodha hurudia rejea kwa vitu badala ya kunakili vitu hivyo.

---

Njia ya `append()` hubadilisha kila orodha katika programu kila wakati.

### --feedback--

Kurudia orodha hurudia rejea kwa vitu badala ya kunakili vitu hivyo.

---

Opereta wa kuzidisha hufanya `append()` mara tatu.

### --feedback--

Kurudia orodha hurudia rejea kwa vitu badala ya kunakili vitu hivyo.

## --video-solution--

1
