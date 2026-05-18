---
id: 699cc94ffc3ee628dfae74bf
title: Zoezi la 31
challengeType: 22
dashedName: task-31
lang: es
---
<!-- (Audio) Mateo: Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r. -->

# --description--

`Es` hutokana na kitenzi `ser` na hutumika kuonyesha au kuwasilisha kitu. Kwa mfano:

- `Es mi número.` - Hii ni nambari yangu.
  
- `Es mi correo.` - Hii ni barua pepe yangu.

Wakati wa kutamka anwani ya barua pepe, baadhi ya alama husemwa kwa sauti:

`Punto` hutumika kwa alama `.` Kwa mfano:

`ana.lopez` husomwa kama `ana punto lopez`.

`Arroba` hutumika kwa alama `@`. Kwa mfano:

`ana.lopez@ejemplo.com` husomwa kama `ana punto lopez arroba ejemplo punto com`.

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`BLANK m a t e o BLANK d e l g a d o BLANK s a n j u a n BLANK p r.`

## --blanks--

`Es`

### --feedback--

Aina hii ya `ser` hutumika kuwasilisha au kuonyesha kitu.

---

`punto`

### --feedback--

Neno hili hutumika wakati wa kusema alama `.` katika anwani ya barua pepe.

---

`arroba`

### --feedback--

Neno hili hutumika wakati wa kusema alama `@`.

---

`punto`

### --feedback--

Neno hili linaonekana tena kabla ya herufi za mwisho `p r`.

# --explanation--

Sentensi kamili ni:

`Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.`

`Es` huanzisha taarifa.

`Punto` inawakilisha alama `.`

`Arroba` inawakilisha alama `@`

Maneno haya hutumika sana wakati wa kutamka anwani ya barua pepe kwa sauti.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "ES_A1_mateo_email_dialogue_with_camila.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 35.09
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
      "finishTime": 19.07,
      "dialogue": {
        "text": "Es m-a-t-e-o punto d-e-l-g-a-d-o arroba s-a-n-j-u-a-n punto p-r.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 19.57
    }
  ]
}
```
