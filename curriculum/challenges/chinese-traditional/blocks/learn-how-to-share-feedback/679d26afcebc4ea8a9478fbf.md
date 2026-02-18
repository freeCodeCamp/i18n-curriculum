---
id: 679d26afcebc4ea8a9478fbf
title: 任務 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

James 確定他們需要更新軟體嗎？

## --answers--

不完全是，因為他是在詢問 Maria 的意見。

---

是的，他已經決定要更新它。

### --feedback--

James 正在問 Maria 這件事，所以他可能還沒決定。

---

是的，他已經開始更新軟體。

### --feedback--

James 正在詢問他們是否應該更新軟體。

---

相反地，他確定他們不應該更新軟體。

### --feedback--

James 並沒有完全拒絕這個想法；他實際上是在詢問 Maria 對這個主題的意見。

## --video-solution--

1

# --explanation--

`To update` 是指透過釋出新版本來修改或改進軟體。更新可以包含錯誤修正、新的特性或效率改善。<dfn>例如</dfn>：

`The company released an update to fix security vulnerabilities in the app.`－這表示已推出新版本以解決安全性問題。

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
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
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
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
