---
id: 67f0ee4cc8f7fe5fd534eff4
title: 任務 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

這個兩字詞組用來表示對一個想法或建議的同意或贊成。第一個字以 `-s` 結尾。

---

`appreciate`

### --feedback--

這個字表示對某事心懷感激。它表達對幫助、支援或為你所做之事的感謝。

# --explanation--

`Sounds good` 意味著說話者同意或認可所說的內容。 例如：

`Your idea sounds good.` – 這表示講者認為這個想法很好並且同意它。

`I appreciate` 是一種表達感謝或表示感激的方式。例如：

我感謝你對專案的幫助。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
