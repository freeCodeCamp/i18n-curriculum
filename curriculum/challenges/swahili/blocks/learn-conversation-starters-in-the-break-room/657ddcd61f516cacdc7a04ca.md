---
id: 657ddcd61f516cacdc7a04ca
title: Zoezi la 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria anamjulisha Tom kuhusu chaguzi za usafiri wa umma, akitaja hasa usafiri unaoacha kituo karibu. Hii ni muhimu kwa kusafiri ndani ya jiji, hasa kwenda sehemu ambazo si rahisi kufikiwa kwa miguu.

`Two blocks away` inamaanisha kwamba unahitaji kupita pembezoni mwa mtaa miwili kufika mahali fulani. Ni umbali mfupi wa kutembea ndani ya jiji.

`Downtown` ni kitovu cha jiji ambapo kuna maduka mengi, mikahawa, na kawaida majengo marefu.

# --questions--

## --text--

Maria anasema nini kinaacha kituo cha mtaa miwili mbali?

## --answers--

Teksi

### --feedback--

Maria anataja chaguo la usafiri wa umma, si huduma binafsi.

---

Treni

### --feedback--

Treni kawaida haziashi vituo vya mtaa; haziashi vituo vya reli.

---

Basi

---

Kukodisha baiskeli

### --feedback--

Huduma za kukodisha kawaida ni za mahali pamoja, si kitu kinachoacha kituo.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
