---
id: 6579cf3ada08bdcfd5eae689
title: 任務 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Sophie: Sure, Bob. I could use some help with a coding problem. -->

# --description--

在這個對話窗中，Sophie 正在向 Bob 提出請求。了解她請求的性質對於有效的團隊通訊與協作至關重要，尤其是在技術環境中，大家共同解決問題是常見的情況。

# --questions--

## --text--

Sophie 在與 Bob 的對話中要求什麼？

## --answers--

她正在尋求程式設計問題的幫助

---

她想讓 Bob 為她解決這個問題

### --feedback--

Sophie 正在尋求幫助，不一定是要 Bob 完全自己解決問題。

---

她主動提出幫助 Bob 解決問題

### --feedback--

Sophie 是請求協助的人，而不是提供協助的人。

---

她正在討論未來的專案

### --feedback--

Sophie 的請求是關於她目前面臨的程式碼問題，而不是未來的專案。

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.9,
      "finishTimestamp": 7.58
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.68,
      "dialogue": {
        "text": "Sure, Bob. I could use some help with the coding problem.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.18
    }
  ]
}
```
