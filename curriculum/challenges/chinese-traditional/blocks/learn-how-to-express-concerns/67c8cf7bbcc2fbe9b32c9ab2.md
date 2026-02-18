---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: 任務 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

聆聽音訊並回答以下問題。  

# --questions--

## --text--

Maria 會如何處理她從 James 那裡得到的評論？  

## --answers--

她會忽略它們。  

### --feedback--

Maria 認同 James 的觀點並計劃採取行動。

---

她會告訴團隊不要再擔心通訊。

### --feedback--

Maria 想要改善通訊，而不是忽視疑慮。 

---

她將取消團隊的 check-ins。

### --feedback--

Maria 沒有說她會取消報到。

---

她將提議增加更多的檢查點以改善通訊。

## --video-solution--

4  

# --explanation--

當使用動詞 `suggest` 時，請使用以下動詞的 `-ing` 形式，而非不定詞。例如：

- `She suggested taking a break.`－這表示提出的想法是休息一下。

- `He suggested starting the meeting earlier to avoid delays。`－這表示他建議提早開始會議以避免延誤。

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
