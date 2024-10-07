---
id: bad87fee1348bd9aedf08835
title: إنشاء مجموعة من خانات الاختيار"Checkboxes"
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cqrkJsp'
forumTopicId: 16821
dashedName: create-a-set-of-checkboxes
---

# --description--

Forms commonly use <dfn>checkboxes</dfn> for questions that may have more than one answer.

خانات الاختيار "Checkboxes" هي نوع من `input`.

كل خانة من خانات الاختيار "checkboxes" الخاصة بك يمكن أن تندرج تحت عنصر التسمية `label` الخاص بها. من خلال وضع عنصر `input` داخل عنصر التسمية `label` ، سيتم تلقائيًا ربط إدخال مربع الاختيار مع عنصر التسمية المحيط به.

يجب أن يكون لجميع إدخالات مربعات الاختيار ذات الصلة نفس السمة `name`.

من أفضل الممارسات أن تحدد صراحةً العلاقة بين خانة الاختيار `input` والتسمية `label` المقابلة لها عن طريق تعيين السمة `for` على العلامة `label` لمطابقة السمة `id` لعنصر الإدخال `input` المقصود.

إليك مثال على خانة الاختيار "checkbox":

```html
<label for="loving"><input id="loving" type="checkbox" name="personality"> Loving</label>
```

# --instructions--

أضف إلى النموذج الخاص بك "form" مجموعة من ثلاث خانات اختيار"Checkboxes". كل واحدة منهم مدرجة تحت تسمية `label` خاصة بها. ويتشارك جميعهم الصفة `name` وقيمتها `personality`.

# --hints--

يجب أن تحتوي صفحتك على ثلاثة عناصر من خانة الاختيار"checkbox".

```js
assert($('input[type="checkbox"]').length > 2);
```

كل عنصر من خانات الاختيار"checkbox" يجب أن يندرج تحت تسمية `label` خاصة به.

```js
assert($('label > input[type="checkbox"]:only-child').length > 2);
```

تأكد أن كل `label` له علامة إغلاق.

```js
assert(
  code.match(/<\/label>/g) &&
    code.match(/<label/g) &&
    code.match(/<\/label>/g).length === code.match(/<label/g).length
);
```

يجب أن تعطى خانات الاختيار "checkboxes" الخاصة بك السمة `name` وقيمتها `personality`.

```js
assert(
  $('label > input[type="checkbox"]').filter('[name="personality"]').length > 2
);
```

يجب إضافة كل من خانات الاختيار "checkboxes" الخاصة بك داخل علامة النموذج `form`.

```js
assert($('label').parent().get(0).tagName.match('FORM'));
```

# --seed--

## --seed-contents--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

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
  <form action="https://www.freecatphotoapp.com/submit-cat-photo">
    <label for="indoor"><input id="indoor" type="radio" name="indoor-outdoor"> Indoor</label>
    <label for="outdoor"><input id="outdoor" type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```

# --solutions--

```html
<h2>CatPhotoApp</h2>
<main>
  <p>Click here to view more <a href="#">cat photos</a>.</p>

  <a href="#"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>

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
  <form action="https://www.freecatphotoapp.com/submit-cat-photo">
    <label for="indoor"><input id="indoor" type="radio" name="indoor-outdoor"> Indoor</label>
    <label for="outdoor"><input id="outdoor" type="radio" name="indoor-outdoor"> Outdoor</label><br>
    <label for="playful"><input id="playful" type="checkbox" name="personality">Playful</label>
    <label for="lazy"><input id="lazy" type="checkbox" 
name="personality">Lazy</label>
    <label for="evil"><input id="evil" type="checkbox" 
name="personality">Evil</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```
