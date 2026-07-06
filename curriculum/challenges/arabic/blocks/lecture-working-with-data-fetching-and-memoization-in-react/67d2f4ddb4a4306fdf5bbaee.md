---
id: 67d2f4ddb4a4306fdf5bbaee
title: ما هي تقنية التذكر (Memoization) وكيف يعمل الخطاف useMemo؟
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

كلما كبر تطبيق React الخاص بك، يمكن أن تبطئ عمليات إعادة العرض غير الضرورية والحسابات المكلفة الأداء، مما يؤدي إلى تحديثات بطيئة لواجهة المستخدم وزيادة استخدام الموارد.

يكون هذا الأمر مشكلة خاصة في التطبيقات التي تحتوي على إدارة حالة معقدة، قوائم كبيرة، دوال تتطلب حسابات مكثفة، والعديد من المكوِّنات التي لها والد واحد.

ينشأ من ذلك الحاجة إلى تحسين تطبيق React لأداء أفضل عن طريق تقليل الحسابات المكررة وضمان تفاعلات أكثر سلاسة.

يحل React هذه المشكلة باستخدام عملية تسمى التذكر (memoization)، وهي تقنية تخزن القيم والدوال مؤقتًا لمنع إعادة الحسابات غير الضرورية، ليصبح تطبيقك أسرع وأكثر تجاوبًا.

بالتعريف، التذكر هو تقنية تحسين تُخزن فيها نتائج استدعاءات الدوال المكلفة (تُتذكر) بناءً على معلمات محددة. عند توفير نفس المعلمات مرة أخرى، تُعاد النتيجة المخزنة بدلاً من إعادة حساب الدالة.

تتم عملية التذكر بهذه الطريقة:

- تخزين نتائج استدعاءات الدوال مع المعلمات المُدخلة الخاصة بها.

- قبل تنفيذ الدالة، تحقق مما إذا كانت النتيجة للمعلمات الحالية موجودة بالفعل في المخزن المؤقت.

- إذا كانت موجودة، أعد النتيجة المخزنة بدلاً من تشغيل الحساب مرة أخرى.

- إذا لم تكن موجودة، احسب النتيجة، خزّنها في المخزن المؤقت، ثم أعدها.

لتحسين تجربة المطوِّر مع التذكر، يوفر React ثلاث أدوات – `React.memo` (أو `memo`)، `useMemo` و`useCallback`.

كما قد تتوقع، كل من `useMemo` و`useCallback` هما خطافان، لكن `React.memo` هو غلاف مكوِّن، مكوِّن رتبة عليا (HOC).

في الدرس التالي، سنلقي نظرة على كيفية عمل الخطاف `useCallback` و`React.memo`.

يتيح لك `useMemo` تذكر القيم المحسوبة بينما يقوم `useCallback` بنفس الشيء لمراجع الدوال.

إذا كنت تتساءل ما هي القيم المحسوبة ومراجع الدوال، فالقيم المحسوبة تشير إلى نتيجة تنفيذ دالة، بينما مراجع الدوال هي المؤشرات إلى الدوال – كائن الدالة في الذاكرة.

لنرَ كيف تستخدم الخطاف `useMemo` أولاً. إليك الصيغة النحوية الأساسية للخطاف `useMemo`:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

يمكنك أن ترى أن كل ما تحتاجه هو تغليف الخطاف `useMemo` حول الدالة.

سيستقبل هذا المكوِّن `ExpensiveSquare` خاصية `num` التي سيستخدمها لحساب المربع:

```jsx
function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  const squared = calculateSquare(num);
  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}
export default ExpensiveSquare;
```

إليك مكوِّن `App` حيث يُستخدم `ExpensiveSquare`:

```jsx
import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
 const [timer, setTimer] = useState(0);
 const [num, setNum] = useState(0);

 useEffect(() => {
   const interval = setInterval(() => setTimer((c) => c + 1), 1000);
   return () => clearInterval(interval);
 }, []);

 return (
   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;
```

الـ `timer` في `useEffect`، الذي يعمل كل ثانية، سيجعل دالة `calculateSquare` تُنفذ في كل مرة تعمل فيها، حتى عندما لا تزيد متغير الحالة `num`.

لحل هذه المشكلة، يمكننا استخدام الخطاف `useMemo` بتغليف استدعاء الدالة بداخله وتحديد المتغير `num` كاعتماد:

```jsx
// import the useMemo hook
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  // const squared = calculateSquare(num);
  // Wrap the function call in useMemo instead
  const squared = useMemo(() => calculateSquare(num), [num]);

  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}

export default ExpensiveSquare;
```

هذا سيضمن تذكر الدالة عن طريق تخزين النتيجة مؤقتًا. رغم أن مكوِّن `ExpensiveSquare` لا يزال يُعاد عرضه في كل مرة يتم فيها تحديث حالة `timer` للوالد، إلا أن حساب `calculateSquare` يُعاد تنفيذه فقط عند العرض الأول وعندما يتغير `num`.

# --questions--

## --text--

ما هو التذكر (memoization) في React؟

## --answers--

تقنية تخزن القيم والدوال لمنع إعادة الحسابات غير الضرورية.

---

تقنية تتيح لك إدارة تحديثات حالة المكوِّن لمنع إعادة الحسابات غير الضرورية.

### --feedback--

يساعد على تحسين الأداء بتخزين النتائج المحسوبة سابقًا.

---

عملية التوفيق بين DOM الافتراضي وDOM الفعلي.

### --feedback--

يساعد على تحسين الأداء بتخزين النتائج المحسوبة سابقًا.

---

طريقة للتعامل مع التأثيرات الجانبية في المكوِّنات الدالية.

### --feedback--

يساعد على تحسين الأداء بتخزين النتائج المحسوبة سابقًا.

## --video-solution--

1

## --text--

ما الفرق بين القيم المحسوبة ومراجع الدوال؟

## --answers--

القيم المحسوبة هي كائنات دوال، بينما مراجع الدوال هي نتائج التنفيذ.

### --feedback--

واحدة هي ناتج دالة، والأخرى مجرد مؤشر إليها.

---

القيم المحسوبة هي نتيجة تنفيذ دالة، بينما مراجع الدوال هي كائنات الدوال في الذاكرة.

---

القيم المحسوبة ومراجع الدوال هما نفس الشيء.

### --feedback--

واحدة هي ناتج دالة، والأخرى مجرد مؤشر إليها.

---

مراجع الدوال تخزن القيم المحسوبة.

### --feedback--

واحدة هي ناتج دالة، والأخرى مجرد مؤشر إليها.

## --video-solution--

2

## --text--

أي من هذه ليست من الأدوات التي يوفرها React للتذكر؟

## --answers--

`React.memo`

### --feedback--

تركز أدوات التذكر على تخزين القيم والدوال، بينما هذا الخيار يتعامل مع التأثيرات الجانبية.

---

`useMemo`

### --feedback--

تركز أدوات التذكر على تخزين القيم والدوال، بينما هذا الخيار يتعامل مع التأثيرات الجانبية.

---

`useCallback`

### --feedback--

تركز أدوات التذكر على تخزين القيم والدوال، بينما هذا الخيار يتعامل مع التأثيرات الجانبية.

---

`useEffect`

## --video-solution--

4
