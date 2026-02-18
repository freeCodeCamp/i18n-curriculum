---
id: 67caec5ecebab7be7456df7f
title: 任務 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

聆聽音訊並回答以下問題。  

# --questions--

## --text--

團隊還引發了什麼其他問題？

## --answers--

他們收到更新的時間太早。

### --feedback--

Maria 提到完全相反的情況。

---

他們不想那麼頻繁地通訊。

### --feedback--

Maria 沒有提到團隊的溝通意願。  

---

他們經常無法及時聽到變更訊息。

---

他們認為太多人參與了通訊。

### --feedback--

Maria 沒有提到涉及的人數。

## --video-solution--

3  

# --explanation--

當你說某事 `isn't great`，你是在軟化負面訊息（例如，而不是說 `it is bad`）。這使批評聽起來更有禮貌或間接。請看以下句子：

- `The design is bad.`－這是一個強烈的負面述語，通常聽起來不禮貌。

- `The design isn't great. Maybe we can improve it.`－這樣說聽起來不那麼嚴厲，也更具建設性。

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
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
