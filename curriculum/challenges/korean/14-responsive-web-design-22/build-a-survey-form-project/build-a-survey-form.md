---
id: 587d78af367417b2b2512b03
title: 설문 양식 만들기
challengeType: 14
forumTopicId: 301145
dashedName: build-a-survey-form
---

# --description--

**목적:** <a href="https://survey-form.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://survey-form.freecodecamp.rocks</a>와 기능적으로 유사한 페이지를 구축하세요. **이 데모 프로젝트를 복사하지 마세요.**.

**유저 스토리:**

1. 페이지 제목을 `id`가 `title`인 `h1` 요소 안에 넣어야 합니다.
1. 당신은 `id`가 `description`인 `p` 요소에 짧은 설명을 넣어야 합니다.
1. 당신은 `id`가 `survey-form`인 `form` 요소를 사용해야 합니다.
1. form 요소 내에서, **반드시** `id`가 `name`이고 `type`이 `text`인 `input` 필드에 이름을 입력해야 합니다.
1. form 요소 내에서, **반드시** `id`가 `email`인 `input` 필드에 이메일을 입력해야 합니다.
1. 올바른 형식이 아닌 이메일을 입력하면 HTML5 검증 오류가 표시됩니다.
1. form 요소 내에서, `id`가 `number`인 `input` 필드에 숫자를 입력할 수 있습니다.
1. 숫자가 아닌 값을 입력할 수 없도록 해야 하며, 숫자가 아닌 값에 대해 입력 자체를 차단하거나 HTML5 검증 오류를 표시해야 합니다(브라우저마다 다름).
1. `min` 및 `max` 속성으로 정의된 범위를 벗어난 숫자를 입력하면 HTML5 검증 오류가 표시됩니다.
1. 이름, 이메일 및 숫자 입력 필드에 대해, 각 필드의 목적을 설명하는 `label` 요소가 form에 포함되어 있습니다. 이 라벨 요소들은 다음과 같은 id들을 가지고 있습니다: `id="name-label"`, `id="email-label"`, `id="number-label"`
1. 이름, 이메일 및 숫자 입력 필드에는 각 필드에 대한 설명이나 지침을 제공하는 Placeholder 텍스트를 볼 수 있습니다.
1. form 요소 내에는 `id`가 `dropdown`인 `select` 드롭다운 요소가 있어야 하며, 선택할 수 있는 최소한 두 가지 옵션이 있어야 합니다.
1. form 요소 내에서, `name` 속성을 사용해 그룹화된 최소 두 개 이상의 라디오 버튼에서 원하는 옵션을 선택할 수 있습니다.
1. form 요소 내에서 여러 개의 체크박스 시리즈 중에서 여러 필드를 선택할 수 있으며, 각각은 반드시 `value` 속성을 가져야 합니다.
1. form 요소 내에는 추가적인 댓글을 작성할 수 있는 `textarea`가 제공됩니다.
1. form 요소 내에 `id`가 `submit`인 버튼이 제공되며, 이는 모든 입력값들을 제출합니다.

아래의 사용자 스토리를 충족시키고 모든 테스트를 통과하여 이 프로젝트를 완료하세요. 자신만의 개성을 담아 디자인을 꾸며보세요. 즐거운 코딩 하세요!

**참고:** 스타일시트를 연결하고 CSS를 적용하려면 HTML에 `<link rel="stylesheet" href="styles.css">`를 추가하세요.

# --hints--

`id`가 `title`인 `h1` 요소를 사용해야 합니다.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'H1');
```

`#title` 요소는 비워두면 안 됩니다.

```js
const el = document.getElementById('title');
assert.isNotNull(el);
assert.isAbove(el.innerText.length, 0);
```

`id`가 `description`인 `p` 요소를 사용해야 합니다.

```js
const el = document.getElementById('description');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'P');
```

`#description` 요소는 비워두면 안 됩니다.

```js
const el = document.getElementById('description');
assert.isNotNull(el);
assert.isAbove(el.innerText.length, 0);
```

`id`가 `survey-form`인 `form` 요소를 사용해야 합니다.

```js
const el = document.getElementById('survey-form');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'FORM');
```

`id`가 `name`인 `input` 요소를 사용해야 합니다.

```js
const el = document.getElementById('name');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'INPUT');
```

`#name` 요소에는 `type`이 `text`여야 합니다.

```js
const el = document.getElementById('name');
assert.isNotNull(el);
assert.strictEqual(el.type, 'text');
```

`#name` 요소는 반드시 값을 입력받아야 합니다.

```js
const el = document.getElementById('name');
assert.isNotNull(el);
assert.isTrue(el.required);
```

`#name` 요소는 `#survey-form`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#survey-form #name');
assert.isNotNull(el);
```

`id`가 `email`인 `input` 요소를 사용해야 합니다.

```js
const el = document.getElementById('email');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'INPUT');
```

`#email` 요소에는 `type`이 `email`이어야 합니다.

```js
const el = document.getElementById('email');
assert.isNotNull(el);
assert.strictEqual(el.type, 'email');
```

`#email` 요소는 반드시 값을 입력받아야 합니다.

```js
const el = document.getElementById('email');
assert.isNotNull(el);
assert.isTrue(el.required);
```

`#email` 요소는 `#survey-form`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#survey-form #email');
assert.isNotNull(el);
```

`id`가 `number`인 `input` 요소를 사용해야 합니다.

```js
const el = document.getElementById('number');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'INPUT');
```

`#number` 요소는 `#survey-form`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#survey-form #number');
assert.isNotNull(el);
```

`#number` 요소의 `type`이 `number`이어야 합니다.

```js
const el = document.getElementById('number');
assert.isNotNull(el);
assert.strictEqual(el.type, 'number');
```

`#number` 요소에는 숫자 값을 갖는 `min` 속성이 있어야 합니다.

```js
const el = document.getElementById('number');
assert.isNotNull(el);
assert.isNotEmpty(el.min);
assert.isTrue(isFinite(el.min));
```

`#number` 요소에는 숫자 값을 갖는 `max` 속성이 있어야 합니다.

```js
const el = document.getElementById('number');
assert.isNotNull(el);
assert.isNotEmpty(el.max);
assert.isTrue(isFinite(el.max));
```

`id`가 `name-label`인 `label` 요소를 사용해야 합니다.

```js
const el = document.getElementById('name-label');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'LABEL');
```

`id`가 `email-label`인 `label` 요소를 사용해야 합니다.

```js
const el = document.getElementById('email-label');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'LABEL');
```

`id`가 `number-label`인 `label` 요소를 사용해야 합니다.

```js
const el = document.getElementById('number-label');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'LABEL');
```

`#name-label` 요소는 입력을 설명하는 텍스트를 포함해야 합니다.

```js
const el = document.getElementById('name-label');
assert.isNotNull(el);
assert.isAbove(el.innerText.length, 0);
```

`#email-label` 요소는 입력을 설명하는 텍스트를 포함해야 합니다.

```js
const el = document.getElementById('email-label');
assert.isNotNull(el);
assert.isAbove(el.innerText.length, 0);
```

`#number-label` 요소는 입력을 설명하는 텍스트를 포함해야 합니다.

```js
const el = document.getElementById('number-label');
assert.isNotNull(el);
assert.isAbove(el.innerText.length, 0);
```

`#name-label` 요소는 `#survey-form`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#survey-form #name-label');
assert.isNotNull(el);
```

`#email-label` 요소는 `#survey-form`의 자손 요소여야 합니다.

```js
const el = document.querySelector('#survey-form #email-label');
assert.isNotNull(el);
```

Your `#number-label` should be a descendant of `#survey-form`.

```js
const el = document.querySelector('#survey-form #number-label');
assert.isNotNull(el);
```

Your `#name` should have a `placeholder` attribute and value.

```js
const el = document.getElementById('name');
assert.isNotNull(el);
assert.isNotNull(el.placeholder);
assert.isAbove(el.placeholder.length, 0);
```

Your `#email` should have a `placeholder` attribute and value.

```js
const el = document.getElementById('email');
assert.isNotNull(el);
assert.isNotNull(el.placeholder);
assert.isAbove(el.placeholder.length, 0);
```

Your `#number` should have a `placeholder` attribute and value.

```js
const el = document.getElementById('number');
assert.isNotNull(el);
assert.isNotNull(el.placeholder);
assert.isAbove(el.placeholder.length, 0);
```

You should have a `select` field with an `id` of `dropdown`.

```js
const el = document.getElementById('dropdown');
assert.isNotNull(el);
assert.strictEqual(el.tagName, 'SELECT');
```

Your `#dropdown` should have at least two selectable (not disabled) `option` elements.

```js
const els = document.querySelectorAll('#dropdown option:not([disabled])');
assert.isAtLeast(els.length, 2);
```

Your `#dropdown` should be a descendant of `#survey-form`.

```js
const el = document.querySelector('#survey-form #dropdown');
assert.isNotNull(el);
```

You should have at least two `input` elements with a `type` of `radio` (radio buttons).

```js
const els = document.querySelectorAll('input[type="radio"]');
assert.isAtLeast(els.length, 2);
```

You should have at least two radio buttons that are descendants of `#survey-form`.

```js
const els = document.querySelectorAll('#survey-form input[type="radio"]');
assert.isAtLeast(els.length, 2);
```

All your radio buttons should have a `value` attribute and value.

```js
const els1 = document.querySelectorAll('input[type="radio"]');
const els2 = document.querySelectorAll(
  'input[type="radio"][value=""], input[type="radio"]:not([value])'
);
assert.isAbove(els1.length, 0);
assert.lengthOf(els2, 0);
```

All your radio buttons should have a `name` attribute and value.

```js
const els1 = document.querySelectorAll('input[type="radio"]');
const els2 = document.querySelectorAll(
  'input[type="radio"][name=""], input[type="radio"]:not([name])'
);
assert.isAbove(els1.length, 0);
assert.lengthOf(els2, 0);
```

Every radio button group should have at least 2 radio buttons.

```js
const radioButtons = document.querySelectorAll('input[type="radio"]');
const groups = {};

if (radioButtons) {
  radioButtons.forEach(el => {
    if (!groups[el.name]) groups[el.name] = [];
    groups[el.name].push(el);
  });
}

const groupKeys = Object.keys(groups);

groupKeys.forEach(key => {
  if (groups[key].length < 2) assert(false);
});

assert.isAbove(groupKeys.length, 0);
```

You should have at least two `input` elements with a `type` of `checkbox` (checkboxes) that are descendants of `#survey-form`.

```js
const els = document.querySelectorAll('#survey-form input[type="checkbox"]');
assert.isAtLeast(els.length, 2);
```

All your checkboxes inside `#survey-form` should have a `value` attribute and value.

```js
const els1 = document.querySelectorAll('#survey-form input[type="checkbox"]');
const els2 = document.querySelectorAll(
  '#survey-form input[type="checkbox"][value=""], #survey-form input[type="checkbox"]:not([value])'
);
assert.isAbove(els1.length, 0);
assert.lengthOf(els2, 0);
```

You should have at least one `textarea` element that is a descendant of `#survey-form`.

```js
const el = document.querySelector('#survey-form textarea');
assert.isNotNull(el);
```

You should have an `input` or `button` element with an `id` of `submit`.

```js
const el = document.getElementById('submit');
assert.isNotNull(el);
assert.isTrue(el.tagName === 'INPUT' || el.tagName === 'BUTTON');
```

Your `#submit` should have a `type` of `submit`.

```js
const el = document.getElementById('submit');
assert.isNotNull(el);
assert.strictEqual(el.type, 'submit');
```

Your `#submit` should be a descendant of `#survey-form`.

```js
const el = document.querySelector('#survey-form #submit');
assert.isNotNull(el);
```

# --seed--

## --seed-contents--

```html

```

```css

```

# --solutions--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="styles.css" />
    <title>Survey Form</title>
  </head>
  <body>
    <h1>Survey Form</h1>
    <p>The card below was built as a sample survey form for freeCodeCamp.</p>
    <main id="main">
      <h1 id="title">Join the Togepi Fan Club!</h1>
      <p id="description">
        Enter your information here to receive updates about club activities,
        our monthly newsletter, and other email communications.
      </p>
      <form id="survey-form" action="#">
        <label for="name" id="name-label"
          ><p>Name:</p>
          <input type="text" id="name" placeholder="e.g. John Smith" required />
        </label>
        <label for="email" id="email-label"
          ><p>Email:</p>
          <input
            type="email"
            id="email"
            placeholder="e.g. john.smith@email.com"
            required
          />
        </label>
        <label for="age" id="number-label"
          ><p>Age<em>(optional)</em>:</p>
          <input
            type="number"
            id="number"
            placeholder="e.g. 19"
            min="18"
            max="99"
          />
        </label>
        <label for="interest" id="interest-label"
          ><p>What are you most interested in?</p>
          <select id="dropdown">
            <option selected disabled hidden></option>
            <option id="battles">Battling</option>
            <option id="breeding">Breeding</option>
            <option id="catching">Completing my Pokedex</option>
            <option id="exploring">Exploring new regions</option>
          </select>
        </label>
        <p>Who is your favourite Pokemon?</p>
        <label for="togepi">
          <input
            id="togepi"
            type="radio"
            name="favorite"
            value="togepi"
          />Togepi!
        </label>
        <label for="pikachu">
          <input
            id="pikachu"
            type="radio"
            name="favorite"
            value="pikachu"
          />Pikachu
        </label>
        <label for="other">
          <input id="other" type="radio" name="favorite" value="other" />Other
        </label>
        <p>Which communications do you want to receive?</p>
        <label for="newsletter">
          <input
            id="newsletter"
            type="checkbox"
            name="communications"
            value="newsletter"
          />Newsletter
        </label>
        <label for="events">
          <input
            id="events"
            type="checkbox"
            name="communications"
            value="events"
          />Event updates
        </label>
        <label for="updates">
          <input
            id="updates"
            type="checkbox"
            name="communications"
            value="updates"
          />Club updates
        </label>
        <p>Any other information you would like to share?</p>
        <textarea id="additional-information" rows="4" cols="50">
You can provide comments, suggestions, or feedback here.</textarea
        >
        <p>
          <em
            >Please note: This form is a proof of concept. Submitting the form
            will not actually transmit your data.</em
          >
        </p>
        <button type="Submit" id="submit">Submit</button>
      </form>
    </main>
  </body>
  <footer>
    <a href="../">Return to Project List</a> |
    <a href="https://www.nhcarrigan.com">Return to HomePage</a>
  </footer>
</html>
```

```css
main {
  text-align: center;
  background-color: #92869c;
  background-blend-mode: lighten;
  max-width: 500px;
  margin: 20px auto;
  border-radius: 50px;
  box-shadow: 10px 10px rgba(0, 0, 0, 0.5);
  color: black;
}
body {
  text-align: center;
  background: #3a3240;
  color: white;
}
input,
textarea,
select,
button {
  background: #3a3240;
  color: white;
}
a {
  color: white;
}
```
