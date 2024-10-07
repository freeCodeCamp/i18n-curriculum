---
id: aff0395860f5d3034dc0bfc9
title: Kithibitishaji cha Nambari ya Simu
challengeType: 5
forumTopicId: 16090
dashedName: telephone-number-validator
---

# --description--

Return `true` if the passed string looks like a valid US phone number.

Mtumiaji anaweza kujaza nafasi hiyo ya fomu kwa njia yoyote achaguayo ilmradi ipo na fomati ya namba halali ya Marekani. Yafuatayo ni mifano ya fomati halali za namba za Marekani (rejea kwa majaribio ya hapo chini kwa vibadala):

<blockquote>555-555-5555<br>(555)555-5555<br>(555) 555-5555<br>555 555 5555<br>5555555555<br>1 555 555 5555</blockquote>

Kwa changamoto hii, utapewa tungo kama `800-692-7753` ama `8oo-six427676;laskdjf`. Kazi yako ni kuhakikisha ama kukataa namba ya simu ya Marekani kulingana na mchanganyiko wa fomati zilizopeanwa hapo juu. Msimbo wa eneo unahitajika. Iwapo msimbo wa nchi imepeanwa, lazima udhibitishe kwamba msimbo wa nchi ni `1`. Rejesha `true` ikiwa tungo ni namba halali ya simu ya Marekani, vinginevyo rejesha `false`.

# --hints--

`telephoneCheck("555-555-5555")` inapaswa kurejesha bulin.

```js
assert(typeof telephoneCheck('555-555-5555') === 'boolean');
```

`telephoneCheck("1 555-555-5555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('1 555-555-5555') === true);
```

`telephoneCheck("1 (555) 555-5555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('1 (555) 555-5555') === true);
```

`telephoneCheck("5555555555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('5555555555') === true);
```

`telephoneCheck("555-555-5555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('555-555-5555') === true);
```

`telephoneCheck("(555)555-5555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('(555)555-5555') === true);
```

`telephoneCheck("1(555)555-5555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('1(555)555-5555') === true);
```

`telephoneCheck("555-5555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('555-5555') === false);
```

`telephoneCheck("5555555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('5555555') === false);
```

`telephoneCheck("1 555)555-5555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('1 555)555-5555') === false);
```

`telephoneCheck("1 555 555 5555")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('1 555 555 5555') === true);
```

`telephoneCheck("1 456 789 4444")` inapaswa kurejesha `true`.

```js
assert(telephoneCheck('1 456 789 4444') === true);
```

`telephoneCheck("123**&!!asdf#")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('123**&!!asdf#') === false);
```

`telephoneCheck("55555555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('55555555') === false);
```

`telephoneCheck("(6054756961)")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('(6054756961)') === false);
```

`telephoneCheck("2 (757) 622-7382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('2 (757) 622-7382') === false);
```

`telephoneCheck("0 (757) 622-7382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('0 (757) 622-7382') === false);
```

`telephoneCheck("-1 (757) 622-7382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('-1 (757) 622-7382') === false);
```

`telephoneCheck("2 757 622-7382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('2 757 622-7382') === false);
```

`telephoneCheck("10 (757) 622-7382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('10 (757) 622-7382') === false);
```

`telephoneCheck("27576227382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('27576227382') === false);
```

`telephoneCheck("(275)76227382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('(275)76227382') === false);
```

`telephoneCheck("2(757)6227382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('2(757)6227382') === false);
```

`telephoneCheck("2(757)622-7382")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('2(757)622-7382') === false);
```

`telephoneCheck("555)-555-5555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('555)-555-5555') === false);
```

`telephoneCheck("(555-555-5555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('(555-555-5555') === false);
```

`telephoneCheck("(555)5(55?)-5555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('(555)5(55?)-5555') === false);
```

`telephoneCheck("55 55-55-555-5")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('55 55-55-555-5') === false);
```

`telephoneCheck("11 555-555-5555")` inapaswa kurejesha `false`.

```js
assert(telephoneCheck('11 555-555-5555') === false);
```

# --seed--

## --seed-contents--

```js
function telephoneCheck(str) {
  return true;
}

telephoneCheck("555-555-5555");
```

# --solutions--

```js
var re = /^([+]?1[\s]?)?((?:[(](?:[2-9]1[02-9]|[2-9][02-8][0-9])[)][\s]?)|(?:(?:[2-9]1[02-9]|[2-9][02-8][0-9])[\s.-]?)){1}([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2}[\s.-]?){1}([0-9]{4}){1}$/;

function telephoneCheck(str) {
  return re.test(str);
}

telephoneCheck("555-555-5555");
```
