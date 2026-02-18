---
id: 67b5b3dfdec8df1a5f326bc0
title: 任务 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

这意味着某种不强烈或不明显的东西。它是某种温和或柔软的东西，你可能不会立刻注意到。

---

`palette`

### --feedback--

这指的是设计或艺术作品中使用的颜色范围。在这种情况下，`color palette` 指的是为应用或项目设计选择的颜色集合。

# --explanation--

`Subtle` 指的是某些微妙或不明显的事物。例如：

`The artist used subtle shades of blue in the painting.`——这意味着艺术家使用了浅色或柔和的蓝色调，这些颜色不太浓烈或引人注意。

`Palette` 指艺术家或设计师使用的颜色或材料的范围。例如：

`The designer chose a warm palette for the website, using reds, oranges, and yellows.`——这意味着设计师为网站设计选择了一组暖色调，例如红色、橙色和黄色。

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
