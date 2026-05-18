---
id: 698a5b056fac9afc70ef3cad
title: Zoezi la 10
challengeType: 22
dashedName: task-10
lang: es
---

<!-- (Audio) Camila: Brasil, Colombia, Panamá -->

# --description--

Tukague baadhi ya nchi ulizojifunza hadi sasa.

| Nchi | Taifa (Kike) | Taifa (Kiume) |
| :--- | :--- | :--- |
| `Brasil` | `brasileña` | `brasileño` |
| `Colombia` | `colombiana` | `colombiano` |
| `México` | `mexicana` | `mexicano` |
| `Panamá` | `panameña` | `panameño` |
| `República Dominicana` | `dominicana` | `dominicano` |

Katika Kihispania, majina ya nchi ni majina halisi na huanza kila mara kwa herufi kubwa.

Kumbuka kuwa taifa `brasileño`/`brasileña` na `panameño`/`panameña` hutumia herufi ya kipekee `eñe` (`ñ`).

Camila anazoea baadhi ya nchi hizi. Je, unaweza kuzitambua?

# --instructions--

Sikiliza sauti na ukamilishe mfululizo hapa chini.

# --fillInTheBlank--

## --sentence--

`BLANK - Colombia - BLANK`

## --blanks--

`Brasil`

### --feedback--

Nchi hii ni kubwa zaidi Amerika Kusini na huanza kwa herufi kubwa.

---

`Panamá`

### --feedback--

Nchi hii inajulikana kwa njia yake maarufu ya maji. Kumbuka kuweka alama ya nukta kwenye herufi ya mwisho `a` na kuandika herufi ya kwanza kwa herufi kubwa.

# --explanation--

Mfululizo ni `Brasil` - `Colombia` - `Panamá`.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 20.9,
      "finishTimestamp": 25.4
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 1.96,
      "dialogue": {
        "text": "Brasil",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 2.88,
      "finishTime": 3.79,
      "dialogue": {
        "text": "Colombia",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "startTime": 4.79,
      "finishTime": 5.5,
      "dialogue": {
        "text": "Panamá",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 6
    }
  ]
}
```
