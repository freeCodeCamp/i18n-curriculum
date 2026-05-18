---
id: 67d2f4ddb4a4306fdf5bbaee
title: "Memoization ni nini, na Hook ya useMemo inafanya kazi vipi?"
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

Kadiri programu yako ya React inavyokua, upitishaji upya usiohitajika na mahesabu ghali yanaweza kupunguza utendaji, na kusababisha masasisho ya UI kuwa polepole na matumizi ya rasilimali kuongezeka.

Hii inaweza kuwa tatizo hasa katika programu zilizo na usimamizi mgumu wa hali, orodha kubwa, vitendakazi vinavyohitaji mahesabu mazito, na sehemu nyingi zenye mzazi mmoja.

Hii huleta haja ya kuboresha programu yako ya React kwa utendaji bora kwa kupunguza mahesabu rudufu na kuhakikisha mwingiliano laini zaidi.

React inatatua tatizo hili kwa mchakato unaoitwa memoization, mbinu inayohifadhi thamani na vitendakazi ili kuzuia mahesabu yasiyo ya lazima, ili programu yako iwe haraka na inayojibadilisha kulingana na kifaa.

Kwa ufafanuzi, memoization ni mbinu ya kuboresha utendaji ambapo matokeo ya wito wa vitendakazi ghali huhifadhiwa (kumbukwa) kulingana na hoja maalum. Wakati hoja zile zile zinapotolewa tena, matokeo yaliyohifadhiwa hurudishwa badala ya kuhesabu tena kitendakazi hicho.

Mchakato wa memoization hufanyika kwa njia hii:

- Hifadhi matokeo ya wito wa vitendakazi pamoja na hoja zake za ingizo.

- Kabla ya kutekeleza kitendakazi, angalia kama matokeo kwa hoja za sasa tayari yapo kwenye hifadhi.

- Ikiwa yapo, rudisha matokeo yaliyohifadhiwa badala ya kuendesha mahesabu tena.

- Ikiwa hayapo, hesabu matokeo, uyahifadhi kwenye hifadhi, kisha uyarudishe.

Ili kuboresha uzoefu wa msanidi programu na memoization, React hutoa zana tatu – `React.memo` (au `memo`), `useMemo` na `useCallback`. 

Kama unavyoweza kubashiri, `useMemo` na `useCallback` zote ni hooks, lakini `React.memo` ni kifuniko cha sehemu, sehemu ya daraja la juu (HOC).

Katika funzo lijalo, tutaangalia jinsi hook ya `useCallback` na `React.memo` zinavyofanya kazi.

`useMemo` inakuwezesha kuhifadhi thamani zilizohesabiwa wakati `useCallback` hufanya vivyo hivyo kwa rejea za vitendakazi.

Ikiwa unajiuliza thamani zilizohesabiwa na rejea za vitendakazi ni nini, thamani zilizohesabiwa zinahusu matokeo ya kutekeleza kitendakazi, wakati rejea za vitendakazi ni viashiria vya vitendakazi – kitu cha kitendakazi katika kumbukumbu.

Tuchunguze jinsi ya kutumia hook ya `useMemo` kwanza. Hii ndiyo sintaksia ya msingi ya hook ya `useMemo`:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

Unaweza kuona kinachohitajika ni kufunika hook ya `useMemo` karibu na kitendakazi.

Sehemu hii ya `ExpensiveSquare` itapokea vigezo vya `num` ambavyo itatumia kuhesabu mraba:

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

Hii ni sehemu ya `App` ambapo `ExpensiveSquare` inatumika:

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

`timer` katika `useEffect`, inayoendesha kila sekunde moja, itafanya kitendakazi cha `calculateSquare` kitekeke wakati wowote kinapoendeshwa, hata kama hauongezi thamani ya hali ya `num`.

Ili kutatua tatizo hili, tunaweza kutumia hook ya `useMemo` kwa kufunika wito wa kitendakazi ndani yake na kubainisha mabadiliko ya `num` kama utegemezi:

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

Hii itahakikisha kitendakazi kinahifadhiwa kwa kuhifadhi matokeo. Hata kama sehemu ya `ExpensiveSquare` bado inapitisha upya kila wakati hali ya mzazi `timer` inaposasishwa, mahesabu ya `calculateSquare` hufanyika tena tu wakati wa onyesho la awali na wakati `num` inabadilika.

# --questions--

## --text--

Memoization ni nini katika React?

## --answers--

Mbinu inayohifadhi thamani na vitendakazi ili kuzuia mahesabu yasiyo ya lazima.

---

Mbinu inayokuwezesha kusimamia masasisho ya hali ya sehemu ili kuzuia mahesabu yasiyo ya lazima.

### --feedback--

Husaidia kuboresha utendaji kwa kuhifadhi matokeo yaliyohesabiwa awali.

---

Mchakato wa kulinganisha Virtual DOM na DOM halisi.

### --feedback--

Husaidia kuboresha utendaji kwa kuhifadhi matokeo yaliyohesabiwa awali.

---

Njia ya kushughulikia athari za pembeni katika sehemu za kitendakazi.

### --feedback--

Husaidia kuboresha utendaji kwa kuhifadhi matokeo yaliyohesabiwa awali.

## --video-solution--

1

## --text--

Tofauti gani kati ya thamani zilizohesabiwa na rejea za vitendakazi?

## --answers--

Thamani zilizohesabiwa ni vitu vya kitendakazi, wakati rejea za vitendakazi ni matokeo ya utekelezaji.

### --feedback--

Moja ni matokeo ya kitendakazi, jingine ni kiashiria tu cha kitendakazi hicho.

---

Thamani zilizohesabiwa ni matokeo ya kutekeleza kitendakazi, wakati rejea za vitendakazi ni vitu vya kitendakazi katika kumbukumbu.

---

Thamani zilizohesabiwa na rejea za vitendakazi ni vitu sawa.

### --feedback--

Moja ni matokeo ya kitendakazi, jingine ni kiashiria tu cha kitendakazi hicho.

---

Rejea za vitendakazi huhifadhi thamani zilizohesabiwa.

### --feedback--

Moja ni matokeo ya kitendakazi, jingine ni kiashiria tu cha kitendakazi hicho.

## --video-solution--

2

## --text--

Ni ipi kati ya hizi SI mojawapo ya zana ambazo React hutoa kwa memoization?

## --answers--

`React.memo`

### --feedback--

Zana za memoization zinazingatia kuhifadhi thamani na vitendakazi, wakati chaguo hili linashughulikia athari za pembeni.

---

`useMemo`

### --feedback--

Zana za memoization zinazingatia kuhifadhi thamani na vitendakazi, wakati chaguo hili linashughulikia athari za pembeni.

---

`useCallback`

### --feedback--

Zana za memoization zinazingatia kuhifadhi thamani na vitendakazi, wakati chaguo hili linashughulikia athari za pembeni.

---

`useEffect`

## --video-solution--

4
