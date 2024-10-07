---
id: bad87fee1348bd9aedd08835
title: تحديد أزرار الراديو "Radio Buttons" وخانات الاختيار "Checkboxes" تلقائيا
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cWk3Qh6'
forumTopicId: 301094
dashedName: check-radio-buttons-and-checkboxes-by-default
---

# --description--

You can set a checkbox or radio button to be checked by default using the `checked` attribute.

لتفعل هذا ، فقط أضف الكلمة `checked`  داخل عنصر input . على سبيل المثال:

```html
<input type="radio" name="test-name" checked>
```

# --instructions--

قم بتعيين أول أزرار الراديو "radio button" الخاصة بك وأول خانات الاختيار "checkboxe" الخاصة بك ليتم تحديدها تلقائيا.

# --hints--

أول زر راديو "radio button" في النموذج "form" الخاص بك يجب أن يكون محدد تلقائيا.

```js
assert($('input[type="radio"]').prop('checked'));
```

أول خانة اختيار "checkbox" في النموذج "form" الخاص بك يجب أن تكون محددة تلقائيا.

```js
assert($('input[type="checkbox"]').prop('checked'));
```

يجب ألا تغير النص الداخلي للتسمية `Indoor`.

```js
assert.equal(document.querySelector('label[for="indoor"]')?.innerText?.trim(), 'Indoor');
```

يجب ألا تغير النص الداخلي للتسمية `Loving`.

```js
assert.equal(document.querySelector('label[for="loving"]')?.innerText?.trim(), 'Loving');
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
    <label for="indoor"><input id="indoor" type="radio" name="indoor-outdoor" value="indoor"> Indoor</label>
    <label for="outdoor"><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label><br>
    <label for="loving"><input id="loving" type="checkbox" name="personality" value="loving"> Loving</label>
    <label for="lazy"><input id="lazy" type="checkbox" name="personality" value="lazy"> Lazy</label>
    <label for="energetic"><input id="energetic" type="checkbox" name="personality" value="energetic"> Energetic</label><br>
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
    <label for="indoor"><input id="indoor" type="radio" name="indoor-outdoor" value="indoor" checked> Indoor</label>
    <label for="outdoor"><input id="outdoor" type="radio" name="indoor-outdoor" value="outdoor"> Outdoor</label><br>
    <label for="loving"><input id="loving" type="checkbox" name="personality" value="loving" checked> Loving</label>
    <label for="lazy"><input id="lazy" type="checkbox" name="personality" value="lazy"> Lazy</label>
    <label for="energetic"><input id="energetic" type="checkbox" name="personality" value="energetic"> Energetic</label><br>
    <input type="text" placeholder="cat photo URL" required>
    <button type="submit">Submit</button>
  </form>
</main>
```
