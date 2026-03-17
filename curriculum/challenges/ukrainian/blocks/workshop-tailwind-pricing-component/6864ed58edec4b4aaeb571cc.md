---
id: 6864ed58edec4b4aaeb571cc
title: Крок 17
challengeType: 0
dashedName: step-17
---

# --description--

Перейдіть до внутрішнього `div` у **плані слухача** та додайте йому класи `grid`, `grid-rows-[auto_auto_auto_1fr]` і `gap-y-2`.

Ці класи зроблять внутрішній `div` контейнером сітки, визначать чотири рядки, які накладаються один на одного, при цьому перші три матимуть `auto`, а останній займатиме решту простору, і нарешті додадуть пробіл `0.5rem` між рядками.

# --hints--

Ваш внутрішній елемент `div` має мати клас `grid`.

```js
const listenerPlanInnerDiv = document.querySelectorAll("div")[2]

assert.isTrue(listenerPlanInnerDiv.classList.contains("grid"))
```

Ваш внутрішній елемент `div` має мати клас `grid-rows-[auto_auto_auto_1fr]`.

```js
const listenerPlanInnerDiv = document.querySelectorAll("div")[2]

assert.isTrue(listenerPlanInnerDiv.classList.contains("grid-rows-[auto_auto_auto_1fr]"))
```

Ваш внутрішній елемент `div` має мати клас `gap-y-2`.

```js
const listenerPlanInnerDiv = document.querySelectorAll("div")[2]

assert.isTrue(listenerPlanInnerDiv.classList.contains("gap-y-2"))
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Music App Pricing</title>
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body class="bg-gray-100">
    <main>
      <h1 class="mt-8 mb-12 text-center text-3xl md:text-5xl font-semibold text-gray-900">Choose your listening plan</h1>
      <div class="grid grid-cols-1 md:grid-cols-3 max-w-6xl mx-auto gap-8 mt-16">
        <div class="bg-gray-100 ring-1 ring-gray-300 grid grid-rows-[1fr_auto] rounded-xl p-8 gap-6">
--fcc-editable-region--
          <div>
            <h2>Listener</h2>
            <p>$0<span>/month</span></p>
            <p>
              Start exploring millions of songs with basic features and ads.
            </p>
            <ul>
              <li><span>&#10003;</span>Ad-supported streaming</li>
              <li><span>&#10003;</span>Curated playlists</li>
            </ul>
          </div>
--fcc-editable-region--
          <a href="#">Start listening</a>
        </div>
        <div>
          <div>Most Popular</div>
          <div>
            <h2>Premium</h2>
            <p>$9.99<span>/month</span></p>
            <p>
              Enjoy the full music experience with unlimited access and
              downloads.
            </p>
            <ul>
              <li><span>&#10003;</span>Ad-free listening</li>
              <li><span>&#10003;</span>Offline playback</li>
              <li><span>&#10003;</span>Unlimited skips</li>
            </ul>
          </div>
          <a href="#">Go Premium</a>
        </div>
        <div>
          <div>
            <h2>Family</h2>
            <p>$14.99<span>/month</span></p>
            <p>
              Enjoy all of the features with a plan for up to 6 family members.
            </p>
            <ul>
              <li>
                <span>&#10003;</span>All Premium features
              </li>
              <li>
                <span>&#10003;</span>Up to 6 accounts
              </li>
              <li>
                <span>&#10003;</span>Individual playlists &
                libraries
              </li>
              <li>
                <span>&#10003;</span>Family Mix playlists
              </li>
            </ul>
          </div>
          <a href="#">Start Family Plan</a>
        </div>
      </div>
    </main>
  </body>
</html>
```
