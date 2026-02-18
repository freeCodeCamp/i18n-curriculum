---
id: 657fb5afeeba2de5d01dda0e
title: 任務 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Tom 如何回應 Sarah 對科幻大會的邀請？

## --answers--

立即接受。

### --feedback--

Tom 不接受邀請。他提到他對科幻沒有興趣。

---

婉拒。

---

表現出不感興趣。

### --feedback--

當 Tom 表達缺乏興趣時，他的回應更多是禮貌地拒絕邀請，而不僅僅是表現出不感興趣。

---

忽略邀請。

### --feedback--

Tom 承認邀請並回應，所以他沒有忽略它。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
