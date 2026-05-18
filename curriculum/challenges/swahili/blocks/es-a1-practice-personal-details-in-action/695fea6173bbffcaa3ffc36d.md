---
id: 695fea6173bbffcaa3ffc36d
title: Zoezi la 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

Kuna njia mbili maarufu za kuuliza jina la mtu kwa Kihispania.

Zote mbili hutumika katika Kihispania cha kila siku na zina maana sawa. Tofauti yao ni muundo tu.

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Ni swali gani kati ya haya lifuatayo **linalofanana** na unalolisikia kwenye sauti?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

Swali hili linauliza mtu anaishi wapi.

---

`¿Cuál es tu apellido?`

### --feedback--

Hili linauliza jina la ukoo la mtu.

---

`¿Tienes apodo?`

### --feedback--

Hili linauliza kama mtu ana jina la utani.

## --video-solution--

1

# --explanation--

Esteban anasema `¿Cómo te llamas?`. Hii ni mojawapo ya njia maarufu zaidi za kuuliza jina la mtu kwa Kihispania. Swali jingine maarufu lenye maana sawa ni:

`¿Cuál es tu nombre?`

Maswali yote mawili hutumika katika Kihispania cha kila siku kuuliza jina la mtu. Tofauti yao ni muundo tu:

- `¿Cómo te llamas?` hutumia kitenzi `llamarse` (kuitwa).
- `¿Cuál es tu nombre?` linauliza moja kwa moja jina kama nomino.

Katika zoezi hili, jibu sahihi ni chaguo linalouliza jina la mtu.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
