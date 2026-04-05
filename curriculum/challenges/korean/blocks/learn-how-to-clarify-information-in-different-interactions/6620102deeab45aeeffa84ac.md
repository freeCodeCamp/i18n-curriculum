---
id: 6620102deeab45aeeffa84ac
title: 작업 5
challengeType: 22
dashedName: task-5
lang: en-US
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

사람의 눈 색깔을 묘사할 때는 보통 먼저 색깔로 구분합니다. 일반적인 눈 색깔은 `black`, `brown`, `blue`, 그리고 `green`입니다. 색깔에 따라 `white`하거나 `black`하는 경향이 있을 수 있습니다(색 자체가 더 강하거나 약함). 이 경우, 색깔 앞에 `light` (`white`하는 경향)와 `dark` (`black`하는 경향)라는 단어를 붙여 표현할 수 있습니다. 또 다른 특징으로는 눈 모양이 있는데, 원에 가까울 때는 `round`, 선에 가까울 때는 `narrow`라고 합니다. 마지막으로 크기로 표현할 수 있는데, 클 때는 `large`, 그렇지 않을 때는 `small`입니다. Tom은 또한 의견을 표현하며 Lisa의 눈이 에너지와 활기로 가득하다고 말합니다. 이런 경우, 눈을 `bright`라고 합니다.

`hair`처럼, 사람의 눈을 나타내는 형용사도 영어에서는 순서가 있습니다. 먼저 의견을 표현하고, 그다음 크기, 모양, 마지막으로 색깔(때로는 `light` 또는 `dark`가 앞에 붙음)을 말합니다.

예시: `Tom has beautiful, small, narrow, light green eyes.`

이제 Tom이 Lisa의 눈을 묘사한 내용을 듣고 빈칸을 채우세요.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom은 먼저 의견을 표현합니다. Lisa의 눈이 에너지로 가득하다고 말합니다.

---

`brown`

### --feedback--

Tom은 마지막으로 Lisa의 눈 색깔에 대해 말합니다. `black`에 가까운 색조이며, `blue`도 `green`도 아닙니다.

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
