---
id: 67329fbcfaf5ff5cdaa38a42
title: "Nini maana ya neno muhimu var, na kwa nini haipendekezwi tena kuitumia?"
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

Neno muhimu la `var` katika JavaScript ni mojawapo ya njia za awali za kutangaza vigezo. Limekuwa sehemu ya lugha tangu ilipoanzishwa na kwa miaka mingi lilibaki kuwa njia kuu ya kuunda vigezo. Hata hivyo, kadri JavaScript ilivyokua na wasanidi programu kupata uzoefu zaidi na lugha hiyo, mapungufu fulani ya kutumia `var` yalionekana na kusababisha kuanzishwa kwa `let` na `const` mwaka 2015.

Unapotangaza kigezo kwa `var`, kinakuwa na wigo wa kitendakazi au wigo wa kimataifa. Hii ina maana kwamba ukitangaza kigezo ndani ya kitendakazi kwa kutumia `var` kinapatikana tu ndani ya kitendakazi hicho. Hata hivyo, ukikitangaza nje ya kitendakazi chochote, kinakuwa kigezo cha kimataifa kinachopatikana katika msimbo wako mzima. Tabia hii inaweza kusababisha matokeo yasiyotegemewa na kufanya msimbo wako kuwa mgumu kueleweka.

Tatizo la `var` ni kwamba linakuwezesha kutangaza tena kigezo kile kile mara nyingi bila kutoa hitilafu. Hii inaweza kusababisha kufutwa kwa bahati mbaya na kufanya kutafuta makosa kuwa vigumu zaidi.

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

Tatizo kubwa zaidi la `var` ni ukosefu wa wigo wa block. Vigezo vilivyotangazwa kwa `var` ndani ya block kama tamko la `if` au mzunguko wa `for` bado vinapatikana nje ya block hiyo.

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

Tabia hii inaweza kusababisha kuvuja kwa vigezo bila kusudi na kufanya msimbo wako uwe rahisi kuwa na hitilafu.

Kutokana na matatizo haya, ukuzaji wa kisasa wa JavaScript umehamia mbali na `var` na kuipendelea `let` na `const`. Maneno haya muhimu yanatoa wigo wa block unaolingana zaidi na jinsi wigo unavyofanya kazi katika lugha nyingi za programu.

Pia hayaruhusu kutangaza tena ndani ya wigo uleule, kusaidia kuzuia kufutwa kwa bahati mbaya.

Ingawa `var` bado ni sehemu ya JavaScript na hufanya kazi katika vivinjari vyote, kwa ujumla inashauriwa kutumia `let` na `const` katika ukuzaji wa kisasa wa JavaScript. Hutoa sheria wazi za wigo, husaidia kuzuia makosa ya kawaida, na kufanya tabia ya msimbo wako kuwa ya kutegemewa zaidi.

# --questions--

## --text--

Ni wigo gani wa kigezo kilichotangazwa kwa `var` nje ya kitendakazi chochote?

## --answers--

Wigo wa block.

### --feedback--

Fikiria wapi kigezo cha `var` kilichotangazwa nje ya kitendakazi kinaweza kufikiliwa.

---

Wigo wa kitendakazi.

### --feedback--

Fikiria wapi kigezo cha `var` kilichotangazwa nje ya kitendakazi kinaweza kufikiliwa.

---

Wigo wa kimataifa.

---

Wigo wa moduli.

### --feedback--

Fikiria wapi kigezo cha `var` kilichotangazwa nje ya kitendakazi kinaweza kufikiliwa.

## --video-solution--

3

## --text--

Nini kitakuwa matokeo ya msimbo ufuatao?

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

Kumbuka kwamba `var` ni na wigo wa kitendakazi au kimataifa, na inaruhusu kutangaza tena ndani ya wigo uleule.

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

Kumbuka kwamba `var` ni na wigo wa kitendakazi au kimataifa, na inaruhusu kutangaza tena ndani ya wigo uleule.

---

```js
20
10
```

### --feedback--

Kumbuka kwamba `var` ni na wigo wa kitendakazi au kimataifa, na inaruhusu kutangaza tena ndani ya wigo uleule.

## --video-solution--

2

## --text--

Ni ipi kati ya zifuatazo SI sababu ya kuepuka kutumia `var` katika JavaScript ya kisasa?

## --answers--

`var` inaruhusu kutangaza tena vigezo katika wigo uleule.

### --feedback--

Fikiria ni tamko gani si kweli kuhusu tabia au msaada wa `var`.

---

`var` haitegemezwi katika vivinjari vya kisasa.

---

Vigezo vya `var` vina wigo wa kitendakazi, si wigo wa block.

### --feedback--

Fikiria ni tamko gani si kweli kuhusu tabia au msaada wa `var`.

---

Vigezo vya `var` vinapandishwa juu (hoisted).

### --feedback--

Fikiria ni tamko gani si kweli kuhusu tabia au msaada wa `var`.

## --video-solution--

2
