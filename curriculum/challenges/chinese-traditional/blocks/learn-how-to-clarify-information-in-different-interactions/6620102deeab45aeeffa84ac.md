---
id: 6620102deeab45aeeffa84ac
title: 任務 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

描述一個人眼睛的顏色時，通常會先以顏色來識別。常見的眼睛顏色有 `black`、`brown`、`blue` 和 `green`。根據顏色的不同，可能會偏向 `white` 或 `black`（顏色本身較強或較弱）。在這種情況下，你可以在顏色前加上 `light`（偏向 `white`）和 `dark`（偏向 `black`）這兩個字來表達。另一個通常用來識別他人眼睛的特徵是形狀——當眼睛較像圓形時為 `round`，較像線條時為 `narrow`。最後，你也可以用大小來指涉眼睛，`large`（當眼睛較大時）或 `small`（當眼睛較小時）。Tom 也表達了他的看法，說 Lisa 的眼睛充滿了活力與生命力。在這種情況下，你會說某人的眼睛是 `bright`。

就像你對 `hair` 所做的那樣，用來描述一個人眼睛的形容詞在英文中也遵循一定的順序。首先，你表達這個意見，然後描述大小，再來是形狀，最後是顏色（前面可能會有或沒有 `light` 或 `dark`）。

範例：`Tom has beautiful, small, narrow, light green eyes.`

現在聆聽並填寫空格，內容是 Tom 對 Lisa 眼睛的描述。

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom 先表達意見。他說 Lisa 的眼睛充滿活力。

---

`brown`

### --feedback--

湯姆終於談到麗莎的眼睛顏色。它接近 `black` 的色調，既不是 `blue` 也不是 `green`。

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
