---
id: 67e6a8ecaee3ff6cec47cc3e
title: 任務 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

為什麼 Jessica 想要快速向團隊解釋這個錯誤？

## --answers--

因為她想要回到會議的主要議題。

---

因為她想提前離開會議。

### --feedback--

Jessica 沒有提到離開會議。

---

因為團隊已經知道這個錯誤。

### --feedback--

Jessica 正在解釋這個錯誤，因為它可能會影響團隊。

---

因為她不認為這個錯誤很重要。

### --feedback--

Jessica 認為這個問題很重要，但她也想尊重會議議程。

## --video-solution--

1

# --explanation--

`So we can` 用來表示目的——它的意思是你接下來提到的事情是你打算做的。它解釋了某人為什麼要做某事。 例如：

`I'll finish this now so we can start the next task.`－這表示說話者想完成一件事以便很快開始另一件事。

`The main agenda` 指的是會議或事件的主要議題或計畫。例如：

`Let's stick to the main agenda and avoid side discussions.`－這表示要專注於會議中最重要的條款。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
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
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
