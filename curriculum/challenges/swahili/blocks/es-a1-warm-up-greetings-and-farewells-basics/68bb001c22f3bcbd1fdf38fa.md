---
id: 68bb001c22f3bcbd1fdf38fa
title: Zoezi la 1
challengeType: 19
dashedName: task-1
lang: es
---

<!-- (Audio) Elena: Hola -->

# --description--

Elena anataka kusema "habari". Utasikia neno hili kila wakati kwa Kihispania wakati watu wanapokutana.

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.
Kuna jibu **moja** tu sahihi. Ikiwa unahitaji msaada, bofya **maelezo** chini ya funzo.

# --questions--

## --text--

Elena anatumia neno gani kusema "habari"?

## --answers--

`Hola`

---

`Adiós`

### --feedback--

Hii ina maana kinyume na kile anachosema msemaji. Fungua sehemu ya maelezo ikiwa unahitaji msaada zaidi.

---

`Chao`

### --feedback--

Hii ina maana kinyume na kile anachosema msemaji. Fungua sehemu ya maelezo ikiwa unahitaji msaada zaidi.

---

`Buenos días`

### --feedback--

Hii ina maana "Habari za asubuhi", lakini siyo kile unachosikia kwenye sauti.

## --video-solution--

1

# --explanation--

Neno `Hola` ni salamu. Linatumika unapokutana na mtu, sawa na "Hello" au "Hi". Kwa mfano:

`¡Hola, buenos días!` – Habari, habari za asubuhi!

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
      "startTimestamp": 0.35,
      "finishTimestamp": 0.9
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
      "finishTime": 1.55,
      "dialogue": {
        "text": "¡Hola!",
        "align": "center"
      }
    },
    {
      "character": "Elena",
      "opacity": 0,
      "startTime": 2.05
    }
  ]
}
```
