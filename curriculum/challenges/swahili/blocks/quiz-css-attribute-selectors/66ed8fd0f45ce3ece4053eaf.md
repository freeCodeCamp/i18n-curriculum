---
id: 66ed8fd0f45ce3ece4053eaf
title: Jaribio fupi la wachaguzi wa sifa za kipengele za CSS
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

Ili kupita jaribio fupi, lazima ujibu kwa usahihi angalau maswali 9 kati ya 10 yaliyo hapa chini.

# --quizzes--

## --quiz--

### --question--

#### --text--

Wachaguzi wa sifa za kipengele za CSS hutumika kwa ajili gani?

#### --distractors--

Kuweka mitindo kwa vipengele kulingana na jina la lebo yao.

---

Kuweka mitindo kwa vipengele kulingana na jina la darasa lao la vitu.

---

Kuweka mitindo kwa vipengele kulingana na kipengele mzazi wao.

#### --answer--

Kuweka mitindo kwa vipengele kulingana na sifa zao za kipengele.

### --question--

#### --text--

Ni ipi kati ya zifuatazo isiyotachaguliwa na kichaguzi hiki cha CSS?

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

Ni kichaguzi gani cha CSS kinacholingana na vipengele vyote vya `p` vyenye sifa ya `lang` iliyowekwa kuwa `"fr"`?

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

Ni kichaguzi gani cha CSS kinacholingana na vipengele vyote vya `a` vyenye sifa ya `href`?

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

Ni kichaguzi gani cha CSS kinacholingana na orodha zilizopangwa zenye nambari za Kirumi kubwa?

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

Sifa ya `data-lang` hutumika kwa kawaida kwa ajili gani?

#### --distractors--

Kubainisha lugha ya hati.

---

Kufafanua usimbaji wa herufi wa hati.

---

Kuweka lugha ya kipengele kulingana na kipengele mzazi wake.

#### --answer--

Kuhifadhi data maalum kwenye kipengele cha HTML ambacho CSS au JavaScript vinaweza kutumia.

### --question--

#### --text--

Ni kichaguzi gani cha CSS unapaswa kutumia kuweka mtindo kwa vipengele vya `img` tu ikiwa sifa yao ya `alt` ni sawa na `"code"`?

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

Ni kichaguzi gani cha CSS kinacholingana na orodha zilizopangwa zenye aina ya nambari za tarakimu?

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

Ni ipi kati ya wachaguzi wa CSS zifuatazo ungetumia kuweka mtindo kwa vipengele vya `a` vyenye sifa za `href` na `title` zote mbili?

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

Ni kichaguzi gani cha CSS ungetumia ikiwa unatengeneza mtandao wa mkahawa na unataka kuweka mtindo kwa vipengele vyote vyenye darasa la vitu la `menu-item` ambavyo vina sifa ya `data-special`?

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```
