---
id: aaa48de84e1ecc7c742e1124
title: Kikagua Palindromu
challengeType: 5
forumTopicId: 16004
dashedName: palindrome-checker
---

# --description--

Return `true` if the given string is a palindrome. Otherwise, return `false`.

<dfn>palindrome</dfn> ni neno au sentensi linaloandikwa kwa njia sawa mbele na nyuma huku ukipuuza uakifishaji, herufi, na nafasi.

**Note:** Utahitaji kuondoa **all non-alphanumeric characters** (uakifishaji, nafasi na alama) na ugeuze kila kitu kwa herufi moja (herufi ndogo au herufi kubwa) ili uweze kukagua palindromu.

Tutapitisha mitungo ya mifumo tofauti tofauti kama `racecar`, `RaceCar`, `race CAR`, na kadhalika.

Pia tutapitisha mitungo iliyo na alama maalum kama `2A3*3a2`, `2A3 3a2`, na `2_A3*3#A2`.

# --hints--

`palindrome("eye")` itarudisha bulin.

```js
assert(typeof palindrome('eye') === 'boolean');
```

`palindrome("eye")` inafaa kurudisha `true`.

```js
assert(palindrome('eye') === true);
```

`palindrome("_eye")` inafaa kurudisha `true`.

```js
assert(palindrome('_eye') === true);
```

`palindrome("race car")` inafaa kurudisha `true`.

```js
assert(palindrome('race car') === true);
```

`palindrome("not a palindrome")` inafaa kurudisha `false`.

```js
assert(palindrome('not a palindrome') === false);
```

`palindrome("A man, a plan, a canal. Panama")` should return `true`.

```js
assert(palindrome('A man, a plan, a canal. Panama') === true);
```

`palindrome("never odd or even")` inafaa kurudisha `true`.

```js
assert(palindrome('never odd or even') === true);
```

`palindrome("nope")` inafaa kurudisha `false`.

```js
assert(palindrome('nope') === false);
```

`palindrome("almostomla")` inafaa kurudisha `false`.

```js
assert(palindrome('almostomla') === false);
```

`palindrome("My age is 0, 0 si ega ym.")` inafaa kurudisha `true`.

```js
assert(palindrome('My age is 0, 0 si ega ym.') === true);
```

`palindrome("1 eye for of 1 eye.")` inafaa kurudisha `false`.

```js
assert(palindrome('1 eye for of 1 eye.') === false);
```

`palindrome("0_0 (: /-\ :) 0-0")` inafaa kurudisha `true`.

```js
assert(palindrome('0_0 (: /- :) 0-0') === true);
```

`palindrome("five|\_/|four")` inafaa kurudisha `false`.

```js
assert(palindrome('five|_/|four') === false);
```

# --seed--

## --seed-contents--

```js
function palindrome(str) {
  return true;
}

palindrome("eye");
```

# --solutions--

```js
function palindrome(str) {
  var string = str.toLowerCase().split(/[^A-Za-z0-9]/gi).join('');
  var aux = string.split('');
  if (aux.join('') === aux.reverse().join('')){
    return true;
  }

  return false;
}
```
