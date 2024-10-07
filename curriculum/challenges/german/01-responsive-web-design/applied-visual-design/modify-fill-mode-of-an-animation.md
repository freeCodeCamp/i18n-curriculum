---
id: 58a7a6ebf9a6318348e2d5aa
title: Den Füllmodus einer Animation bearbeiten
challengeType: 0
videoUrl: 'https://scrimba.com/c/cVJDmcE'
forumTopicId: 301064
dashedName: modify-fill-mode-of-an-animation
---

# --description--

That's great, but it doesn't work right yet. Notice how the animation resets after `500ms` has passed, causing the button to revert back to the original color. You want the button to stay highlighted.

Dies gelingt durch Setzen der Eigenschaft `animation-fill-mode` auf `forwards`. Der `animation-fill-mode` legt den Stil fest, der auf ein Element angewendet wird, nachdem die Animation beendet ist. Man definiert dies folgendermaßen:

```css
animation-fill-mode: forwards;
```

# --instructions--

Setze die `animation-fill-mode`-Eigenschaft von `button:hover` auf `forwards`, damit der Button hervorgehoben bleibt, falls ein Nutzer mit dem Cursor darüber fährt.

# --hints--

`button:hover` sollte eine `animation-fill-mode`-Eigenschaft mit einem Wert von `forwards` haben.

```js
assert.match(code,/button\s*?:\s*?hover\s*?{[\s\S]*animation-fill-mode\s*?:\s*?forwards\s*?;[\s\S]*}/gi);
assert.match(code,/button\s*?:\s*?hover\s*?{[\s\S]*animation-name\s*?:\s*?background-color\s*?;[\s\S]*}/gi);
assert.match(code,/button\s*?:\s*?hover\s*?{[\s\S]*animation-duration\s*?:\s*?500ms\s*?;[\s\S]*}/gi );
```

# --seed--

## --seed-contents--

```html
<style>
  button {
    border-radius: 5px;
    color: white;
    background-color: #0F5897;
    padding: 5px 10px 8px 10px;
  }
  button:hover {
    animation-name: background-color;
    animation-duration: 500ms;
    /* Only change code below this line */

    /* Only change code above this line */
  }
  @keyframes background-color {
    100% {
      background-color: #4791d0;
    }
  }
</style>
<button>Register</button>
```

# --solutions--

```html
<style>
  button {
    border-radius: 5px;
    color: white;
    background-color: #0F5897;
    padding: 5px 10px 8px 10px;
  }
  button:hover {
    animation-name: background-color;
    animation-duration: 500ms;
    animation-fill-mode: forwards;
  }
  @keyframes background-color {
    100% {
      background-color: #4791d0;
    }
  }
</style>
<button>Register</button>
```
