---
id: 695cc8f280fef0cc3bed02ca
title: Moduli ya path ni nini na inafanya kazi vipi?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

Moduli ya Node.js `path` inakuwezesha kufanya kazi na mafaili na njia za saraka. Inatoa njia kadhaa muhimu za kushughulikia na kubadilisha saraka, ikiwa ni pamoja na kuunganisha, kawaisha, na kutatua saraka katika majukwaa na mifumo tofauti ya uendeshaji.

Ili kutumia moduli ya `path`, unaweza kuileta (import) hivi:

```js
const path = require("path");
```

Tuchunguze baadhi ya njia ambazo moduli ya `path` inatoa na jinsi zinavyofanya kazi.

Kwanza, unapaswa kujua kuhusu vigezo vya kimataifa vya Node.js `__filename` na `__dirname`, vinavyojulikana pia kama vigezo vya "common JS". Huhitaji moduli ya `path` kupata upatikanaji wake, ndiyo maana huitwa vigezo vya kimataifa.

`__filename` ni njia kamili ya faili ya sasa na `__dirname` ni njia kamili ya saraka inayoshikilia faili ya sasa.

Kwa mfano, nina faili la `script.js` ambalo kwa sasa ninafanya kazi nalo. Hivi ndivyo njia hizo mbili zinavyorudisha:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

Pia unapaswa kujua kuhusu njia za jamaa na njia kamili.

Njia ya jamaa inaelekeza faili au folda kulingana na saraka yako ya kazi ya sasa. Kwa mfano, `./assets/src/text-files`.

Njia kamili, kwa upande mwingine, hutoa anwani kamili ya faili au folda kutoka mzizi wa mfumo wako, kama `/Users/johndoe/projects/app/assets/src/text-files.`

Njia ya `basename()` inaonyesha sehemu ya mwisho ya faili, yaani, jina la faili:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` inarudisha jina la saraka la njia:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` inarudisha kiendelezi cha faili ya sasa:

```js
console.log(path.extname(__filename)); // .js
```

Unaweza pia kubainisha faili tofauti ili kurudisha kiendelezi chake:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

Njia ya `join()` huchukua sehemu zote za njia unazozipatia na kuziunganisha kuwa njia moja safi, iliyokawaishwa.

Hii inaweza kuwa muhimu ikiwa unataka kuunganisha mafaili yanayohusiana katika saraka tofauti ili uweze kufanya kazi nayo pamoja:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

Windows hutumia mkwaju wa nyuma kutenganisha saraka, hivyo matokeo yatakuwa `src\assets\text-files`.

Zaidi ya hayo, njia ya `join()` huondoa mkwaju mbaya na kuondoa ziada:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

Njia ya `resolve()` hubadilisha mfululizo wa sehemu za njia kuwa njia kamili. Huanza kutoka saraka yako ya kazi ya sasa na matokeo yake ni njia kamili inayoweka alama mahali halisi kwenye kifaa:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

Tofauti kati ya `join()` na `resolve()` ni kwamba `join()` huunda njia ya jamaa, wakati `resolve()` inarudisha njia kamili.

Mwishowe, kuna njia za `parse()` na `format()`.

`parse()` huchukua saraka au faili na kurudisha kitu chenye mgawanyo wa sehemu zake, kama mzizi wa mfumo, saraka yake, kiendelezi, na jina la faili:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

`format()`, kwa upande mwingine, huunda njia kutoka kwa kitu chenye saraka, jina, na kiendelezi:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

Tofauti gani kati ya `path.dirname()` na `path.extname()` katika Node.js?

## --answers--

`dirname()` huondoa kiendelezi cha faili, wakati `extname()` huondoa jina la saraka.

### --feedback--

Makini ni ipi inayoshughulikia saraka na ipi inayoshughulikia viendelezi vya faili.

---

`dirname()` inarudisha njia kamili ya faili, wakati `extname()` inarudisha jina la saraka.

### --feedback--

Makini ni ipi inayoshughulikia saraka na ipi inayoshughulikia viendelezi vya faili.

---

`dirname()` inarudisha jina la saraka la njia, wakati `extname()` inarudisha kiendelezi cha faili.

---

`dirname()` na `extname()` zote hurejesha thamani ile ile lakini kwa miundo tofauti.

### --feedback--

Makini ni ipi inayoshughulikia saraka na ipi inayoshughulikia viendelezi vya faili.

## --video-solution--

3

## --text--

Ni njia gani ya `path` huunda njia kamili ya faili kutoka kwa kitu chenye vigezo vya saraka, jina, na kiendelezi?

## --answers--

`path.parse()`

### --feedback--

Fikiria ni nini kinyume cha `parse()`.

---

`path.format()`

---

`path.resolve()`

### --feedback--

Fikiria ni nini kinyume cha `parse()`.

---

`path.join()`

### --feedback--

Fikiria ni nini kinyume cha `parse()`.

## --video-solution--

2

## --text--

Vigezo vya kimataifa vya Node.js `__filename` na `__dirname` vinatoa upatikanaji wa nini?

## --answers--

Njia kamili ya faili ya sasa na saraka inayoshikilia faili hiyo.

---

Jina la moduli ya sasa na utegemezi wake.

### --feedback--

Fikiria ni vigezo gani vinakupa njia kamili za faili na saraka moja kwa moja bila kutumia moduli ya path.

---

Njia ya jamaa kuelekea saraka ya usakinishaji ya Node.js.

### --feedback--

Fikiria ni vigezo gani vinakupa njia kamili za faili na saraka moja kwa moja bila kutumia moduli ya path.

---

URL ya seva ya mtandao inayotumika na jina la mwenyeji wake.

### --feedback--

Fikiria ni vigezo gani vinakupa njia kamili za faili na saraka moja kwa moja bila kutumia moduli ya path.

## --video-solution--

1
