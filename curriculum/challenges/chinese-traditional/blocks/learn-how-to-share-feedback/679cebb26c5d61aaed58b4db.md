---
id: 679cebb26c5d61aaed58b4db
title: 任務 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

James 對最新更新的問題知道什麼？

## --answers--

他完全知道問題出在哪裡。

### --feedback--

James 清楚地說他什麼都沒聽到。

---

他一點都不知道這件事。

---

他已經和客戶談過了。

### --feedback--

James 沒有提到與客戶端交談。

---

他收到了一封關於該問題的電子郵件。

### --feedback--

James 表示他什麼都沒聽到。

## --video-solution--

2

# --explanation--

簡短回答中，助動詞會重複問題中的助動詞以確認或否認某事。在這個例子中，Maria 問 `Did you hear anything?`，而 James 回答 `No, I didn't.`，而不是只說 `No.`。以下是其他一些例子： 

- `Are you coming to the meeting?` → `Yes, I am.`

- `Have they finished the report?` → `No, they haven't.`

- `Will she be here on time?` → `Yes, she will.`

簡短的回答讓回應聽起來自然且完整，同時避免重複整句話。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      },
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
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
