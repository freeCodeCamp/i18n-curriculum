---
id: 67cafac07dc081eefb4d7adb
title: 任務 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

聆聽音訊並回答以下問題。  

# --questions--

## --text--

每週會議的目標是什麼？

## --answers--

為了減少團隊擁有的任務數量。

### --feedback--

Bob 沒有提到減少任務。  

---

為避免對專案進行任何更改。

### --feedback--

Bob 並不建議他們避免進行更改。

---

增加沒有明確目標的會議數量。

### --feedback--

Bob 有一個特定的目標，並且他提到了它。

---

為了確保每個人都能隨時掌握專案的最新狀態。

## --video-solution--

4  

# --explanation--

「`To keep someone in the loop`」意指讓他們隨時掌握重要的更新和決策。例如：

`Please keep me in the loop about any changes to the schedule。`－這表示說話者希望如果排程有任何變更時能收到更新。

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
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
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
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
