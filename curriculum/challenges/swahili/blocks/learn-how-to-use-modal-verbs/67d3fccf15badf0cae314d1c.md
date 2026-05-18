---
id: 67d3fccf15badf0cae314d1c
title: Zoezi la 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

Kitenzi hiki kinaonyesha hitaji, maana kuna jambo linalohitajika kufanyika.

---

`do`

### --feedback--

Kitenzi hiki huambatana na `need` wakati wa kuuliza kuhusu kitendo.

# --explanation--

`Need to` hutumika wakati wa kuuliza kuhusu vitendo vinavyohitajika. Kinafuatwa na aina ya msingi ya kitenzi (`do`). Kwa mfano:

- `We need to do more testing before releasing the app.` - Ni lazima kupima programu kabla ya kuizindua.

- `We need to do some updates to fix the bugs.` - Ni lazima kusahihisha mfumo ili kutatua matatizo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
