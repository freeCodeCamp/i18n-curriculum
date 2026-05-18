---
id: 6903d3c4ccae5fffec5f3cbc
title: Zoezi la 4
challengeType: 19
dashedName: task-4
lang: es
---

<!-- (Audio) Mateo: Soy puertorriqueño. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Uraia wa Mateo ni upi?

## --answers--

`Chileno`

### --feedback--

Chaguo hili linahusu mtu kutoka Chile.

---

`Peruano`

### --feedback--

Neno hili linaelezea mtu kutoka Peru.

---

`Puertorriqueño`

---

`Colombiana`

### --feedback--

Hii inahusu mwanamke kutoka Colombia, na mwisho `-a` unaonyesha umbo la kike, ambalo halilingani na Mateo.

## --video-solution--

3

# --explanation--

`Soy` ("Mimi ni") hutoka kwenye kitenzi `ser` na hutumika kuonyesha utambulisho, uraia, au taaluma. Kwa mfano:

- `Soy chilena.` – Mimi ni Mchile. (kike)

- `Soy chileno.` – Mimi ni Mchile. (kiume)

- `Soy puertorriqueña` - Mimi ni Mpuertoriko. (kike)

- `Soy puertorriqueño` - Mimi ni Mpuertoriko. (kiume)

- `Soy canadiense.` – Mimi ni Mkanada. (isiyo na jinsia)

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 5.81,
      "finishTimestamp": 7.13
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Soy puertorriqueño.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 2.82
    }
  ]
}
```
