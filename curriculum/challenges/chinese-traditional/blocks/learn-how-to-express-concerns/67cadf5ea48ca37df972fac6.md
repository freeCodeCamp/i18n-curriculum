---
id: 67cadf5ea48ca37df972fac6
title: 任務 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

聆聽音訊並回答以下問題。  

# --questions--

## --text--

Maria 提到團隊最重要的請求是什麼？  

## --answers--

他們需要更多幫助。  

---

他們想要更長的截止期限。  

### --feedback--

Maria 沒有提到延長截止日期。

---

他們想要減少任務數量。

### --feedback--

Maria 沒有提到減少任務數量。  

---

他們要求更多會議。  

### --feedback--

Maria 沒有提到額外的會議。

## --video-solution--

1  

# --explanation--

`First` 用於你想依重要性或時間順序編號動作時。在這個例子中，Maria 正在列出團隊所需的項目，從看似最重要的請求（獲得更多支援）開始。另一個例子：

`First, we should analyze the problem. Then, we can discuss solutions.`－這表示分析問題必須在其他任何事情之前進行。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
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
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
