---
id: 587d778a367417b2b2512aa6
title: Boresha Ufikiaji wa Sehemu ya Fomu kwa kutumia kipengele cha lebo
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJMMAN'
forumTopicId: 301016
dashedName: improve-form-field-accessibility-with-the-label-element
---

# --description--

Improving accessibility with semantic HTML markup applies to using both appropriate tag names and attributes. The next several challenges cover some important scenarios using attributes in forms.

Lebo ya `label` hufunika maandishi kwa kipengee maalum cha kudhibiti fomu, kwa kawaida jina au lebo ya chaguo. Hii inaunganisha maana ya kipengee na hufanya fomu isomeke zaidi. Sifa ya `for` kwenye `label` inahusisha kwa uwazi ambayo `label` na udhibiti wa fomu na inatumiwa na visoma skrini.

Umejifunza kuhusu vitufe vya redio na lebo zake katika somo katika sehemu ya Msingi ya HTML. Katika somo hilo, tulifunga kipengee cha kuingiza kitufe cha redio ndani ya kipengele cha `label` pamoja na maandishi ya lebo ili kufanya maandishi kubofya. Njia nyingine ya kufanikisha hili ni kwa kutumia `for`, kama ilivyoelezwa katika somo hili.

Thamani ya sifa ya `for` lazima iwe sawa na thamani ya sifa ya `id` udhibiti wa fomu. Hapa kuna mfano:

```html
<form>
  <label for="name">Name:</label>
  <input type="text" id="name" name="name">
</form>
```

# --instructions--

Camper Cat anatarajia kupendezwa sana na machapisho yake ya kuvutia ya blogi na anataka kujumuisha fomu ya kujisajili kupitia barua pepe. Ongeza sifa ya `for` kwenye `label` ya barua pepe inayolingana na `id` kwenye sehemu yake ya `input`.

# --hints--

Msimbo wako unapaswa kuwa na sifa ya `for`kwenye `label` ambayo si tupu.

```js
assert.isNotEmpty(document.querySelector('label')?.getAttribute('for'));
```

Thamani yako ya `for` inapaswa kufanana na thamani ya `id` kwenye barua pepe `input`.

```js
assert.equal(document.querySelector('label')?.getAttribute('for'), 'email');
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <section>
    <form>
      <p>Sign up to receive Camper Cat's blog posts by email here!</p>


      <label>Email:</label>
      <input type="text" id="email" name="email">


      <input type="submit" name="submit" value="Submit">
    </form>
  </section>
  <article>
    <h2>The Garfield Files: Lasagna as Training Fuel?</h2>
    <p>The internet is littered with varying opinions on nutritional paradigms, from catnip paleo to hairball cleanses. But let's turn our attention to an often overlooked fitness fuel, and examine the protein-carb-NOM trifecta that is lasagna...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Is Chuck Norris a Cat Person?</h2>
    <p>Chuck Norris is widely regarded as the premier martial artist on the planet, and it's a complete coincidence that anyone who disagrees with this fact mysteriously disappears soon after. But the real question is, is he a cat person?...</p>
  </article>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <section>
    <form>
      <p>Sign up to receive Camper Cat's blog posts by email here!</p>


      <label for="email">Email:</label>
      <input type="text" id="email" name="email">


      <input type="submit" name="submit" value="Submit">
    </form>
  </section>
  <article>
    <h2>The Garfield Files: Lasagna as Training Fuel?</h2>
    <p>The internet is littered with varying opinions on nutritional paradigms, from catnip paleo to hairball cleanses. But let's turn our attention to an often overlooked fitness fuel, and examine the protein-carb-NOM trifecta that is lasagna...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near...</p>
  </article>
  <img src="samuraiSwords.jpeg" alt="">
  <article>
    <h2>Is Chuck Norris a Cat Person?</h2>
    <p>Chuck Norris is widely regarded as the premier martial artist on the planet, and it's a complete coincidence that anyone who disagrees with this fact mysteriously disappears soon after. But the real question is, is he a cat person?...</p>
  </article>
  <footer>&copy; 2018 Camper Cat</footer>
</body>
```
