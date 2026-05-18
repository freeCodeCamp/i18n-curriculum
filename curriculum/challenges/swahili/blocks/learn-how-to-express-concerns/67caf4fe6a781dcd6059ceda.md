---
id: 67caf4fe6a781dcd6059ceda
title: Zoezi la 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

Hii inamaanisha kutoa msaada au kufanya kitu kuwa rahisi zaidi.  

---  

`regular`  

### --feedback--

Hii inamaanisha kutokea mara kwa mara au kwa vipindi vilivyowekwa.  

# --explanation--

`Helpful` inamaanisha kutoa msaada au kufanya kitu kuwa rahisi zaidi. Kwa mfano:

`It was helpful to have clear instructions before starting the task.` - Hii inamaanisha maelekezo yalifanya zoezi kuwa rahisi kukamilika.

`Regular` inamaanisha kutokea mara kwa mara au kwa vipindi vilivyowekwa. Kwa mfano:

`We have regular meetings every Monday.` - Hii inamaanisha mikutano hutokea mara kwa mara siku za Jumatatu.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 40.42,
      "finishTimestamp": 42.58
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
      "finishTime": 3.16,
      "dialogue": {
        "text": "It'd be helpful if we had more regular check-ins.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.66
    }
  ]
}
```
