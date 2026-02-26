---
id: 695fea6173bbffcaa3ffc36d
title: 任務 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

在西班牙語中，有兩種常見的方式詢問某人的名字。

兩者都用於日常西班牙語，且意義相同。它們只是結構不同。

# --instructions--

聆聽音訊並回答以下問題。 

# --questions--

## --text--

以下哪個問題 **與你在 `audio` 中聽到的內容相似**？

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

這個問題是問某人住在哪裡。

---

`¿Cuál es tu apellido?`

### --feedback--

這是詢問某人的姓氏。

---

`¿Tienes apodo?`

### --feedback--

這是在詢問某人是否有暱稱。

## --video-solution--

1

# --explanation--

音訊說 `¿Cómo te llamas?`。這是西班牙語中詢問某人名字最常見的方式之一。另一個具有相同意思的非常常見問題是：

`¿Cuál es tu nombre?`

這兩個問題在日常西班牙語中都用來詢問一個人的名字。它們只是結構不同：

- `¿Cómo te llamas?` 使用動詞 `llamarse`（被稱為）
- `¿Cuál es tu nombre?` 直接以名詞詢問名字

在此任務中，正確答案是要求某人姓名的選項。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
