---
id: 67b5b3dfdec8df1a5f326bc0
title: 任務 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

這表示某物不強烈或明顯。它是某種溫和或柔軟的東西，你可能不會立刻注意到。

---

`palette`

### --feedback--

這是指設計或藝術作品中使用的顏色範圍。在此情況下，`color palette` 指的是為應用程式或專案設計所選擇的顏色組合。

# --explanation--

`Subtle` 指的是細微或不明顯的事物。例如：

`The artist used subtle shades of blue in the painting.`－這表示藝術家使用了不太強烈或不引人注意的淺色或柔和藍色調。

`Palette` 指藝術家或設計師使用的顏色或材質範圍。 例如：

`The designer chose a warm palette for the website, using reds, oranges, and yellows。`－這表示設計師為網站設計選擇了一組暖色調的顏色，例如紅色、橘色和黃色。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
