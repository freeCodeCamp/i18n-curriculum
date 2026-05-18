---
id: 8d5123c8c441eddfaeb5bdef
title: Tekeleza bubble sort
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

Hii ni changamoto ya kwanza kati ya changamoto kadhaa kuhusu algoriti za kupanga (sorting). Ikiwa umetolewa safu ya data isiyo pangwa, tunataka kuwa na uwezo wa kurudisha safu ya data iliyopangwa. Tutaona njia kadhaa tofauti za kufanya hivi na kujifunza baadhi ya mabadiliko kati ya mbinu hizi tofauti. Ingawa lugha nyingi za kisasa zina njia zilizojengwa ndani za kupanga kwa shughuli kama hizi, bado ni muhimu kuelewa baadhi ya mbinu za msingi zinazotumika na kujifunza jinsi zinavyoweza kutekelezwa.

Hapa tutaangalia bubble sort. Njia ya bubble sort huanza mwanzoni mwa safu ya data isiyo pangwa na 'huinua' thamani zisizopangwa kuelekea mwisho, ikirudia kupitia safu ya data hadi ipangwe kabisa. Hii hufanyika kwa kulinganisha vitu viwili vinavyopakana na kubadilishana nafasi ikiwa viko katika mpangilio usio sahihi. Njia hii inaendelea kurudia kupitia safu ya data hadi hakuna kubadilishana tena, wakati huo safu ya data imeshapangwa.

Njia hii inahitaji kurudia mara nyingi kupitia safu ya data na kwa hali za wastani na mbaya ina ugumu wa wakati wa mduara wa mraba (quadratic time complexity). Ingawa ni rahisi, kawaida haifai katika hali nyingi.

**Maelekezo:** Andika kitendakazi `bubbleSort` kinachopokea safu ya data ya nambari kamili kama ingizo na kurudisha safu ya data ya nambari hizi kamili zikiwa zimepangwa kutoka ndogo hadi kubwa.

# --hints--

`bubbleSort` inapaswa kuwa kitendakazi.

```js
assert.isFunction(bubbleSort);
```

`bubbleSort` inapaswa kurudisha safu ya data iliyopangwa (kutoka ndogo hadi kubwa).

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
assert.isTrue(
  isSorted(
    bubbleSort([
      1,
      4,
      2,
      8,
      345,
      123,
      43,
      32,
      5643,
      63,
      123,
      43,
      2,
      55,
      1,
      234,
      92
    ])
  )
);
```

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` inapaswa kurudisha safu ya data isiyobadilika isipokuwa kwa mpangilio.

```js
assert.sameMembers(
  bubbleSort([
    1,
    4,
    2,
    8,
    345,
    123,
    43,
    32,
    5643,
    63,
    123,
    43,
    2,
    55,
    1,
    234,
    92
  ]),
  [1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]
);
```

`bubbleSort` haipaswi kutumia njia iliyo ndani ya `.sort()`.

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    bubbleSort([0, 1]);
  } finally {
    Array.prototype.sort = temp;
  }
  return sortUsed;
}
assert.isFalse(isBuiltInSortUsed());
```

# --seed--

## --seed-contents--

```js
function bubbleSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function bubbleSort(array) {
  for (let i = 0; i < array.length; i++) {
    let swapped = false;
    for (let j = 1; j < array.length; j++) {
      if (array[j - 1] > array[j]) {
        let temp = array[j-1];
        array[j-1] =  array[j];
        array[j] = temp;
        swapped = true;
      }
    }
    if (swapped === false) {
      break;
    }
  }
  return array;
}
```
