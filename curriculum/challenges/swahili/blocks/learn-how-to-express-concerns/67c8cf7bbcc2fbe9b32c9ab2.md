---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: Zoezi la 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.  

# --questions--

## --text--

Maria atafanya nini na maoni aliyopokea kutoka kwa James?  

## --answers--

Atayapuuza.  

### --feedback--

Maria anakubali hoja ya James na anapanga kuchukua hatua.

---

Atawaambia timu kuacha kuwa na wasiwasi kuhusu mawasiliano.

### --feedback--

Maria anataka kuboresha mawasiliano, si kupuuza wasiwasi. 

---

Atafuta mikutano ya timu.

### --feedback--

Maria hasemi atafuta mikutano hiyo.

---

Atapendekeza kuwa na mikutano zaidi ili kuboresha mawasiliano.

## --video-solution--

4  

# --explanation--

Unapotumia kitenzi `suggest`, tumia kitenzi kinachofuata katika fomu ya `-ing` badala ya infinitive. Kwa mfano:

- `She suggested taking a break.` - Hii ina maana wazo lililopendekezwa ni kupumzika.

- `He suggested starting the meeting earlier to avoid delays.` - Hii ina maana alipendekeza kuanza mkutano mapema.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 57.14,
      "finishTimestamp": 61.36
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
      "finishTime": 2.9,
      "dialogue": {
        "text": "That's a good point. I'll suggest having more",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3,
      "finishTime": 5.22,
      "dialogue": {
        "text": "regular check-ins with the team to improve communication.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.72
    }
  ]
}
```
