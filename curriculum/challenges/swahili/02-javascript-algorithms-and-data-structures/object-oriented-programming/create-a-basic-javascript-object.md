---
id: 587d7dac367417b2b2512b73
title: Unda Kipenge cha Msingi cha JavaScript
challengeType: 1
forumTopicId: 301317
dashedName: create-a-basic-javascript-object
---

# --description--

Think about things people see every day, like cars, shops, and birds. These are all <dfn>objects</dfn>: tangible things people can observe and interact with.

Je, nini baadhi ya sifa za vipenge hivi? Gari lina magurudumu. Maduka huuza bidhaa. Ndege yana mabawa.

Sifa hizi au <dfn>properties</dfn> hufafanua kinachounda kipenge. Kumbuka kwamba vipenge vinavyofanana hushiriki sifa sawa lakini huweza kuwa na thamani tofauti kwa sifa hizo. Kwa mfano, magari yote yana magurudumu lakini si magari yote yana idadi sawa ya magurudumu.

Vipenge katika JavaScript vinatumika kuiga vipenge vya ulimwengu halisi huku vikawapa sifa na tabia tu kama za wenzao wa ulimwengu halisi. Hii hapa ni mfano kutumia mawazo hayo kutengeneza kipenge cha `duck`:

```js
let duck = {
  name: "Aflac",
  numLegs: 2
};
```

Hiki kipenge cha `duck` kiko na jozi la sifa/thamani: `name` of `Aflac` na `numLegs` of 2.

# --instructions--

Unda kipenge cha `dog` ukitumia sifa za `name` na `numLegs` na uziweke kwa utungo na nambari, kwa mtiririko huo.

# --hints--

`dog` inafaa kuwa kipenge.

```js
assert(typeof dog === 'object');
```

`dog` inapaswa kuwa na sifa ya `name` iliyowekwa kwa utungo.

```js
assert(typeof dog.name === 'string');
```

`dog` inapaswa kuwa na sifa ya `numLegs` iliyowekwa kwa nambari.

```js
assert(typeof dog.numLegs === 'number');
```

# --seed--

## --seed-contents--

```js
let dog = {

};
```

# --solutions--

```js
let dog = {
  name: '',
  numLegs: 4
};
```
