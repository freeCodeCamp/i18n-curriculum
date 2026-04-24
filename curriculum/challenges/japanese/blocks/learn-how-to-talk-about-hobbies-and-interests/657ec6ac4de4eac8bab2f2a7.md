---
id: 657ec6ac4de4eac8bab2f2a7
title: タスク 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

`date` という言葉はさまざまな文脈で使われます。多くの場合、2人のロマンチックな出会いを指しますが、友人や同僚同士の約束や予定されたイベントを意味することもあります。例えば：

`Let's set a date for our next meeting.` - ここでは、`date` はロマンチックな意味ではなく、会う日の選択を指しています。

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

この言葉は計画された活動の種類を示しており、自転車に関わる外出であることを表しています。

---

`date`

### --feedback--

この言葉は予定された会合やイベントを指しています。

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
