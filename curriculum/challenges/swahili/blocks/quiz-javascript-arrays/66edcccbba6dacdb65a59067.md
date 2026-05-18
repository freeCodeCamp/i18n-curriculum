---
id: 66edcccbba6dacdb65a59067
title: Jaribio fupi la safu za data za JavaScript
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

Ili kupita jaribio fupi, lazima ujibu kwa usahihi angalau maswali 18 kati ya 20 yaliyo hapa chini.

# --quizzes--

## --quiz--

### --question--

#### --text--

Nini kitakuwa matokeo ya msimbo ufuatao?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

Ni njia gani kati ya zifuatazo ndiyo sahihi ya kupata mfuatano wa herufi `"Jessica"` kutoka kwenye safu ya data `developers`?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

Ni thamani gani itapewa kwa kigezo `index`?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

Sintaksia ya REST hufanya nini?

#### --distractors--

Inatumika kugawanya mfuatano wa herufi kuwa safu ya sehemu ndogo ndogo.

---

Inatumika kuongeza au kuondoa vipengele kutoka sehemu yoyote katika safu ya data.

---

Inatumika kuongeza vipengele mwishoni mwa safu ya data na itarudisha urefu mpya.

#### --answer--

Inakamata vipengele vilivyobaki vya safu ya data na kuviweka katika safu mpya.

### --question--

#### --text--

Ufumbuzi wa muundo wa safu ya data ni nini?

#### --distractors--

Inatumika kuunganisha vipengele vyote vya safu ya data kuwa mfuatano wa herufi mmoja.

---

Inatumika kuangalia kama safu ya data ina thamani fulani.

---

Inatumika kuondoa kipengele cha mwisho kutoka kwenye safu ya data na kurudisha kipengele hicho kilichoondolewa.

#### --answer--

Inatumika kutoa thamani kutoka kwenye safu za data na kuziweka katika vigezo kwa njia fupi na inayosomeka zaidi.

### --question--

#### --text--

Ni thamani gani itapewa kwa kigezo `arr2`?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

Msimbo huu utaandika nini kwenye konsoli?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

Ni thamani gani itapewa kwa kigezo `slicedArr`?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

Njia gani hurejesha kielezo cha kwanza cha kipengele fulani katika safu ya data?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

Njia gani hutumika kuondoa kipengele cha kwanza kutoka kwenye safu ya data na kurudisha kipengele hicho kilichoondolewa?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

Njia ya `concat()` hufanya nini?

#### --distractors--

Inajiunga vipengele vya safu ya data kuwa mfuatano wa herufi.

---

Inaongeza kipengele mwanzoni mwa safu ya data.

---

Inaondoa kipengele kutoka kwenye safu ya data.

#### --answer--

Inunganisha safu mbili za data kuwa safu mpya.

### --question--

#### --text--

Matokeo ya msimbo huu yatakuwa nini?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

Njia ya `includes()` hufanya nini?

#### --distractors--

Inatumika kugawanya mfuatano wa herufi kuwa safu ya sehemu ndogo ndogo.

---

Inatumika kuunganisha vipengele vyote vya safu ya data kuwa mfuatano wa herufi mmoja.

---

Inatumika kuongeza au kuondoa vipengele kutoka sehemu yoyote katika safu ya data.

#### --answer--

Inatumika kuangalia kama safu ya data ina thamani fulani.

### --question--

#### --text--

Ni njia gani kati ya zifuatazo hutumika kugeuza safu ya data mahali pake?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

Safu ya data ya vipimo viwili ni nini?

#### --distractors--

Safu ya data inayojumuisha tu vitu vya aina ya object literals.

---

Safu ya data yenye urefu wa kudumu.

---

Safu ya data ya nambari za desimali.

#### --answer--

Safu ya data ya safu za data.

### --question--

#### --text--

Ni kweli gani kuhusu njia ya `indexOf()` katika safu za data?

#### --distractors--

Daima hurejesha tukio la mwisho la kipengele.

---

Hutupa kosa ikiwa kipengele hakipatikani.

---

Inahitaji safu ya data iwe imepangwa.

#### --answer--

Hurejesha `-1` ikiwa kipengele hakipatikani.

### --question--

#### --text--

Ni njia gani kati ya zifuatazo SI njia ya safu ya data?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

Nini kitakuwa matokeo ya msimbo ufuatao?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

Matokeo ya kutumia njia ya `shift()` kwenye safu tupu yatakuwa yapi?

#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

Njia gani itarudisha safu mpya bila kubadilisha safu ya awali?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
