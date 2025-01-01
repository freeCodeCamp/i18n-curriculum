---
id: 5c6c06847491271903d37cfd
title: 使用单选框和复选框的 value 属性
challengeType: 0
forumTopicId: 301099
dashedName: use-the-value-attribute-with-radio-buttons-and-checkboxes
---

# --description--

When a form gets submitted, the data is sent to the server and includes entries for the options selected. Inputs of type `radio` and `checkbox` report their values from the `value` attribute.

举个例子：

```html
<label for="indoor">
  <input id="indoor" value="indoor" type="radio" name="indoor-outdoor">Indoor
</label>
<label for="outdoor">
  <input id="outdoor" value="outdoor" type="radio" name="indoor-outdoor">Outdoor
</label>
```

这里有两个 `radio` 单选框。 当用户提交表单时，如果 `indoor` 选项被选中，表单数据会包含：`indoor-outdoor=indoor`。 也就是所选项的 `name` 和 `value` 属性值。

如果没有指明 `value` 属性值，则会使用默认值做为表单数据提交，也就是 `on`。 在这种情况下，如果用户选中 "indoor" 选项然后提交表单，表单数据则会包含 `indoor-outdoor=on`。 这样的表单数据看起来不够直观，因此最好将 `value` 属性值设置为一些有意义的内容。

# --instructions--

给每一个 `radio` 和 `checkbox` 输入框添加 `value` 属性。 不要创建任何新的 radio 或 checkbox 元素。 输入框标签文本使用小写字母作为属性值。

# --hints--

应有一个单选按钮的 `value` 属性值为 `indoor`。

```js
const indoorRadioButton = [...document.querySelectorAll('label > input[type="radio"]')].filter(x => x.value === "indoor");
assert.notEmpty(indoorRadioButton)
```

应有一个单选按钮的 `value` 属性值为 `outdoor`。

```js
const outdoorRadioButton = [...document.querySelectorAll('label > input[type="radio"]')].filter(x => x.value === "outdoor");
assert.notEmpty(outdoorRadioButton);
```

应有一个复选框的 `value` 属性值为 `loving`。

```js
const lovingCheckbox = [...document.querySelectorAll('label > input[type="checkbox"]')].filter(x => x.value === "loving");
assert.notEmpty(lovingCheckbox); 
```

应有一个复选框的 `value` 属性值为 `lazy`。

```js
const lazyCheckbox = [...document.querySelectorAll('label > input[type="checkbox"]')].filter(x => x.value === "lazy");
assert.notEmpty(lazyCheckbox); 
```

应有一个复选框的 `value` 属性值为 `energetic`。

```js
const energeticCheckbox =  [...document.querySelectorAll('label > input[type="checkbox"]')].filter(x => x.value === "energetic");
assert.notEmpty(energeticCheckbox);
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
    <label for="loving"><input id="loving" type="checkbox" name="personality"> Loving</label>
    <label for="lazy"><input id="lazy" type="checkbox" name="personality"> Lazy</label>
    <label for="energetic"><input id="energetic" type="checkbox" name="personality"> Energetic</label><br>
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
