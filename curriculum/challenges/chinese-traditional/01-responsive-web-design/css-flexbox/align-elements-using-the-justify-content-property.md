---
id: 587d78ac367417b2b2512af6
title: 使用 justify-content 屬性對齊元素
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/c43gnHm'
forumTopicId: 301102
dashedName: align-elements-using-the-justify-content-property
---

# --description--

Sometimes the flex items within a flex container do not fill all the space in the container. It is common to want to tell CSS how to align and space out the flex items a certain way. Fortunately, the `justify-content` property has several options to do this. But first, there is some important terminology to understand before reviewing those options.

<a href="https://chinese.freecodecamp.org/news/flexbox-the-ultimate-css-flex-cheatsheet/" target="_blank" rel="noopener noreferrer nofollow">閱讀更多關於 flex-box 屬性的信息</a>

回憶一下，如果把 flex 容器設爲一個行，它的子元素會從左到右逐個排列。 如果把 flex 容器設爲一個列，它的子元素會從上到下逐個排列。 子元素排列的方向被稱爲 **main axis（主軸）**。 對一行來說，主軸水平貫穿每一個對象； 對於列，主軸垂直貫穿每一個對象。

對於如何沿主軸線排放 flex 項目，有幾種選擇。 常用的一種是 `justify-content: center;`：即 flex 子元素在 flex 容器中居中排列。 其他選擇包括：

<ul><li><code>flex-start</code>: aligns items to the start of the flex container. For a row, this pushes the items to the left of the container. For a column, this pushes the items to the top of the container. This is the default alignment if no <code>justify-content</code> is specified.</li><li><code>flex-end</code>：從 flex 容器的終止位置開始對齊項目。 對行來說是把項目移至右邊， 對於列是把項目移至底部。</li><li><code>space-between</code>：項目間保留一定間距地沿主軸居中排列。 第一個和最後一個項目被放置在容器邊沿。 例如，在行中第一個項目會緊貼着容器左邊，最後一個項目會緊貼着容器右邊，然後其他項目均勻排布。</li><li><code>space-around</code>：與<code>space-between</code>相似，但頭尾兩個項目不會緊貼容器邊緣，所有項目之間的空間均勻排布。</li><li><code>space-evenly</code>：在 flex 項目之間均勻分配空間，在 flex 容器的任一端都有一個完整的空間。</li></ul>

# --instructions--

這個例子可以幫助你理解這個屬性。 請爲 `#box-container` 元素添加 CSS 屬性 `justify-content`，並將其屬性值設置爲 `center`。

**提示：**  
在編輯器裏試試 `justify-content` 的其他可用值，看看它們之間的區別。 但要通過挑戰，你必須把屬性值設爲 `center`。

# --hints--

`#box-container` 所選擇的元素應有 `justify-content` 屬性，且其屬性值應爲 `center`。

```js
assert($('#box-container').css('justify-content') == 'center');
```

# --seed--

## --seed-contents--

```html
<style>
  #box-container {
    background: gray;
    display: flex;
    height: 500px;

  }
  #box-1 {
    background-color: dodgerblue;
    width: 25%;
    height: 100%;
  }

  #box-2 {
    background-color: orangered;
    width: 25%;
    height: 100%;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```

# --solutions--

```html
<style>
  #box-container {
    background: gray;
    display: flex;
    height: 500px;
    justify-content: center;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 25%;
    height: 100%;
  }

  #box-2 {
    background-color: orangered;
    width: 25%;
    height: 100%;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
