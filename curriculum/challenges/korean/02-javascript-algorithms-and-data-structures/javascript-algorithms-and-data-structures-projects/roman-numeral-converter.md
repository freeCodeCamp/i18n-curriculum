---
id: a7f4d8f2483413a6ce226cac
title: 로마 숫자 변환기
challengeType: 5
forumTopicId: 16044
dashedName: roman-numeral-converter
---

# --description--

주어진 숫자를 로마 숫자로 변환하십시오.

| 로마 숫자 | 아라비아 숫자 |
| ----- | ------- |
| M     | 1000    |
| CM    | 900     |
| D     | 500     |
| CD    | 400     |
| C     | 100     |
| XC    | 90      |
| L     | 50      |
| XL    | 40      |
| X     | 10      |
| IX    | 9       |
| V     | 5       |
| IV    | 4       |
| I     | 1       |

모든 로마 숫자 답변은 대문자로 제공되어야 합니다.

# --hints--

`convertToRoman(2)`는 `II`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(2), 'II');
```

`convertToRoman(3)`는 `III`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(3), 'III');
```

`convertToRoman(4)`는 `IV`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(4), 'IV');
```

`convertToRoman(5)`는 `V`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(5), 'V');
```

`convertToRoman(9)`는 `IX`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(9), 'IX');
```

`convertToRoman(12)`는 `XII`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(12), 'XII');
```

`convertToRoman(16)`는 `XVI`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(16), 'XVI');
```

`convertToRoman(29)`는 `XXIX`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(29), 'XXIX');
```

`convertToRoman(44)`는 `XLIV`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(44), 'XLIV');
```

`convertToRoman(45)`는 `XLV`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(45), 'XLV');
```

`convertToRoman(68)`는 `LXVIII`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(68), 'LXVIII');
```

`convertToRoman(83)`는 `LXXXIII`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(83), 'LXXXIII');
```

`convertToRoman(97)`는 `XCVII`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(97), 'XCVII');
```

`convertToRoman(99)`는 `XCIX`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(99), 'XCIX');
```

`convertToRoman(400)`는 `CD`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(400), 'CD');
```

`convertToRoman(500)`는 `D`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(500), 'D');
```

`convertToRoman(501)`는 `DI`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(501), 'DI');
```

</code>`convertToRoman(649)`는 `DCXLIX`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(649), 'DCXLIX');
```

`convertToRoman(798)`는 `DCCXCVIII`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(798), 'DCCXCVIII');
```

`convertToRoman(891)`는 `DCCCXCI`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(891), 'DCCCXCI');
```

`convertToRoman(1000)`는 `M`을 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(1000), 'M');
```

`convertToRoman(1004)`는 `MIV`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(1004), 'MIV');
```

`convertToRoman(1006)`를 `MVI`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(1006), 'MVI');
```

`convertToRoman(1023)`는 `MXXIII`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(1023), 'MXXIII');
```

`convertToRoman(2014)`는 `MMXIV`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(2014), 'MMXIV');
```

`convertToRoman(3999)`는 `MMMCMXCIX`를 반환해야 합니다.

```js
assert.deepEqual(convertToRoman(3999), 'MMMCMXCIX');
```

# --seed--

## --seed-contents--

```js
function convertToRoman(num) {
 return num;
}

convertToRoman(36);
```

# --solutions--

```js
function convertToRoman(num) {
  var ref = [['M', 1000], ['CM', 900], ['D', 500], ['CD', 400], ['C', 100], ['XC', 90], ['L', 50], ['XL', 40], ['X', 10], ['IX', 9], ['V', 5], ['IV', 4], ['I', 1]];
  var res = [];
  ref.forEach(function(p) {
    while (num >= p[1]) {
      res.push(p[0]);
      num -= p[1];
    }
  });
  return res.join('');
}
```
