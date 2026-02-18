---
id: 67ee6d7bcacdc02ff7d9beb2
title: 任務 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

這個字用來表示某物的存在或某事正在發生。它是 `there is` 的縮寫。

---

`problem`

### --feedback--

這個字取用一個需要被解決或修正的問題或困難。

---

`with`

### --feedback--

這個介詞顯示兩個事物之間的關係或連接。

---

`event handling`

### --feedback--

這個兩字詞組指的是軟體或網站對使用者所執行的動作（例如點擊或按鍵）所做出的回應方式。第二個字以 `-ing` 結尾。

# --explanation--

`There's a problem with` 用來描述某事物運作不正常。它表示與特定事物有問題或困難。 例如：

`There's a problem with the network.`－這表示網路運作不正常。

`Event handling` 是指程式或網站如何管理使用者的動作，例如點擊、鍵盤按鍵或滑鼠移動。例如：

`There's an issue with event handling。`－這表示軟體未能正確回應使用者操作。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
