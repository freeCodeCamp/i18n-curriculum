---
id: 679d2dc229e6ceeadff4ed48
title: 任務 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

這個字用來避免重複前一句中的動詞 `update`。

---

`delay`

### --feedback--

這個字的意思是延後或使某事發生得比計劃的時間晚。

# --explanation--

詹姆斯沒有說 `If we update the software, it might delay other projects.`，而是簡化成 `If we do`。字 `do` 常用來避免重複前一句話中使用的動詞或完整片語。例如：

`She wants to join the meeting`，如果她這麼做，她將需要 `link`。－ 與其說 `if she joins the meeting`，你可以使用 `does` 來取代，這樣你就可以避免重複。

`To delay` 是指使某事發生的時間比預定的晚。 例如：

`The flight was delayed due to bad weather。`－這表示航班被延後，沒有準時起飛。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
