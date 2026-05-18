---
id: 5a24bbe0dba28a8d3cbd4c5d
title: Unda sehemu tata ya JSX
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

Changamoto ya mwisho ilikuwa mfano rahisi wa JSX, lakini JSX inaweza pia wakilisha HTML tata zaidi.

Jambo muhimu la kujua kuhusu JSX zilizopangwa ndani ni kwamba lazima zirudishe sehemu moja tu.

Sehemu hii moja ya mzazi itazunguka ngazi zote nyingine za sehemu zilizopangwa ndani.

Kwa mfano, sehemu kadhaa za JSX zilizoandikwa kama ndugu bila sehemu ya mzazi itakayozunguka hazitatafsiriwa.

Hapa kuna mfano:

**JSX halali:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**JSX isiyo halali:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

Fafanua constant mpya `JSX` inayonyesha `div` ambayo ina sehemu zifuatazo kwa mpangilio:

`h1`, `p`, na orodha isiyopangwa inayojumuisha vitu vitatu vya `li`. Unaweza kuweka maandishi yoyote unayotaka ndani ya kila sehemu.

**Kumbuka:** Unaponyesha sehemu nyingi kama hizi, unaweza kuzizunguka zote kwa mabano ya kawaida, lakini si sharti kabisa. Pia angalia changamoto hii inatumia lebo ya `div` kuzunguka sehemu zote za watoto ndani ya sehemu moja ya mzazi. Ukiondoa `div`, JSX haitatafsiri tena. Kumbuka hili, kwani litahusiana pia unaporudisha sehemu za JSX katika sehemu za React.

# --hints--

Constant `JSX` inapaswa kurudisha sehemu ya `div`.

```js
assert(JSX.type === 'div');
```

`div` inapaswa kuwa na lebo ya `h1` kama sehemu ya kwanza.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div` inapaswa kuwa na lebo ya `p` kama sehemu ya pili.

```js
assert(JSX.props.children[1].type === 'p');
```

`div` inapaswa kuwa na lebo ya `ul` kama sehemu ya tatu.

```js
assert(JSX.props.children[2].type === 'ul');
```

`ul` inapaswa kuwa na sehemu tatu za `li`.

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --seed-contents--

```jsx

```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello JSX!</h1>
  <p>Some info</p>
  <ul>
    <li>An item</li>
    <li>Another item</li>
    <li>A third item</li>
  </ul>
</div>);
```
