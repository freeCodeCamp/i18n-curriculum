---
id: 68eff70d0ade1c408ecbfeb4
title: Завдання 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

Літеру `d` називають `de`.

На початку слова або після `l` чи `n` її звук сильніший, як у слові `dos` («два»). Однак між голосними вона м’якша, як у слові `idea` («ідея»).

Приклад — `doctor` («лікар»).

# --instructions--

Прослухайте аудіо і напишіть літеру у порожнє поле нижче.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

Це четверта літера алфавіту.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
