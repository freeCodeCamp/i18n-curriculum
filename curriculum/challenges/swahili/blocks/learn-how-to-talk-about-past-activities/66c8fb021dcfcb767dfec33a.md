---
id: 66c8fb021dcfcb767dfec33a
title: Zoezi la 16
challengeType: 19
dashedName: task-16
lang: en-US
---
<!-- (Audio) Linda: No, we haven't. But we've solved similar issues on other projects. -->

# --instructions--

Sikiliza sauti na ujibu swali lililopo hapa chini.

# --questions--

## --text--

Ni taarifa gani ifuatayo ni kweli?

## --answers--

Hawajawahi kutatua matatizo kama haya hapo awali.

### --feedback--

Fikiria kama Linda anataja uzoefu wowote na matatizo yanayofanana.

---

Wamekwisha kutatua tatizo hili hasa kwenye mradi mwingine.

### --feedback--

Fikiria kama Linda anasema kuwa na uzoefu na tatizo hili hasa au tatizo linalofanana.

---

Hawajatatua tatizo hili hasa, lakini wamewahi kutatua matatizo yanayofanana hapo awali.

---

Wamewahi kutatua tatizo hili mara nyingi hapo awali.

### --feedback--

Fikiria kama Linda anazungumzia kutatua tatizo hili hasa au tatizo linalofanana.
  
## --video-solution--

3

# --explanation--

Ili kupata jibu sahihi, makini kama Linda anazungumzia kutatua `exact issue` au `similar issues`. 

Linda anafafanua wazi kuwa hawajatatua tatizo hili hasa hapo awali, lakini pia anataja kuwa wamewahi kutatua matatizo yanayofanana zamani. 

Jibu sahihi linapaswa kuonyesha usawa huu—kukubali hakuna tatizo hasa lililotatuliwa lakini kuthibitisha uzoefu wa zamani na matatizo yanayohusiana.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.02,
      "finishTimestamp": 20.16
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 1.86,
      "dialogue": {
        "text": "No, we haven't,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 1.9,
      "finishTime": 4.14,
      "dialogue": {
        "text": "but we've solved similar issues on other projects.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 4.64
    }
  ]
}
```
