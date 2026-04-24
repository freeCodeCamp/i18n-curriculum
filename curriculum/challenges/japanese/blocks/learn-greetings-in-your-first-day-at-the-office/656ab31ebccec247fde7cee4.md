---
id: 656ab31ebccec247fde7cee4
title: タスク 64
challengeType: 22
dashedName: task-64
lang: en-US
---

<!--
AUDIO REFERENCE:
Tom: Awesome. My computer and drawing tablet are great, too. 
-->

# --description--

`Awesome` は、人が本当に何かを気に入ったときに使う言葉です。`Very good` と言うようなものです。これは、承認や感嘆を示すくだけた表現です。

# --fillInTheBlank--

## --sentence--

`BLANK. My computer and drawing tablet are great, too.`

## --blanks--

`Awesome`

### --feedback--

この言葉は `very good` または `I really like it` という意味です。最初の文字は大文字です。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 32.3,
      "finishTimestamp": 36
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.25,
      "dialogue": {
        "text": "Awesome. My computer and drawing tablet are great, too.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.75
    }
  ]
}
```
