---
id: 67d301cc87b84eaa42bdcdbe
title: "Faili la tsconfig ni nini, na kwa nini ni muhimu kuingiza katika miradi yako ya TypeScript?"
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

Mipangilio ya compiler ya TypeScript inaweza kusanidiwa ili kukidhi mahitaji ya mradi wako. Usanidi huo unaishi katika faili la `tsconfig.json` katika saraka kuu ya mradi wako. Kwa kweli, bila hilo, compiler haitafanya kazi isipokuwa ukipitisha bendera za amri moja kwa moja. Lakini faili hili hasa hufanya nini? Sawa, tuchunguze faili la mfano:

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

Hii inaonekana ni nyingi! Hivyo basi, tuchambue. Sifa ya `compilerOptions` itakuwa na "kiini" cha usanidi wako - hapa ndipo unadhibiti jinsi compiler ya TypeScript inavyotenda. Ukiangalia kwenye kitu kilichopangwa ndani…

`rootDir` na `outDir` zinaambia TypeScript saraka gani ina faili zako za chanzo, na saraka gani inapaswa kuwa na msimbo wa JavaScript uliotafsiriwa.

Sifa ya `lib` inaamua ni aina gani za maelezo ya aina compiler inazitumia, na inakuwezesha kuingiza msaada kwa matoleo maalum ya ES, DOM, na zaidi.

`module` na `moduleResolution` hufanya kazi pamoja kudhibiti jinsi kifurushi chako kinavyotumia moduli - iwe CommonJS au ECMAScript.

`esModuleInterop` hurahisisha ushirikiano kati ya moduli za CommonJS na ES kwa kuunda moja kwa moja vitu vya namespace kwa imports, na kufanya iwe rahisi kutumia moduli kutoka kwa mifumo tofauti pamoja katika miradi yako ya TypeScript, na chaguo la `skipLibCheck` linapita bila kuthibitisha faili za `.d.ts` ambazo hazijatajwa na imports katika msimbo wako.

Na hatimaye tunafikia hali ya `strict`. Mtu anaweza kusema kuwa TypeScript haifaidiki kweli bila bendera hii kuwezeshwa, kwani inawasha ukaguzi mwingine mwingi, kama vile kuhitaji kushughulikia aina zinazoweza kuwa na thamani ya null ipasavyo, au kutoa onyo wakati TypeScript haiwezi kubaini aina na inarudi kwa any.

Kabla hatujamaliza, kumbuka kidogo kuhusu sifa ya ngazi ya juu ya `exclude` - wakati umeeleza saraka ya chanzo, unaweza kuwa na msimbo wa TypeScript nje ya saraka hiyo ambao hutaki uandikwe kama sehemu ya msimbo wako wa uzalishaji. Kwa mfano, msimbo wako wa majaribio. Safu ya `exclude` inaambia compiler kuacha kuzingatia faili hizi za TypeScript wakati wa uandikishaji, lakini bado inaruhusu zana kama Intellisense kuonyesha matatizo yanayoweza kutokea.

Kuna chaguzi nyingi zaidi za compiler unazoweza kuchunguza - zaidi ya 50! Nakuhimiza uchunguze nyaraka na ujaribu kupata usanidi unaofaa kwa mahitaji ya mradi wako.

# --questions--

## --text--

Ni sifa gani katika faili la `tsconfig.json` inayogusa jinsi compiler inavyotenda?

## --answers--

`rootDir`

### --feedback--

Sifa hii ni kitu chenye chaguzi za compiler.

---

`compilerOptions`

---

`exclude`

### --feedback--

Sifa hii ni kitu chenye chaguzi za compiler.

---

`lib`

### --feedback--

Sifa hii ni kitu chenye chaguzi za compiler.

## --video-solution--

2

## --text--

Chaguo la `strict` katika faili la `tsconfig.json` hufanya nini?

## --answers--

Linakagua tu aina zinazoweza kuwa na null.

### --feedback--

Chaguo hili huwezesha ukaguzi mbalimbali, ikiwa ni pamoja na kushughulikia aina zinazoweza kuwa na null.

---

Linahimiza matumizi ya moduli za CommonJS.

### --feedback--

Chaguo hili huwezesha ukaguzi mbalimbali, ikiwa ni pamoja na kushughulikia aina zinazoweza kuwa na null.

---

Linabadilisha chaguzi kadhaa za ukaguzi wa aina.

---

Linatoa faili za majaribio nje ya uandikishaji.

### --feedback--

Chaguo hili huwezesha ukaguzi mbalimbali, ikiwa ni pamoja na kushughulikia aina zinazoweza kuwa na null.

## --video-solution--

3

## --text--

Madhumuni ya safu ya `exclude` katika faili la `tsconfig.json` ni yapi?

## --answers--

Kueleza ni faili gani zaandikwe.

### --feedback--

Unaweza kutumia hii kuondoa msimbo wa majaribio katika uandikishaji.

---

Kutoa orodha ya maktaba za ziada za kuingiza.

### --feedback--

Unaweza kutumia hii kuondoa msimbo wa majaribio katika uandikishaji.

---

Kusahau baadhi ya faili wakati wa uandikishaji.

---

Kueleza saraka za matokeo kwa faili zilizotafsiriwa.

### --feedback--

Unaweza kutumia hii kuondoa msimbo wa majaribio katika uandikishaji.

## --video-solution--

3
