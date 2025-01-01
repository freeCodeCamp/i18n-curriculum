---
id: 587d78b1367417b2b2512b0c
title: 使排版根據設備尺寸自如響應
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/crzN7T8'
forumTopicId: 301141
dashedName: make-typography-responsive
---

# --description--

Instead of using `em` or `px` to size text, you can use viewport units for responsive typography. Viewport units, like percentages, are relative units, but they are based off different items. Viewport units are relative to the viewport dimensions (width or height) of a device, and percentages are relative to the size of the parent container element.

四個不同的視窗單位分別是：

<ul><li><code>vw</code> (viewport width): <code>10vw</code> would be 10% of the viewport's width.</li><li><code>vh：</code> 如 <code>3vh</code> 的意思是視窗高度的 3%。</li><li><code>vmin：</code> 如 <code>70vmin</code> 的意思是視窗的高度和寬度中較小一個的 70%。</li><li><code>vmax：</code> 如 <code>100vmax</code> 的意思是視窗的高度和寬度中較大一個的 100%。</li></ul>

下面這個例子是設置 `body` 標籤的寬度爲視窗寬度的 30%。

```css
body {
  width: 30vw;
}
```

# --instructions--

請將 `h2` 標籤的 `width` 設置爲視窗寬度的 80%，將段落的 `width` 設置爲視窗高度和寬度中較小值的 75%。

# --hints--

`h2` 元素的 `width` 應爲 80vw。

```js
assert.match(
  __helpers.removeCssComments(code),
  /h2\s*?{\s*?width:\s*?80vw;\s*?}/g
);
```

`p` 元素的 `width` 應爲 75vmin。

```js
assert.match(
  __helpers.removeCssComments(code),
  /p\s*?{\s*?width:\s*?75vmin;\s*?}/g
);
```

# --seed--

## --seed-contents--

```html
<style>

</style>

<h2>Importantus Ipsum</h2>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis tempus
  massa. Aenean erat nisl, gravida vel vestibulum cursus, interdum sit amet
  lectus. Sed sit amet quam nibh. Suspendisse quis tincidunt nulla. In hac
  habitasse platea dictumst. Ut sit amet pretium nisl. Vivamus vel mi sem.
  Aenean sit amet consectetur sem. Suspendisse pretium, purus et gravida
  consequat, nunc ligula ultricies diam, at aliquet velit libero a dui.
</p>
```

# --solutions--

```html
<style>
  h2 {
    width: 80vw;
  }
  p {
    width: 75vmin;
  }
</style>

<h2>Importantus Ipsum</h2>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis tempus
  massa. Aenean erat nisl, gravida vel vestibulum cursus, interdum sit amet
  lectus. Sed sit amet quam nibh. Suspendisse quis tincidunt nulla. In hac
  habitasse platea dictumst. Ut sit amet pretium nisl. Vivamus vel mi sem.
  Aenean sit amet consectetur sem. Suspendisse pretium, purus et gravida
  consequat, nunc ligula ultricies diam, at aliquet velit libero a dui.
</p>
```
