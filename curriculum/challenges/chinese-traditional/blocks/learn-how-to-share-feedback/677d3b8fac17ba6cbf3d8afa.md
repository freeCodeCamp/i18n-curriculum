---
id: 677d3b8fac17ba6cbf3d8afa
title: 任務 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

聆聽音訊並完成以下句子。

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

這是動詞 `say` 的 `-ing` 形式，用於介系詞 `by` 之後以顯示開始的行為方法。

---

`QA`

### --feedback--

這代表 `Quality Assurance`，指的是確保產品符合所需標準的處理程序。

# --explanation--

當動詞跟在介系詞後面時，必須採用 `-ing` 形式（動名詞）。在這句話中，`saying` 跟在介系詞 `by` 後面，表示 Bob 用來開始他述語的方法。 例如：

`She improved her skills by practicing regularly.` - 這裡，`practicing` 跟隨介系詞 `by`，說明她如何提升她的技能。

Bob 讚美 Jessica 在 `QA` 的工作。`QA` 代表 `Quality Assurance`。它是指確保產品或服務符合特定品質標準並正確運作的處理程序。另一個範例：

`The QA team identified several bugs during testing.`－這表示負責確保軟體品質良好的人員在軟體發佈前成功偵測到軟體中的錯誤。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
