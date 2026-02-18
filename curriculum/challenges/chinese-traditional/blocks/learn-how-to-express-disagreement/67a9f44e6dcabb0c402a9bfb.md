---
id: 67a9f44e6dcabb0c402a9bfb
title: 任務 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Bob 想知道什麼？

## --answers--

如果員工已經購買辦公家具。

### --feedback--

Bob 並未要求確認購買。

---

辦公家具的費用是多少。

### --feedback--

Bob 不會詢問價格。

---

如果公司將增加津貼。

### --feedback--

Bob 並未討論津貼的變更。

---

如果 Anna 認為將津貼用於辦公家具是個好主意。

## --video-solution--

4

# --explanation--

Bob 問，`Do you think that's a good idea?` 這是一種詢問某人對建議或計畫意見的方式。以下是其他詢問意見的方法：

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

在這個對話窗中，Bob 正在取用使用遠端工作補助購買辦公家具的員工。與其陳述自己的意見，他是在詢問 Anna 的看法。

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
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
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
