---
id: 6620102deeab45aeeffa84ac
title: 任务 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

描述一个人眼睛的颜色时，通常先通过颜色来识别。常见的眼睛颜色有 `black`、`brown`、`blue` 和 `green`。根据颜色的不同，它可能倾向于 `white` 或 `black`（颜色本身更强或更弱）。在这种情况下，你可以在颜色前添加 `light`（倾向于 `white`）和 `dark`（倾向于 `black`）来表达。另一个通常用来识别别人眼睛的特征是形状——当眼睛更像圆形时为 `round`，当更像线条时为 `narrow`。最后，你可以根据大小来描述它们，`large`（当眼睛较大时）或 `small`（当眼睛较小时）。Tom 还表达了一个观点，说 Lisa 的眼睛充满了活力和生气。在这种情况下，你说某人的眼睛是 `bright`。

就像你描述 `hair` 一样，用来描述一个人眼睛的形容词在英语中也遵循一定的顺序。首先表达你的看法，然后描述大小，再描述形状，最后描述颜色（可加或不加 `light` 或 `dark` 作为前缀）。

示例：`Tom has beautiful, small, narrow, light green eyes.`

现在听，并用 Tom 对 Lisa 眼睛的描述填空。

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom 先表达了一个观点。他说 Lisa 的眼睛充满了活力。

---

`brown`

### --feedback--

汤姆最终谈到了丽莎的眼睛颜色。它接近于 `black` 的一种色调，既不是 `blue` 也不是 `green`。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
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
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
