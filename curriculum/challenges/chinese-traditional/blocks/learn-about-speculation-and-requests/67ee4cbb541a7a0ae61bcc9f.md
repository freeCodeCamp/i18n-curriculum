---
id: 67ee4cbb541a7a0ae61bcc9f
title: 任務 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

這個小錯誤嚴重嗎？

## --answers--

不需要，他們也不需要對此採取任何行動。

### --feedback--

Sophie 沒說這是個重大問題，但他們應該修正它。

---

是的，它會導致整個系統崩潰。

### --feedback--

Sophie 沒說這是重大問題，只是他們應該修正的事情。

---

是的，Sophie 對此非常擔心。

### --feedback--

Sophie 並不是很擔心，但她仍然認為他們應該修復它。

---

不過仍然應該修正。

## --video-solution--

4

# --explanation--

`It's not a big deal` 意味著問題不嚴重。 例如：

- 使用者 1：`I can't join the meeting today.`

- 第二人：`It's not a big deal. I'll take notes for you.`－錯過會議沒關係，這個人可以幫忙。

Sophie 也說過 `we should fix it before it causes problems`，意思是現在修復比較好，勝過等到問題變嚴重。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
