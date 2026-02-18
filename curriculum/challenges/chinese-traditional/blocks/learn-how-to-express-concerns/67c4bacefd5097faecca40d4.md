---
id: 67c4bacefd5097faecca40d4
title: 任務 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Bob 想知道什麼？  

## --answers--

如果他們應該取消專案。  

### --feedback--

Bob 並不是在詢問取消專案的事。  

---

如果工作較少小時會更好。  

### --feedback--

Bob 建議工作更多小時，而不是更少。  

---

如果團隊已經解決該問題。  

### --feedback--

Bob 正在詢問他的建議是否有幫助，而不是問題是否已經解決。  

---

如果加班會改善情況。  

## --video-solution--

4  

# --explanation--

在使用帶有助動詞或情態動詞（例如 `wouldn't`、`isn't`、`doesn't`）的否定疑問句時，這類疑問句需要直接的 `yes`/`no` 回答，表示說話者預期答案為肯定——在此情況下，Bob 假設加班會有幫助。另一個例子：

`Doesn't this plan seem like a good idea?`－說話者期望聽者同意這個計畫是好的。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
