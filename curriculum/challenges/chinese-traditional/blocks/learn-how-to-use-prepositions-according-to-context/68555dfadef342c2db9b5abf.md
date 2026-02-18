---
id: 68555dfadef342c2db9b5abf
title: 任務 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

這個兩字詞組表示介紹或導致某事出現或成為問題。第一個字是 `bring` 的過去式形式。

---

`unexpected`

### --feedback--

這個字表示發生了未計劃或未預測的事情。它以 `-ed` 結尾。

# --explanation--

`Brought up` 意味著引起某事物出現，特別是問題或議題。在這裡，`brought` 是 `bring` 的過去式。例如：

`The new feature brought up several bugs.`－這表示該特性導致這些錯誤被發現。

`Unexpected` 描述未經警告或計劃而發生的事情。例如：

`We had an unexpected delay due to server issues。`－這表示延遲是未預期的。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
