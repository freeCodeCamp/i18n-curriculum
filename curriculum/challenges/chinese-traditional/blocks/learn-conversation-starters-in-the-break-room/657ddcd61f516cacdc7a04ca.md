---
id: 657ddcd61f516cacdc7a04ca
title: 任務 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria 告知 Tom 有關大眾運輸的選項，可選方案，特別提到一種在附近停靠的交通工具。這對於在城市中移動非常重要，尤其是前往無法步行抵達的地點。

「`Two blocks away`」表示你需要走過兩個街角才能到達某個地方。在城市中這是短距離步行。

`Downtown` 是城市的核心，這裡有許多商店、餐廳，通常還有高樓大廈。

# --questions--

## --text--

瑪麗亞說什麼在兩個區塊外停止？

## --answers--

計程車

### --feedback--

Maria 提到的是大眾運輸選項，而非私人服務。

---

一列火車

### --feedback--

列車通常不會在區塊停靠；它們會在車站停靠。

---

一個匯流排

---

自行車租賃

### --feedback--

租賃通常是固定服務，而不是會停止的東西。

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 37.92,
      "finishTimestamp": 42.38
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
      "finishTime": 5.46,
      "dialogue": {
        "text": "The bookstores I remember are all downtown. But there's a bus that stops two blocks away.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.96
    }
  ]
}
```
