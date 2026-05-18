---
id: 672bbeb6eefd7ca9c003ea00
title: Ni mifano gani ya darasa la bandia la muundo wa mti?
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

Darasa la bandia la muundo wa mti linakuwezesha kulenga na kupamba vipengele kulingana na nafasi yao ndani ya mti wa hati. Mti wa hati unarejelea muundo wa ngazi wa vipengele katika hati ya HTML.

Hapa kuna orodha ya madarasa ya bandia ya muundo wa mti:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

Tuchunguze kwa karibu kila darasa la bandia la muundo wa mti, tukifuatana na mifano.

Darasa la bandia la `:root` kawaida ni kipengele cha mzizi `html`. Linakusaidia kulenga ngazi ya juu kabisa katika hati ili uweze kutumia mtindo wa kawaida kwa hati nzima.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

Darasa la bandia la `:root` pia hutumika sana katika kuweka vigezo vya CSS:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

Kwa vigezo vya CSS, unapata kuhifadhi thamani na kuzitumia tena katika karatasi yako ya mtindo. Utajifunza zaidi kuhusu haya baadaye.

Vipengele vilivyo tupu, yaani vipengele visivyo na watoto isipokuwa nafasi tupu, pia vinajumuishwa katika mti wa hati. Ndiyo maana kuna darasa la bandia la `:empty` la kulenga vipengele tupu. Kwa mfano, msimbo huu wa HTML una vitu viwili vya orodha tupu. Kwa darasa la bandia la `:empty`, unaweza kupamba vitu vya orodha tupu kwa njia tofauti:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

Jambo la vitendo zaidi kufanya na vitu vya orodha tupu ni labda kutoonyesha kabisa:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` inakuwezesha kuchagua vipengele kulingana na nafasi yao ndani ya mzazi, wakati `:nth-last-child(n)` inakuwezesha kuchagua vipengele kwa kuhesabu kutoka mwisho. `n` inaweza kuwa nambari maalum au neno kama `odd` au `even`. Hii ni muhimu sana katika kupamba seli za jedwali kulingana na nafasi: hata na isiyo hata.

Hapa kuna mfano wa HTML wa jedwali la bei za matunda. CSS inatumia darasa la bandia la `:nth-child` kulenga seli za jedwali kulingana na nafasi za isiyo hata na hata:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

Madarasa ya bandia ya `:first-child`, `:last-child`, na `:only-child` yote hufanya kazi kwa vitu ndani ya kontena la mzazi au hati nzima.

- `:first-child` huchagua kipengele cha kwanza katika kipengele cha mzazi au hati.
- `:last-child` huchagua kipengele cha mwisho katika kipengele cha mzazi au hati.
- `:only-child` huchagua kipengele pekee katika kipengele cha mzazi au hati.

Kutumia madarasa ya bandia ya `:first-child` na `:last-child` kutachagua `Item 1` na `Item 3` katika mfano huu:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

Ikiwa una orodha isiyopangwa zaidi kwenye ukurasa, lazima uwe maalum zaidi katika uteuzi:

Ili kukuonyesha jinsi darasa la bandia la `:only-child` linavyofanya kazi, hapa kuna mfano wa HTML wenye vipengele viwili tofauti vya `div`. Kutumia darasa la bandia la `:only-child` kunahakikisha kipengele cha `div` chenye mtoto mmoja pekee kinachaguliwa:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

Madarasa ya bandia ya `:first-of-type` na `:last-of-type` huchagua tukio la kwanza na la mwisho la aina maalum ya kipengele ndani ya mzazi wake. Ni muhimu kwa kutumia mitindo ya kipekee kwa tukio la kwanza au la mwisho la aina hiyo ya kipengele kati ya ndugu zake.

Katika mfano huu hapa chini, `:first-of-type` na `:last-of-type` hutumika kwa kipengele cha kwanza na kipengele cha mwisho ndani ya kipengele cha `section`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` inakuwezesha kuchagua kipengele maalum ndani ya mzazi wake kulingana na nafasi yake kati ya ndugu wa aina hiyo. Kwa mfano, katika HTML ifuatayo, `:nth-of-type(2)` inalenga kipengele cha pili katika kontena:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` huchagua kipengele ikiwa ndicho pekee cha aina yake ndani ya mzazi wake. Hii inaweza kuwa muhimu kwa kusisitiza vitu vya pekee au kuhakikisha vinapambwa tofauti wakati si sehemu ya kundi.

Katika mfano huu hapa chini, kuna vipengele viwili vya `div` ambavyo kimoja kina kipengele kimoja pekee. CSS inatumika tu kwa kontena la kwanza:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

Nini tofauti kati ya madarasa ya bandia ya `:first-of-type` na `:last-of-type`?

## --answers--

`:first-of-type` inalenga kipengele cha kwanza cha aina maalum ndani ya mzazi wake, wakati `:last-of-type` inalenga kipengele cha mwisho cha aina tofauti.

### --feedback--

Fikiria jinsi madarasa haya ya bandia yanavyokusaidia kupamba tukio la kwanza na la mwisho la lebo fulani, kama `p` au `h1`.

---

`:first-of-type` na `:last-of-type` zote huchagua tukio la kwanza la kipengele lakini katika sehemu tofauti za hati.

### --feedback--

Fikiria jinsi madarasa haya ya bandia yanavyokusaidia kupamba tukio la kwanza na la mwisho la lebo fulani, kama `p` au `h1`.

---

`:first-of-type` huchagua tukio la kwanza la aina maalum ya kipengele ndani ya mzazi wake, wakati `:last-of-type` huchagua tukio la mwisho la aina hiyo hiyo ya kipengele ndani ya mzazi wake.

---

`:last-of-type` hutumia mitindo kwa vipengele vya kwanza na vya mwisho ndani ya hati, wakati `:last-of-type` hutumia mitindo kwa vipengele vyote vya aina maalum.

### --feedback--

Fikiria jinsi madarasa haya ya bandia yanavyokusaidia kupamba tukio la kwanza na la mwisho la lebo fulani, kama `p` au `h1`.

## --video-solution--

3

## --text--

Nini tofauti kati ya madarasa ya bandia ya `:first-child` na `:last-child`?

## --answers--

`:first-child` inalenga kipengele cha kwanza ndani ya mzazi wake, wakati `:last-child` inalenga kipengele cha mwisho ndani ya mzazi tofauti.

### --feedback--

Fikiria jinsi madarasa haya mawili ya bandia yanavyokusaidia kupamba vipengele vya kwanza na vya mwisho ndani ya kontena moja la mzazi.

---

`:first-child` inalenga kipengele cha kwanza ndani ya mzazi wake, wakati `:last-child` inalenga kipengele cha mwisho ndani ya mzazi huo huo.

---

`:first-child` inalenga kipengele cha kwanza cha aina maalum ndani ya mzazi wake, wakati `:last-child` inalenga kipengele cha mwisho cha aina tofauti ndani ya mzazi wake.

### --feedback--

Fikiria jinsi madarasa haya mawili ya bandia yanavyokusaidia kupamba vipengele vya kwanza na vya mwisho ndani ya kontena moja la mzazi.

---

`:first-child` inalenga vipengele vya kwanza na vya mwisho ndani ya mzazi, wakati `:last-child` inalenga vipengele vingine vyote.

### --feedback--

Fikiria jinsi madarasa haya mawili ya bandia yanavyokusaidia kupamba vipengele vya kwanza na vya mwisho ndani ya kontena moja la mzazi.

## --video-solution--

2

## --text--

Ni darasa gani la bandia linakuwezesha kulenga vipengele ambavyo havina watoto, ikiwa ni pamoja na vile vinavyobeba nafasi tupu tu?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

Fikiria jinsi unavyoweza kupamba vipengele ambavyo havina maudhui.

---

`:last-child`

### --feedback--

Fikiria jinsi unavyoweza kupamba vipengele ambavyo havina maudhui.

---

`:only-of-type`

### --feedback--

Fikiria jinsi unavyoweza kupamba vipengele ambavyo havina maudhui.

## --video-solution--

1
