---
id: 5a24bbe0dba28a8d3cbd4c5f
title: Onyesha vipengele vya HTML kwenye DOM
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

Hadi sasa, umejifunza kwamba JSX ni chombo rahisi cha kuandika HTML inayosomeka ndani ya JavaScript. Kwa kutumia React, tunaweza kuonyesha JSX hii moja kwa moja kwenye HTML DOM kwa kutumia API ya kuonyesha ya React inayojulikana kama ReactDOM.

ReactDOM hutoa njia rahisi ya kuonyesha vipengele vya React kwenye DOM ambayo inaonekana hivi: `ReactDOM.render(componentToRender, targetNode)`, ambapo hoja ya kwanza ni kipengele cha React au sehemu unayotaka kuonyesha, na hoja ya pili ni nodi ya DOM unayotaka kuonyesha sehemu hiyo ndani yake.

Kama unavyotarajia, `ReactDOM.render()` lazima iitwe baada ya tamko la vipengele vya JSX, kama vile unavyotakiwa kutangaza vigezo kabla ya kuvitumia.

# --instructions--

Mhariri wa msimbo una sehemu rahisi ya JSX. Tumia njia ya `ReactDOM.render()` kuonyesha sehemu hii kwenye ukurasa. Unaweza kupitisha vipengele vya JSX vilivyotangazwa moja kwa moja kama hoja ya kwanza na tumia `document.getElementById()` kuchagua nodi ya DOM kuonyesha vipengele hivyo ndani yake. Kuna `div` yenye `id='challenge-node'` inayopatikana kwa ajili yako kutumia. Hakikisha haukubadili thabiti ya `JSX`.

# --hints--

Thabiti `JSX` inapaswa kurudisha kipengele cha `div`.

```js
assert(JSX.type === 'div');
```

`div` inapaswa kuwa na lebo ya `h1` kama kipengele cha kwanza.

```js
assert(JSX.props.children[0].type === 'h1');
```

`div` inapaswa kuwa na lebo ya `p` kama kipengele cha pili.

```js
assert(JSX.props.children[1].type === 'p');
```

Kipengele cha JSX kilichotolewa kinapaswa kuonyeshwa kwenye nodi ya DOM yenye kitambulisho `challenge-node`.

```js
assert(
  document.getElementById('challenge-node').childNodes[0].innerHTML ===
    '<h1>Hello World</h1><p>Lets render this to the DOM</p>'
);
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Hello World</h1>
    <p>Lets render this to the DOM</p>
  </div>
);
// Add your code below this line
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello World</h1>
  <p>Lets render this to the DOM</p>
</div>
);
// Add your code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));
```
