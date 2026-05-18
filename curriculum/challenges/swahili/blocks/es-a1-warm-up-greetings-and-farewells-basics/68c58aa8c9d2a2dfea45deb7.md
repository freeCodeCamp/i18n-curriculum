---
id: 68c58aa8c9d2a2dfea45deb7
title: Zoezi la 7
challengeType: 19
dashedName: task-7
lang: es
---
<!-- (Audio) Elena: Hasta luego -->

# --description--

Elena anasema kwaheri, lakini anatarajia kukuona tena.

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Ni usemi gani Elena anautumia kusema "tutaonana baadaye"?

## --answers--

`Hasta luego.`

---

`Adiós`

### --feedback--

Hii ni kwaheri, lakini ni ya mwisho zaidi. Msemaji anatumia usemi tofauti.

---

`Chao`

### --feedback--

Hii pia ni njia isiyo rasmi ya kusema kwaheri, lakini si ile iliyo kwenye sauti.

---

`¡Hola!`

### --feedback--

Hii inamaanisha "Habari", salamu ya kawaida, lakini si kile Elena anasema.

## --video-solution--

1

# --explanation--

`Hasta luego` ni njia ya kawaida ya kusema kwaheri kwa Kihispania. Inatafsiriwa kama "Tutaonana baadaye".

Inatumika unapotarajia kuona mtu tena, lakini si lazima haraka. Kwa mfano:  

`Hasta luego, Marta.` – Tutaonana baadaye, Marta.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Elena",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_greetings_in_the_morning.mp3",
      "startTime": 1,
      "startTimestamp": 5.68,
      "finishTimestamp": 6.64
    }
  },
  "commands": [
    {
      "character": "Elena",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Elena",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Hasta luego.",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.46
    }
  ]
}
```
