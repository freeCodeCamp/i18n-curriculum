---
id: 587d774c367417b2b2512a9d
title: Коли потрібно залишити атрибут alt текст порожнім
challengeType: 0
videoUrl: 'https://scrimba.com/c/cM9P4t2'
forumTopicId: 301019
dashedName: know-when-alt-text-should-be-left-blank
---

# --description--

In the last challenge, you learned that including an `alt` attribute when using `img` tags is mandatory. However, sometimes images are grouped with a caption already describing them, or are used for decoration only. In these cases, `alt` text may seem redundant or unnecessary.

Якщо до зображення вже існує текстовий вміст або зображення не має значення для сторінки, `img` все ще потребує атрибут `alt`, але його можна встановити як порожній рядок. Ось приклад:

```html
<img src="visualDecoration.jpeg" alt="">
```

Фонові зображення також підпадають під мітку "декоративні". Однак вони зазвичай застосовуються з правилами CSS, і тому не є частиною процесу читання з екрану.

**Примітка:** Для зображень із підписом ви все одно можете додати `alt` текст, оскільки це допомагає пошуковим системам класифікувати вміст зображення.

# --instructions--

Camper Cat закодували макет сторінки для розділу блогу на своєму вебсайті. Вони планують додати візуальний розрив між двома статтями з декоративним зображенням самурайського меча. Додайте атрибут `alt` до тегу `img` і присвойте йому порожній рядок. (Зверніть увагу, що зображення `src` не посилається на фактичний файл — не хвилюйтесь, що на дисплеї не відображаються мечі.)

# --hints--

Ваш тег `img` має містити атрибут `alt`.

```js
assert.isTrue(document.querySelector('img')?.hasAttribute('alt'));
```

Атрибуту `alt` має бути призначений порожній рядок.

```js
assert.isEmpty(document.querySelector('img')?.getAttribute('alt'));
```

# --seed--

## --seed-contents--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```

# --solutions--

```html
<h1>Deep Thoughts with Master Camper Cat</h1>
<article>
  <h2>Defeating your Foe: the Red Dot is Ours!</h2>
  <p>To Come...</p>
</article>

<img src="samuraiSwords.jpeg" alt="">

<article>
  <h2>Is Chuck Norris a Cat Person?</h2>
  <p>To Come...</p>
</article>
```
