---
id: 68443eddeab5bb2d7d6e44bf
title: 任務 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

這個兩字詞組表示安排或準備某物以供使用。

---

`break room`

### --feedback--

這個兩字詞語取用一個員工可以從工作中放鬆的空間。

# --explanation--

`Set up` 是指為使用準備或安排某物。例如：

`We need to set up the new computers before the meeting。`－這表示要將它們準備好。

`Break room` 是辦公室中供人休息、用餐或放鬆的地方。 例如：

`Let's meet in the break room after lunch.`－這是指用來休息的空間。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
