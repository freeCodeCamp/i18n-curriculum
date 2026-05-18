---
id: 6732b28eeadda1158cdbff7b
title: Jinsi ya Kukagua Ikiwa Safu ya Data Ina Thamani Fulani?
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

Katika JavaScript, njia ya `includes()` ni njia rahisi na yenye ufanisi ya kukagua ikiwa safu ya data ina thamani maalum. Njia hii hurudisha thamani ya kweli au siyo kweli: `true` ikiwa safu ya data ina kipengele kilichotajwa, na `false` vinginevyo.

Njia ya `includes()` ni muhimu hasa unapohitaji kuthibitisha haraka uwepo wa kipengele katika safu ya data bila kujua nafasi yake halisi. Tuanze na mfano wa jinsi ya kutumia njia ya `includes()`:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

Katika mfano huu, tuna safu ya matunda. Tunatumia njia ya `includes()` kukagua ikiwa `banana` iko katika safu ya data. Inarudisha `true` kwa sababu `banana` kwa kweli ipo. Kisha tunakagua `grape`, ambayo inarudisha `false` kwa sababu haipo katika safu ya data.

Njia ya `includes()` ina hisia kwa herufi ndogo na kubwa wakati wa kushughulikia mfuatano wa herufi. Hii inamaanisha kuwa `Banana` yenye herufi kubwa B na `banana` yenye herufi ndogo zote zinachukuliwa kuwa thamani tofauti. Hapa kuna mfano unaoonyesha hili:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

Katika kesi hii, `banana` (zote kwa herufi ndogo) hupatikana katika safu ya data, lakini `Banana` (ikiwa na herufi ya kwanza kubwa) haipo, hivyo wito wa pili wa `includes()` unarudisha `false`.

Njia ya `includes()` pia inaweza kupokea kigezo cha pili cha hiari kinachoelezea nafasi katika safu ya data kuanzia ambapo utaanza kutafuta. Hii ni muhimu ikiwa unataka kukagua uwepo wa kipengele katika sehemu maalum ya safu ya data. Hapa ni jinsi unavyoweza kutumia kipengele hiki:

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

Kwa wito wa kwanza wa `console.log`, tunatafuta nambari `30` kuanzia kielezo `3`. Katika kesi hii, kuna nambari `30` inayojitokeza baada ya kielezo `3`, hivyo njia ya `includes()` inarudisha `true`.

Hali hiyo hiyo ni kweli kwa wito wa pili wa `console.log`. Tunatafuta nambari `30` kuanzia kielezo `4`. Kwa kuwa nambari `30` inaonekana baada ya kielezo hicho, basi itarudisha `true`.

Ni muhimu kutambua kuwa `includes()` hutumia kulinganisha kwa usawa mkali (`===`), ambayo inamaanisha inaweza kutofautisha kati ya aina tofauti. Kwa mfano:

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

Katika kesi hii, nambari `2` na mfuatano wa herufi `"2"` zinachukuliwa kuwa aina tofauti za data. Hivyo, wito wa kwanza wa `console.log` utarudisha `false`, wakati wito wa pili wa `console.log` utarudisha `true`.

Njia ya `includes()` ni chombo chenye nguvu cha kukagua uwepo wa vipengele katika safu za data. Ni rahisi kutumia, yenye ufanisi, na inaweza kukuokoa kuandika mizunguko au masharti magumu zaidi ya kutafuta katika safu za data. Iwe unafanya kazi na mfuatano wa herufi, nambari, au aina mchanganyiko za data, `includes()` hutoa njia rahisi ya kuthibitisha ikiwa thamani ipo katika safu yako ya data.

# --questions--

## --text--

Nini kitakuwa matokeo ya msimbo ufuatao?

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

Kigezo cha pili cha `includes()` kinaelezea nafasi ya kuanzia kwa ajili ya utafutaji.

---

`false`

---

`undefined`

### --feedback--

Kigezo cha pili cha `includes()` kinaelezea nafasi ya kuanzia kwa ajili ya utafutaji.

---

Hii itatupa kosa.

### --feedback--

Kigezo cha pili cha `includes()` kinaelezea nafasi ya kuanzia kwa ajili ya utafutaji.

## --video-solution--

2

## --text--

Nini kitakuwa matokeo ya msimbo ufuatao?

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

Kumbuka kuwa `includes()` ina hisia kwa herufi ndogo na kubwa wakati wa kushughulikia mfuatano wa herufi.

---

`false`

---

`undefined`

### --feedback--

Kumbuka kuwa `includes()` ina hisia kwa herufi ndogo na kubwa wakati wa kushughulikia mfuatano wa herufi.

---

Hii itatupa kosa.

### --feedback--

Kumbuka kuwa `includes()` ina hisia kwa herufi ndogo na kubwa wakati wa kushughulikia mfuatano wa herufi.

## --video-solution--

2

## --text--

Nini kitakuwa matokeo ya msimbo ufuatao?

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

Njia ya `includes()` hutumia usawa mkali (`===`) kwa ajili ya kulinganisha.

---

`false`

---

`undefined`

### --feedback--

Njia ya `includes()` hutumia usawa mkali (`===`) kwa ajili ya kulinganisha.

---

Hii itatupa kosa.

### --feedback--

Njia ya `includes()` hutumia usawa mkali (`===`) kwa ajili ya kulinganisha.

## --video-solution--

2
