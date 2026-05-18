---
id: bd7123c9c441eddfaeb4bdef
title: Maoni katika msimbo wako wa JavaScript
challengeType: 1
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

Maoni ni mistari ya msimbo ambayo JavaScript itapuuzia kwa makusudi. Maoni ni njia nzuri ya kuacha vidokezo kwa ajili yako mwenyewe na kwa watu wengine ambao baadaye watahitaji kuelewa msimbo huo unafanya nini.

Kuna njia mbili za kuandika maoni katika JavaScript:

Kutumia `//` kutaambia JavaScript kupuuza mabaki ya maandishi kwenye mstari huo wa sasa. Hii ni maoni ya mstari mmoja:

```js
// This is an in-line comment.
```

Unaweza kutengeneza maoni ya mistari mingi kuanzia na `/*` na kumalizika na `*/`. Hii ni maoni ya mistari mingi:

```js
/* This is a
multi-line comment */
```

**KUMBUKA:** Unapoandika msimbo, unapaswa mara kwa mara kuongeza maoni ili kufafanua kitendo cha sehemu za msimbo wako. Kuandika maoni vizuri kunaweza kusaidia kuwasilisha nia ya msimbo wako—kwa wengine *na* kwa wewe mwenyewe baadaye.

# --instructions--

Jaribu kutengeneza aina moja ya kila aina ya maoni.

# --hints--

Unapaswa kutengeneza maoni ya mtindo wa `//` ambayo yana herufi tano au zaidi.

```js
assert(code.match(/(\/\/)...../g));
```

Unapaswa kutengeneza maoni ya mtindo wa `/* */` ambayo yana herufi tano au zaidi.

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
