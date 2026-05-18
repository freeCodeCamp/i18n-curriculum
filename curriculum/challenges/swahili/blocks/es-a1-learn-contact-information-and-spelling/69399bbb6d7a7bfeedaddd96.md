---
id: 69399bbb6d7a7bfeedaddd96
title: Zoezi la 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

Kitenzi `escribir` kinamaanisha "kuandika". Wazungumzaji wa Kihispania wanapotaka kueleza jinsi neno linaandikwa au kuandikwa herufi kwa herufi, mara nyingi hutumia usemi wa kihesabu `se escribe`.

Fomu hii inatokana na kitenzi `escribir` na hutumika sana kabla ya kuandika majina, barua pepe, au maneno mengine herufi kwa herufi. Kwa mfano:

- `Carlos se escribe C-a-r-l-o-s.` – Carlos huandikwa C-a-r-l-o-s.

- `Mi apellido se escribe con z.` – Jina langu la mwisho huandikwa kwa herufi z.

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

Neno hili dogo ni sehemu ya usemi wa kawaida unaotumika wakati wa kueleza jinsi kitu kinaandikwa.

---

`escribe`

### --feedback--

Fomu hii ya kitenzi inatokana na `escribir` na hutumika wakati wa kuandika neno herufi kwa herufi.

# --explanation--

`Se escribe` hutumika wakati wa kueleza jinsi neno au jina linaandikwa.

Inatokana na kitenzi `escribir` na hutumika sana kabla ya kuandika kitu herufi kwa herufi.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
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
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
