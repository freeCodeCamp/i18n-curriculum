---
id: 66bbba46fff0ef451b701bcd
title: Zoezi la 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Je, Sarah yuko tayari kuzungumza na Tom?

## --answers--

Hapana, yuko na shughuli na hataki kujua kuhusu matatizo yake.

### --feedback--

Sarah anasema hana shughuli.

---

Ndiyo, yuko tayari na anataka kujua tatizo ni nini.

---

Hapana, hawezi kuzungumza sasa hivi, ana matatizo yake mwenyewe.

### --feedback--

Sarah anataja kwamba hana shughuli.

---

Ndiyo, lakini kwa muda mfupi tu kwa sababu ana matatizo yake mwenyewe.

### --feedback--

Sarah haweka kikomo cha muda; anasema tu kwamba hana shughuli.

## --video-solution--

2

# --explanation--

Badala ya kusema moja kwa moja kwamba yuko huru, Sarah anatumia aina hasi `I'm not busy` kuonyesha kwamba ana wakati wa kusaidia.

Hii ni njia ya heshima na isiyo ya moja kwa moja ya kutoa upatikanaji kwa Kiingereza, inayotumika sana kufanya mazungumzo kuwa na adabu zaidi.

Sentensi yake inayofuata, `What's the problem?`, inathibitisha kwamba yuko tayari kusaidia kwa kumkaribisha Tom kuelezea tatizo.

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
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
