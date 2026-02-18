---
id: 657ddcd61f516cacdc7a04ca
title: 任务 128
challengeType: 19
dashedName: task-128
lang: en-US
---

<!-- (audio) Maria: The bookstores I remember are all downtown. But there's a bus that stops two blocks away. -->

# --description--

Maria 向 Tom 介绍了公共交通选项，特别提到了一个在附近停靠的交通工具。这对于在城市中出行非常重要，尤其是去那些步行无法到达的地方。

`Two blocks away` 意味着你需要经过两个街角才能到达某个地方。这在城市中是一个很短的步行距离。

`Downtown` 是城市的中心，有许多商店、餐馆，通常还有高层建筑。

# --questions--

## --text--

Maria 说什么会在两个块外停止？

## --answers--

一辆出租车

### --feedback--

Maria 提到的是公共交通选项，而不是私人服务。

---

一列火车

### --feedback--

列车通常不会在块上停靠；它们在车站停靠。

---

一条总线

---

自行车租赁

### --feedback--

租赁通常是固定服务，而不是会停止的东西。

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
