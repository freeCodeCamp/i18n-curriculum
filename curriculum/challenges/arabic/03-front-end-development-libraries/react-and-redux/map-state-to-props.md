---
id: 5a24c314108439a4d4036145
title: ركّب (Map) الحالة (State) في مِيزات (Props)
challengeType: 6
forumTopicId: 301433
dashedName: map-state-to-props
---

# --description--

The `Provider` component allows you to provide `state` and `dispatch` to your React components, but you must specify exactly what state and actions you want. This way, you make sure that each component only has access to the state it needs. You accomplish this by creating two functions: `mapStateToProps()` and `mapDispatchToProps()`.

وفي هذه الوظائف، أنت تعلن ما هي القطع الذي تريد الوصول إليها وما هو منشئ الإجراء الذي تحتاج إلى أن يكون قادراً على إرساله (dispatch). وبمجرد إنشاء هذه المهام، سترى كيفية استخدام طريقة React مرتبط إلى Redux باسم `connect` لتوصيلها بالمكونات الخاصة بك في تحد آخر.

**ملاحظة:** خلف المشاهد, يستخدم React مرتبط إلى Redux طريقة `store.subscribe()` لتنفيذ `mapStateToProps()`.

# --instructions--

إنشاء وظيفة `mapStateToProps()`. يجب أن تأخذ هذه الوظيفة `state` كحجة، ثم إرجاع كائن يركيب تلك الحالة إلى أسماء خاصية محددة. ستصبح هذه الخصائص متاحة للمكون الخاص بك بواسطة `props`. نظرًا لأن هذا المثال يحافظ على كامل حالة التطبيق في قائمة واحد، يمكنك نقل تلك الحالة جميعها إلى المكون الخاص بك. إنشاء خاصية `messages` في الكائن الذي يتم أنشئه، وتعيين هذه الخاصية إلى `state`.

# --hints--

يجب أن تكون `state` قائمة فارغة.

```js
assert(Array.isArray(state) && state.length === 0);
```

يجب أن تكون `mapStateToProps` وظيفة function.

```js
assert(typeof mapStateToProps === 'function');
```

يجب أن تكون `mapStateToProps` كائن object.

```js
assert(typeof mapStateToProps() === 'object');
```

نقل قائمة كحالة إلى `mapStateToProps` يجب أن يعيد هذه القائمة المسندة إلى هُوِيَّة `messages`.

```js
assert(mapStateToProps(['messages']).messages.pop() === 'messages');
```

# --seed--

## --seed-contents--

```jsx
const state = [];

// Change code below this line
```

# --solutions--

```jsx
const state = [];

// Change code below this line

const mapStateToProps = (state) => {
  return {
    messages: state
  }
};
```
