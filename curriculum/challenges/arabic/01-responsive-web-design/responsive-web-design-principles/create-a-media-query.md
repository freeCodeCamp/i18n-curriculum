---
id: 587d78b0367417b2b2512b08
title: إنشاء Media Query
challengeType: 0
videoUrl: 'https://scrimba.com/p/pzrPu4/cqwKrtm'
forumTopicId: 301139
dashedName: create-a-media-query
---

# --description--

Media Queries are a new technique introduced in CSS3 that change the presentation of content based on different viewport sizes. The viewport is a user's visible area of a web page, and is different depending on the device used to access the site.

Media Queries تتكون من نوع ال media، وإذا كان نوع ال media هذا يطابق نوع الجهاز الذي يتم عرض المستند فيه، يتم تطبيق الأنماط. يمكن أن يكون لديك العديد من المحددات والأنماط داخل استعلام الوسائط الخاص بك كما تريد.

هنا مثال ل media query الذي يعيد المحتوى عندما يكون عرض الجهاز أقل من أو يساوي `100px`:

```css
@media (max-width: 100px) { /* CSS Rules */ }
```

وال media query التالي يرجع المحتوى عندما يكون ارتفاع الجهاز أكثر من أو يساوي `350px`:

```css
@media (min-height: 350px) { /* CSS Rules */ }
```

تذكر، يتم تطبيق CSS داخل media query فقط إذا كان نوع ال media يطابق نوع الجهاز المستخدم.

# --instructions--

إضافة media query، بحيث أن علامة `p` تحتوي على `font-size` يساوي `10px` عندما يكون ارتفاع الجهاز أقل من أو يساوي `800px`.

# --hints--

يجب عليك تعريف `@media` عن الأجهزة ذات `height` أقل من أو يساوي `800px`.

```js
const media = new __helpers.CSSHelp(document).getCSSRules('media');
assert(media.some(x => x.media?.mediaText?.includes('(max-height: 800px)')));
```

يجب أن يكون عنصر `p` الخاص بك `font-size` من `10px` عندما يكون `height` أكثر من `800px`.

```js
const rules = new __helpers.CSSHelp(document).getRuleListsWithinMedia('(max-height: 800px)');
assert(rules?.find(x => x.selectorText === 'p')?.style?.fontSize === "10px");
```

يجب أن يكون عنصر `p` الخاص بك `font-size` من `20px` عندما يكون `height` أكثر من `800px`.

```js
const ifPFirst = new __helpers.CSSHelp(document).getCSSRules()?.find(x => x?.selectorText === 'p' || x?.media);
assert(ifPFirst?.style?.fontSize === '20px');
```

# --seed--

## --seed-contents--

```html
<style>
  p {
    font-size: 20px;
  }

  /* Only change code below this line */

  /* Only change code above this line */
</style>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis tempus massa. Aenean erat nisl, gravida vel vestibulum cursus, interdum sit amet lectus. Sed sit amet quam nibh. Suspendisse quis tincidunt nulla. In hac habitasse platea dictumst. Ut sit amet pretium nisl. Vivamus vel mi sem. Aenean sit amet consectetur sem. Suspendisse pretium, purus et gravida consequat, nunc ligula ultricies diam, at aliquet velit libero a dui.</p>
```

# --solutions--

```html
<style>
  p {
    font-size: 20px;
  }

  @media (max-height: 800px) {
    p {
      font-size: 10px;
    }
  }
</style>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis tempus massa. Aenean erat nisl, gravida vel vestibulum cursus, interdum sit amet lectus. Sed sit amet quam nibh. Suspendisse quis tincidunt nulla. In hac habitasse platea dictumst. Ut sit amet pretium nisl. Vivamus vel mi sem. Aenean sit amet consectetur sem. Suspendisse pretium, purus et gravida consequat, nunc ligula ultricies diam, at aliquet velit libero a dui.</p>
```
