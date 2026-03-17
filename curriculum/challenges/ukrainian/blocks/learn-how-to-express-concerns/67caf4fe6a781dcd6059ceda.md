---
id: 67caf4fe6a781dcd6059ceda
title: Завдання 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

Це означає надання допомоги або полегшення чогось.

---  

`regular`  

### --feedback--

Це означає, що щось відбувається регулярно або через певні проміжки часу.

# --explanation--

`Helpful` означає надання допомоги або полегшення чогось. Наприклад:

`It was helpful to have clear instructions before starting the task.` - Це означає, що інструкції зробили завдання легшим для виконання.

`Regular` означає, що щось відбувається регулярно або через певні проміжки часу. Наприклад:

`We have regular meetings every Monday.` - Це означає, що зустрічі відбуваються регулярно по понеділках.

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
