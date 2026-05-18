---
id: 67fe85a3db9bad35f2b6a2bd
title: Jinsi taarifa za masharti na opereta za kimantiki zinavyofanya kazi
challengeType: 19
dashedName: how-do-conditional-statements-and-logical-operators-work
---

# --description--

Taarifa za masharti, au masharti, hukuruhusu kudhibiti mtiririko wa programu yako kulingana na kama masharti fulani ni kweli au si kweli.

Lakini kabla hatujaingia katika yote hayo, hebu tuangalie vipengele vya msingi vya taarifa za masharti, kuanzia na opereta za kulinganisha. Opereta za kulinganisha ni opereta zinazokuruhusu kulinganisha thamani mbili au zaidi, na kurudisha thamani ya thamani ya kweli au siyo kweli.

Katika funzo lililopita, ulijifunza kwamba thamani za kweli au siyo kweli ni mojawapo ya aina za data katika Python, na zinaweza kuwa tu `True` au `False`.

Hapa kuna jedwali lenye opereta za kulinganisha katika Python:

| Operator | Jina | Maelezo |
| --- | --- | --- |
| `==` | Sawa | Hukagua kama thamani mbili ni sawa |
| `!=` | Sio sawa | Hukagua kama thamani mbili si sawa |
| `>` | Kubwa kuliko | Hukagua kama thamani upande wa kushoto ni kubwa kuliko thamani upande wa kulia |
| `<` | Ndogo kuliko | Hukagua kama thamani upande wa kushoto ni ndogo kuliko thamani upande wa kulia |
| `>=` | Kubwa kuliko au sawa na | Hukagua kama thamani upande wa kushoto ni kubwa kuliko au sawa na thamani upande wa kulia |
| `<=` | Ndogo kuliko au sawa na | Hukagua kama thamani upande wa kushoto ni ndogo kuliko au sawa na thamani upande wa kulia |

Hapa kuna baadhi ya usemi wa kihesabu unaotathmini kuwa `True` au `False`:

```python
print(3 > 4) # False
print(3 < 4) # True
print(3 == 4) # False
print(4 == 4) # True
print(3 != 4) # True
print(3 >= 4) # False
print(3 <= 4) # True
```

Opereta hizi zinaweza kutumika katika masharti kulinganisha thamani na kuendesha msimbo fulani kulingana na kama taarifa ya masharti inatathmini kuwa `True` au `False`.

Katika Python, taarifa ya masharti ya msingi kabisa ni taarifa ya `if`. Hapa ni sintaksia ya msingi:

```python
if condition:
    pass # Code to execute if condition is True
```

* Taarifa za `if` huanza na neno kuu la `if`.
    
* `condition` ni usemi wa kihesabu unaotathmini kuwa `True` au `False`, ukifuatiwa na nukta mbili (`:`).

* Mwili wa taarifa ya `if` ni kundi la taarifa zinazohusiana pamoja. Katika Python, kiwango cha kuingizwa (indentation) ndicho kinachobainisha kundi la msimbo.
    
Katika mfano hapo juu, mwili wa taarifa ya `if` una taarifa ya `pass`. Wakati taarifa ya `pass` inatekelezwa, hakuna kinachotokea. Hili ni neno kuu maalum linaloweza kutumika kama kiwakilishi cha msimbo wa baadaye na ni muhimu wakati mabano ya msimbo tupu hayaruhusiwi.

Msimbo ndani ya mwili wa taarifa ya `if` unatekelezwa tu wakati hali inapotathminiwa kuwa `True`. Kwa mfano:

```python
age = 18

if age >= 18:
    print('You are an adult') # You are an adult
```

Angalia kuingizwa kabla ya `print('You are an adult')`. Wakati lugha nyingine za programu hutumia herufi kama mabano ya mviringo kuainisha mabano ya msimbo, na hutumia kuingizwa tu kwa ajili ya urahisi wa kusoma, katika Python mabano ya msimbo huamuliwa kwa kuingizwa.

Msimbo ufuatao ungeleta `IndentationError`, ambayo ni njia ya Python kuashiria kwamba kuingizwa kunahitajika sehemu fulani ya msimbo:

```py
age = 18

if age >= 18:
print('You are an adult') # IndentationError: expected an indented block after 'if' statement on line 3
```

Ingawa unaweza kutumia idadi yoyote ya nafasi (mradi tu unakuwa thabiti) kuamua kila kiwango cha kuingizwa, mwongozo wa mtindo wa Python unashauri kutumia nafasi nne.

Mabano pia hupatikana katika mizunguko na vitendakazi, ambavyo utajifunza kuhusu katika masomo yajayo.

Kurudi kwenye mfano wetu, ikiwa `age` ni chochote chini ya `18`, hakuna kinachochapishwa kwenye terminali:

```python
age = 12

if age >= 18:
    print('You are an adult') # Nothing shows up in the terminal
```

Lakini vipi ikiwa pia unataka kuchapisha kitu ikiwa `age` ni chini ya `18`? Hapo ndipo kifungu cha `else` kinapoingia. Kifungu cha `else` hufanya kazi wakati hali ya `if` ni si kweli. Hapa ni sintaksia ya taarifa ya `if…else`:

```python
if condition:
   pass # Code to execute if condition is True
else:
   pass # Code to execute if condition is False
```

Kwa mfano:

```python
age = 12

if age >= 18:
    print('You are an adult')
else:
    print('You are not an adult yet') # You are not an adult yet
```

Kumbuka huwezi kuweka taarifa yoyote kati ya block ya `if` na kifungu cha `else`. Msimbo ufuatao ungeleta `SyntaxError`:

```python
age = 12

if age >= 18:
    print('You are an adult')
print('Almost there!')
else: # SyntaxError: invalid syntax
    print('You are not an adult yet')
```

Huenda kuna hali ambapo unataka kuzingatia masharti mengi. Ili kufanya hivyo, Python inakuwezesha kuongeza taarifa yako ya if kwa neno kuu la `elif` (else if).

Hapa ni sintaksia:

```python
if condition1:
   pass # Code to execute if condition1 is True
elif condition2:
   pass # Code to execute if condition1 is False and condition2 is True
else:
   pass # Code to execute if all conditions are False
```

Kwa mfano:

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') # You are a child
```

Kumbuka unaweza kutumia vifungu vya `elif` kadri unavyotaka:

```python
age = 2

if age >= 65:
    print('You are a senior citizen')
elif age >= 30:
    print('You are an adult in your prime')
elif age >= 18:
    print('You are a young adult')
elif age >= 13:
    print('You are a teenager')
elif age >= 3:
    print('You are a young child')
else:
    print('You are a toddler or an infant') # You are a toddler or an infant
```

Sasa unapoelewa jinsi opereta za kulinganisha na taarifa za masharti zinavyofanya kazi katika Python, unaweza kuanza kuandika programu zinazofanya maamuzi kulingana na mantiki na ingizo. Iwe unalinganisha thamani au kuzunguka kupitia masharti mengi, zana hizi ni msingi wa kuandika msimbo unaojibadilisha kulingana na kifaa. 

# --questions--

## --text--

Opereta za kulinganisha hufanya nini?

## --answers--

Fanya mahesabu ya kihesabu na thamani za boolean

### --feedback--

Opereta hizi hukagua mambo kama usawa au ni thamani gani kubwa zaidi, na matokeo ni `True` au `False`.

---

Badilisha mfuatano wa herufi kuwa thamani za boolean.

### --feedback--

Opereta hizi hukagua mambo kama usawa au ni thamani gani kubwa zaidi, na matokeo ni `True` au `False`.

---

Linganishwa thamani mbili na kurudisha thamani ya thamani ya kweli au siyo kweli.

---

Tengeneza mizunguko na marudio.

### --feedback--

Opereta hizi hukagua mambo kama usawa au ni thamani gani kubwa zaidi, na matokeo ni `True` au `False`.

## --video-solution--

3

## --text--

Matokeo ya msimbo ufuatao yatakuwa yapi?

```python
age = 12

if age >= 18:
    print('You are an adult')
elif age >= 13:
    print('You are a teenager')
else:
    print('You are a child') 
```

## --answers--

`You are an adult` itachapishwa kwenye konsoli.

### --feedback--

Kagua sehemu ya mwisho ya funzo kwa jibu sahihi.

---

`You are a teenager` itachapishwa kwenye konsoli.

### --feedback--

Kagua sehemu ya mwisho ya funzo kwa jibu sahihi.

---

`You are a child` itachapishwa kwenye konsoli.

---

Hitilafu itachapishwa kwenye konsoli.

### --feedback--

Kagua sehemu ya mwisho ya funzo kwa jibu sahihi.

## --video-solution--

3

## --text--

Usemi wa kihesabu `3 >= 4` utatathminiwa kuwa nini?

## --answers--

`True`

### --feedback--

3 si kubwa kuliko au sawa na 4.

---

`SyntaxError`

### --feedback--

3 si kubwa kuliko au sawa na 4.

---

`None`

### --feedback--

3 si kubwa kuliko au sawa na 4.

---

`False`

## --video-solution--

4
