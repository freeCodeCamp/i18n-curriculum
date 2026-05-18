---
id: bd7123c8c441eddfaeb5bdef
title: Salamu kwa vipengele vya HTML
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

Karibu kwenye changamoto za msimbo wa HTML za freeCodeCamp. Hizi zitakuongoza hatua kwa hatua katika ukuzaji wa mtandao.

Kwanza, utaanza kwa kujenga ukurasa wa mtandao rahisi ukitumia HTML. Unaweza kuhariri msimbo katika mhariri wako wa msimbo, ambao umeingizwa katika ukurasa huu wa mtandao.

Je, unaona msimbo katika mhariri wako wa msimbo unaosema `<h1>Hello</h1>`? Hiyo ni kipengele cha HTML.

Vipengele vingi vya HTML vina lebo ya kufungua na lebo ya kufunga.

Leboa za kufungua zinaonekana hivi:

```html
<h1>
```

Leboa za kufunga zinaonekana hivi:

```html
</h1>
```

Tofauti pekee kati ya lebo za kufungua na lebo za kufunga ni alama ya mstari wa mbele inayofuata mabano ya kufungua katika lebo ya kufunga.

Kila changamoto ina majaribio ambayo unaweza kuyafanya wakati wowote kwa kubofya kitufe cha "Run tests". Ukipita majaribio yote, utaombwa wasilisha suluhisho lako na uende kwenye changamoto inayofuata ya msimbo.

# --instructions--

Ili kupita jaribio katika changamoto hii, badilisha maandishi ya kipengele chako cha `h1` kuwa `Hello World`.

# --hints--

Kipengele chako cha `h1` kinapaswa kuwa na maandishi `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
