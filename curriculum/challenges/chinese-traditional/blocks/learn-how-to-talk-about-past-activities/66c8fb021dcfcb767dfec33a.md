---
id: 66c8fb021dcfcb767dfec33a
title: 任務 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

以下哪個述語是正確的？

## --answers--

他們以前從未修復過類似這樣的問題。

### --feedback--

想想看 Linda 是否提到過任何類似問題的經驗。

---

他們已經在另一個專案中修正了這個完全相同的問題。

### --feedback--

考慮 Linda 是否表示他們有處理這個特定問題或類似問題的經驗。

---

他們還沒有修正這個確切的問題，但他們之前修正過類似的問題。

---

他們之前已經修正過這個問題很多次了。

### --feedback--

反思 Linda 是否在談論已經修復這個確切的問題或類似的問題。
  
## --video-solution--

3

# --explanation--

要找到正確答案，請專注於 Linda 是否在談論修復 `exact issue` 或 `similar issues`。 

Linda 清楚表示他們以前沒有解決過這個確切的問題，但她也提到他們過去曾經解決過類似的問題。 

正確答案應該顯示這種平衡——承認沒有完全匹配，但確認過去有相關問題的經驗。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
