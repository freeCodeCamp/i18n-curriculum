---
id: 679d3cfdaca2eb81f8d81cf7
title: Zoezi la 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Maria anamuomba James afanye nini?

## --answers--

Kurekebisha tatizo mara moja.

### --feedback--

Maria haumuombi James kurekebisha tatizo mara moja.

---

Kuripoti tatizo kwa mteja.

### --feedback--

Maria hakutaja kumjulisha mteja.

---

Kuchunguza tatizo.

---

Kupuuzia tatizo kwa sasa.

### --feedback--

Maria haumuombi James kupuuza tatizo.

## --video-solution--

3

# --explanation--

`Can` hutumika sana kuomba kwa heshima, kuomba mtu afanye jambo kwa njia isiyo rasmi. Kwa mfano:

`Can you send me the report by noon?` - Hii ni njia ya heshima ya kumuomba mtu atume ripoti.

Katika mazungumzo haya, Maria anamuomba James achunguze tatizo.

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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
