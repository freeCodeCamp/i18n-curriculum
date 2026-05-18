---
id: bd7993c9ca9feddfaeb7bdef
title: Gawanya desimali moja kwa nyingine kwa kutumia JavaScript
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

Sasa tugawanye desimali moja kwa nyingine.

# --instructions--

Badilisha `0.0` ili `quotient` iwe sawa na `2.2`.

# --hints--

Kigezo `quotient` kinapaswa kuwa sawa na `2.2`

```js
assert(quotient === 2.2);
```

Unapaswa kutumia kiendeshaji `/` kugawanya 4.4 kwa 2

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

Kigezo cha gawio kinapaswa kupewa thamani mara moja tu

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
