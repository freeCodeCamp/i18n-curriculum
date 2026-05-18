---
id: 5a24bbe0dba28a8d3cbd4c5e
title: Ongeza maoni katika JSX
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX ni sintaksia inayotafsiriwa kuwa JavaScript halali. Wakati mwingine, kwa ajili ya urahisi wa kusoma, unaweza kuhitaji kuongeza maoni katika msimbo wako. Kama lugha nyingi za programu, JSX ina njia yake ya kufanya hivyo.

Ili kuweka maoni ndani ya JSX, unatumia sintaksia `{/* */}` kuzunguka maandishi ya maoni.

# --instructions--

Mhariri wa msimbo una kipengele cha JSX kinachofanana na ulichotengeneza katika changamoto iliyopita. Ongeza maoni mahali popote ndani ya kipengele cha `div` kilichotolewa, bila kubadilisha vipengele vilivyopo vya `h1` au `p`.

# --hints--

Kipengele cha `JSX` kinapaswa kurudisha kipengele cha `div`.

```js
assert(JSX.type === 'div');
```

Kipengele cha `div` kinapaswa kuwa na lebo ya `h1` kama kipengele cha kwanza.

```js
assert(JSX.props.children[0].type === 'h1');
```

Kipengele cha `div` kinapaswa kuwa na lebo ya `p` kama kipengele cha pili.

```js
assert(JSX.props.children[1].type === 'p');
```

Vipengele vilivyopo vya `h1` na `p` havipaswi kubadilishwa.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

Kipengele cha `JSX` kinapaswa kutumia sintaksia halali ya maoni.

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>This is a block of JSX</h1>
    <p>Here's a subtitle</p>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>This is a block of JSX</h1>
  { /* this is a JSX comment */ }
  <p>Here's a subtitle</p>
</div>);
```
