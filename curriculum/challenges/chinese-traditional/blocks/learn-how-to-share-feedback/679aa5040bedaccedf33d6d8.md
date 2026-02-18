---
id: 679aa5040bedaccedf33d6d8
title: 任務 45
challengeType: 19
dashedName: task-45
lang: en-US
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

為什麼 Brian 認為當每個人想法都一樣時並不好？

## --answers--

因為他們可能會忽略重要細節。

---

因為這會讓決策更快。

### --feedback--

Brian 並沒有說同意是有益的。

---

因為分歧總是會造成問題。

### --feedback--

Brian 實際上是在說某些分歧是有用的，而不是說它會造成問題。

---

因為沒有人會分享他們的意見。

### --feedback--

Brian 並不是在談論人們拒絕分享他們的意見。

## --video-solution--

1

# --explanation--

結構 `if + verb in the Simple Past` 後接結果語句中的 `might` 用來描述具有可能結果的假設情況。 例如：

`If you studied more, you might pass the exam.`－這表示如果你多學習，有可能會通過考試。

在這個對話窗中，`If we all agreed on everything, we might miss important details` 表達了完全同意可能帶來的負面後果。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
