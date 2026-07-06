---
id: 67d1ad82cff954a854bcbcaa
title: ما هو التسكين بالخاصيات؟
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

التسكين بالخاصيات هو أبسط طريقة لإدارة الحالة في تطبيقات React. يبدو بسيطًا، لكنه قد يصبح فوضويًا بسرعة، ومن الصعب توسيعه.

لننظر إلى ما هو التسكين بالخاصيات، ولماذا هو مشكلة، وما هو البديل الجيد له مع نمو التطبيق.

التسكين بالخاصيات هو عملية تمرير الخصائص من مكوِّن أب إلى مكوِّنات فرعية مسكنة بعمق، حتى عندما لا تحتاج بعض المكوِّنات الفرعية إلى هذه الخصائص.

على سبيل المثال، لنفترض أن لديك ثلاثة مكوِّنات تُسمى `Parent` و`Child` و`Grandchild`. إذا أردت استخدام بعض البيانات في مكوِّن `Grandchild`، لكنها موجودة في مكوِّن `Parent`، فستحتاج إلى تمريرها من `Parent` إلى `Child`، ثم من `Child` إلى `Grandchild`.

أو إذا كانت البيانات موجودة في مستوى أعلى في السلسلة، فقد تضطر إلى تمريرها إلى مكوِّن `Parent` أيضًا.

هنا، البيانات التي أريد عرضها هي السلسلة النصية `Hello, Prop Drilling!`. تم تعيينها إلى المتغير `greeting` في المكوِّن الجذري `App`:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

يمكنك أن ترى أن مكوِّن `Parent` يستقبل أيضًا المتغير `greeting` كقيمة لخاصية `greeting`. هنا مكوِّن `Parent` يمررها إلى مكوِّن `Child` كقيمة لخاصية `greeting` أخرى في `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

وهنا مكوِّن `Child` الذي يمررها إلى مكوِّن `Grandchild`:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

وأخيرًا، يستقبل مكوِّن `Grandchild` التحية ويستخدمها كمحتوى لعنصر `h1`:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

في المتصفح، سترى صفحة بها عنصر `h1` واحد يحتوي على النص `Hello, Prop Drilling!`.

في البداية، قد لا يبدو التسكين بالخاصيات مشكلة كبيرة. لكن مع نمو التطبيق، يصبح من الصعب فهمه، وتصحيح أخطائه، وصيانته.

إذا احتجت إلى تمرير الخصائص، حاول أن تحتفظ بها كلها في مكوِّن أب واحد. تُسمى هذه الطريقة التي تركز كل البيانات الضرورية "مصدر الحقيقة الوحيد".

على سبيل المثال، لنفترض أنك تريد إضافة `response` جديدة مع `greeting`، وتريد استخدامهما معًا في مكوِّن `Grandchild`. بما أن `greeting` موجودة بالفعل في مكوِّن `App`، فمن المنطقي وضع `response` هناك أيضًا، وتمريرهما معًا عبر السلسلة:

```jsx
function App() {
  const greeting = "Hello, Prop Drilling!";
  const response = "I'm not here to play!";

  return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
  return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
  return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
  return (
    <>
      <h1>{greeting}</h1>
      <h2>{response}</h2>
    </>
  );
};

export default App;
```

في المتصفح، سترى صفحة بها عنصر `h1` يحتوي على النص `Hello, Prop Drilling!` وعنصر `h2` يحتوي على النص `I'm not here to play!`.

لتجنب التسكين بالخاصيات، خاصة في التطبيقات الكبيرة والمعقدة، فكر في استخدام واجهة برمجة التطبيقات للسياق (Context API) أو مكتبات إدارة الحالة مثل Redux وRedux Toolkit وZustand وRecoil وغيرها.

ستتعلم المزيد عن هذه في الدروس القادمة.

# --questions--

## --text--

كيف تنتقل خاصية من مكوِّن أب إلى مكوِّن حفيد؟

## --answers--

بتعريف الخاصية داخل مكوِّن الحفيد.

### --feedback--

يجب أن تمر الخاصية عبر المكوِّن الابن قبل الوصول إلى الحفيد.

---

بتمريرها من الأب إلى الابن، ثم من الابن إلى الحفيد.

---

باستخدام الخطاف `useEffect` لجلب الخاصية ديناميكيًا.

### --feedback--

يجب أن تمر الخاصية عبر الابن قبل الوصول إلى الحفيد.

---

باستخدام الخطاف `useState` في مكوِّن الحفيد.

### --feedback--

يجب أن تمر الخاصية عبر الابن قبل الوصول إلى الحفيد.

## --video-solution--

2

## --text--

ما هو التسكين بالخاصيات في React؟

## --answers--

تمرير الخصائص مباشرة فقط إلى المكوِّنات التي تحتاجها.

### --feedback--

يحدث عندما تُمرر الخصائص عبر مستويات متعددة بدون ضرورة.

---

استخدام السياق لمشاركة الحالة بين المكوِّنات.

### --feedback--

يحدث عندما تُمرر الخصائص عبر مستويات متعددة بدون ضرورة.

---

تمرير الخصائص من مكوِّن أب إلى مكوِّنات فرعية مسكنة بعمق.

---

التعمق في حالة المكوِّن باستخدام الخطافات.

### --feedback--

يحدث عندما تُمرر الخصائص عبر مستويات متعددة بدون ضرورة.

## --video-solution--

3

## --text--

لماذا يُعتبر التسكين بالخاصيات مشكلة في التطبيقات الكبيرة؟

## --answers--

يجعل إدارة الحالة أسهل.

### --feedback--

تمرير الكثير من الخصائص عبر مكوِّنات متعددة قد يجعل الشفرة فوضوية.

---

يحسن الأداء بتقليل عمليات إعادة العرض.

### --feedback--

تمرير الكثير من الخصائص عبر مكوِّنات متعددة قد يجعل الشفرة فوضوية.

---

يجعل الشفرة أصعب في القراءة، وتصحيح الأخطاء، والصيانة.

---

يلغي الحاجة إلى مكتبات إدارة الحالة.

### --feedback--

تمرير الكثير من الخصائص عبر مكوِّنات متعددة قد يجعل الشفرة فوضوية.

## --video-solution--

3
