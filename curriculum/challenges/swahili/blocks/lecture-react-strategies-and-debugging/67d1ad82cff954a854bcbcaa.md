---
id: 67d1ad82cff954a854bcbcaa
title: "Je, Prop Drilling ni Nini?"
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Prop drilling ni njia ya msingi kabisa ya usimamizi wa state katika programu za React. Inaonekana rahisi, lakini inaweza kuwa ngumu haraka, na ni vigumu sana kuipanua.

Tuchunguze ni nini prop drilling, kwa nini ni tatizo, na mbadala mzuri wa kutumia kadri programu inavyokua.

Prop drilling ni mchakato wa kupitisha vigezo kutoka sehemu ya mzazi hadi sehemu za watoto zilizopangwa ndani kwa kina, hata wakati baadhi ya sehemu za watoto hazihitaji vigezo hivyo.

Kwa mfano, sema una sehemu tatu zinazoitwa `Parent`, `Child`, na `Grandchild`. Ikiwa unataka kutumia data fulani katika sehemu ya `Grandchild`, lakini data hiyo iko katika sehemu ya `Parent`, unahitaji kuipitisha kutoka sehemu ya `Parent` hadi `Child`, kisha kutoka `Child` hadi `Grandchild`.

Au kama data iko hata juu zaidi katika mnyororo, data hiyo inaweza kuhitajika kupitishwa hadi sehemu ya `Parent` pia.

Hapa, data ninayotaka kuonyesha ni mfuatano wa herufi `Hello, Prop Drilling!`. Imepewa thamani katika kigezo `greeting` katika sehemu ya mzizi `App`:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

Unaweza kuona sehemu ya `Parent` pia inapokea kigezo `greeting` kama thamani ya prop `greeting`. Hapa sehemu ya `Parent` inakipitisha ndani ya sehemu ya `Child` kama thamani ya prop nyingine `greeting` katika `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

Na hapa sehemu ya `Child` inakipitisha hadi sehemu ya `Grandchild`:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

Na hatimaye sehemu ya `Grandchild` inapokea salamu na kuitumia kama maudhui ya kipengele cha `h1`:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

Kwenye kivinjari, utaona ukurasa wenye kipengele kimoja cha `h1` chenye maandishi `Hello, Prop Drilling!`.

Mwanzo, prop drilling huenda haionekani kama tatizo kubwa. Lakini kadri programu yako inavyokua, huwa vigumu kuelewa, kutafuta makosa, na kuitunza.

Ikiwa unahitaji kupitisha vigezo, jaribu kuviweka vyote katika sehemu moja ya mzazi. Njia hii ya kuweka data zote muhimu mahali pamoja huitwa "chanzo kimoja cha ukweli".

Kwa mfano, sema unataka kuongeza `response` mpya kuambatana na `greeting`, na unataka kutumia zote mbili katika sehemu ya `Grandchild`. Kwa kuwa `greeting` tayari iko katika sehemu ya `App`, ni busara kuweka `response` hapo pia, na kuzipitisha zote mbili mnyororo:

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

Kwenye kivinjari, utaona ukurasa wenye kipengele cha `h1` chenye maandishi `Hello, Prop Drilling!` na kipengele cha `h2` chenye maandishi `I'm not here to play!`.

Ili kuepuka prop drilling, hasa katika programu kubwa na ngumu, fikiria kutumia Context API au maktaba za usimamizi wa state kama Redux na Redux Toolkit, Zustand, Recoil, na nyinginezo.

Utajifunza zaidi kuhusu hizi katika mafundisho yajayo.

# --questions--

## --text--

Je, prop hupitiaje kutoka kwa mzazi hadi sehemu ya mtoto wa mtoto?

## --answers--

Kwa kuainisha prop ndani ya sehemu ya mtoto wa mtoto.

### --feedback--

Prop lazima ipitie sehemu ya mtoto kabla haijafika kwa mtoto wa mtoto.

---

Kwa kuipitisha kutoka kwa mzazi hadi mtoto, kisha kutoka mtoto hadi mtoto wa mtoto.

---

Kwa kutumia hook ya `useEffect` kupata prop kwa njia ya mabadiliko.

### --feedback--

Prop lazima ipitie sehemu ya mtoto kabla haijafika kwa mtoto wa mtoto.

---

Kwa kutumia hook ya `useState` katika sehemu ya mtoto wa mtoto.

### --feedback--

Prop lazima ipitie sehemu ya mtoto kabla haijafika kwa mtoto wa mtoto.

## --video-solution--

2

## --text--

Prop drilling ni nini katika React?

## --answers--

Kupitisha vigezo moja kwa moja kwa sehemu zinazohitaji tu.

### --feedback--

Hutokea wakati vigezo vinapitishwa kupitia ngazi nyingi bila sababu.

---

Kutumia context kushirikisha state kati ya sehemu.

### --feedback--

Hutokea wakati vigezo vinapitishwa kupitia ngazi nyingi bila sababu.

---

Kupitisha vigezo kutoka kwa mzazi hadi sehemu za watoto zilizopangwa ndani kwa kina.

---

Kupitia ndani ya state ya sehemu kwa kutumia hooks.

### --feedback--

Hutokea wakati vigezo vinapitishwa kupitia ngazi nyingi bila sababu.

## --video-solution--

3

## --text--

Kwa nini prop drilling huonekana kama tatizo katika programu kubwa?

## --answers--

Hufanya iwe rahisi kusimamia state.

### --feedback--

Kupitisha vigezo vingi kupitia sehemu nyingi kunaweza kufanya msimbo kuwa mchafu.

---

Huboresha utendaji kwa kupunguza kuonyesha tena.

### --feedback--

Kupitisha vigezo vingi kupitia sehemu nyingi kunaweza kufanya msimbo kuwa mchafu.

---

Hufanya msimbo kuwa mgumu kusoma, kutafuta makosa, na kuitunza.

---

Hutoa hitaji la maktaba za usimamizi wa state.

### --feedback--

Kupitisha vigezo vingi kupitia sehemu nyingi kunaweza kufanya msimbo kuwa mchafu.

## --video-solution--

3
