---
id: bad87fee1348bd9aecf08806
title: استخدام الـ CSS class في تصميم عُنصرٍ ما
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MvDtV'
forumTopicId: 18337
dashedName: use-a-css-class-to-style-an-element
---

# --description--

Classes are reusable styles that can be added to HTML elements.

ها هو مثال عن إنشاء Class في الـ CSS:

```html
<style>
  .blue-text {
    color: blue;
  }
</style>
```

كما ترى؛ لقد قُمنا بإنشاء CSS Class اسمه `blue-text` داخل الـ `<style>` tag. يُمكنك إضافة Class إلى عنصر الـ HTML مثل هذا: `<h2 class="blue-text">CatPhotoApp</h2>`. لاحظ أن في في الـ CSS `style` تبدأ أسماء الـ Class بنُقطة. في الـ attribute الخاص بالـ HTML؛ إسم الـ Class لا يحتوي على علامة النُقطة (dot).

# --instructions--

داخل عنصر الـ `style` قُم بتغيير عنصر الـ selector الخاص بـ `h2` إلى `.red-text` وحدث قيمة اللون من `blue` إلى `red`.

قم بإعطاء عُنصر `h2` خاصية class، وتكون قيمتها `red-text`.

# --hints--

عُنصر الـ `h2` يجب أن يكون أحمر.

```js
assert($('h2').css('color') === 'rgb(255, 0, 0)');
```

عُنصر الـ `h2` يجب أن يكون معه class الـ `red-text`.

```js
assert($('h2').hasClass('red-text'));
```

يجب أن يكون ملف الـ stylesheet فيه declare للـ class الـ `red-text` ولونه `red`.

```js
assert(code.match(/\.red-text\s*\{\s*color\s*:\s*red;?\s*\}/g));
```

لا يجب استخدام الـ inline style مثل `style="color: red"` في عُنصر الـ `h2`.

```js
assert($('h2').attr('style') === undefined);
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {
    color: blue;
  }
</style>

<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <div>
    <p>Things cats love:</p>
    <ul>
      <li>catnip</li>
      <li>laser pointers</li>
      <li>lasagna</li>
    </ul>
    <p>Top 3 things cats hate:</p>
    <ol>
      <li>flea treatment</li>
      <li>thunder</li>
      <li>other cats</li>
    </ol>
  </div>

  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label><input type="checkbox" name="personality" checked> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```

# --solutions--

```html
<style>
  .red-text {
    color: red;
  }
</style>

<h2 class="red-text">CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

  <div>
    <p>Things cats love:</p>
    <ul>
      <li>catnip</li>
      <li>laser pointers</li>
      <li>lasagna</li>
    </ul>
    <p>Top 3 things cats hate:</p>
    <ol>
      <li>flea treatment</li>
      <li>thunder</li>
      <li>other cats</li>
    </ol>
  </div>

  <form action="https://freecatphotoapp.com/submit-cat-photo">
    <label><input type="radio" name="indoor-outdoor" checked> Indoor</label>
    <label><input type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label><input type="checkbox" name="personality" checked> Loving</label>
    <label><input type="checkbox" name="personality"> Lazy</label>
    <label><input type="checkbox" name="personality"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```
