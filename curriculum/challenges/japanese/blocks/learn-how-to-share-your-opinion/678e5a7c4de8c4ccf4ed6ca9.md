---
id: 678e5a7c4de8c4ccf4ed6ca9
title: タスク 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

この単語は、同じ意見を持つことや相互理解に達することを意味します。

---

`disagree`

### --feedback--

この単語は、異なる意見を持つことや合意に達していないことを意味します。

# --explanation--

`Agree` は、誰かと意見が一致することや同じ意見を持つことを意味します。例えば：

`We both agree that improving security is important.` - これは、他の人とセキュリティに関して同じ意見を共有していることを示します。

`Disagree` は、異なる意見を持つことや合意に達していないことを意味します。例えば：

`Jake and Maria disagree on which software to use.` - これは、ジェイク と マリア がソフトウェアの選択について異なる意見を持っていることを示しています。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 56.0,
      "finishTimestamp": 58.28
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.28,
      "dialogue": {
        "text": "Okay, let's agree to disagree.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 3.78
    }
  ]
}
```
