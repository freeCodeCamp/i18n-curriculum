---
id: 699eff4a6eefcef5c1d1059a
title: Zoezi la 24
challengeType: 22
dashedName: task-24
lang: es
---
<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

Neno `dominio` linarejelea sehemu kuu ya anwani ya mtandao, kawaida sehemu inayofuata `@` katika barua pepe au baada ya `www` kwenye tovuti.

Linatumika sana wakati wa kutoa au kuthibitisha anwani za barua pepe na URL. Kwa mfano:

`El dominio es gmail punto com.` – Sehemu kuu ni gmail.com.

`¿Cuál es el dominio?` – Sehemu kuu ni ipi?

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

Nomino hii inarejelea sehemu kuu ya anwani ya mtandao au barua pepe.

# --explanation--

`Dominio` ni nomino inayotumika kwa jina la sehemu ya domain ya anwani ya barua pepe au tovuti.

Mara nyingi huonekana wakati watu wanapobainisha au kuthibitisha taarifa za mawasiliano ya kidijitali.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
