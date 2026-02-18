---
id: 68249d79d4ddca45eff7fafd
title: 任務 144
challengeType: 19
dashedName: task-144
lang: en-US
---

<!-- (Audio) Jessica: Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow. This feedback should help us know what to do next. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Jessica 計劃如何處理這些資訊？

## --answers--

暫時忽略它並等待更多回授。

### --feedback--

Jessica 說她會整理資訊並分享，不會忽略它。

---

將它整理成報告並與他人討論。

---

請使用者在進行更改前再次測試。

### --feedback--

她沒有提到任何關於重新測試或使用者回授的事項。

---

直接將它傳送到客戶端，無需審核。

### --feedback--

Jessica 計劃先與她的團隊討論，而不是直接發送給客戶。

## --video-solution--

2

# --explanation--

Jessica 說她會 `put all this information into a report` 並且 `talk about it with the team tomorrow`。這表示她計劃整理這些細節並且與她的團隊討論。

她也說回授 `should help`，意思是它會指引他們的下一步。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-3.mp3",
      "startTime": 1,
      "startTimestamp": 86.16,
      "finishTimestamp": 93.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 6.0,
      "dialogue": {
        "text": "Fantastic, James. I'll put all this information into a report and talk about it with the team tomorrow.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 6.26,
      "finishTime": 7.86,
      "dialogue": {
        "text": "This feedback should help us know what to do next.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 8.86
    }
  ]
}
```
