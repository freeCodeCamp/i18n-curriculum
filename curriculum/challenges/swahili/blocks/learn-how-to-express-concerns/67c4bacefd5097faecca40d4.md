---
id: 67c4bacefd5097faecca40d4
title: Zoezi la 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

Sikiliza sauti na jibu swali lililopo hapa chini.

# --questions--

## --text--

Bob anataka kujua nini?  

## --answers--

Je, wanapaswa kufuta mradi?  

### --feedback--

Bob haulizi kuhusu kufuta mradi.  

---

Je, kufanya kazi masaa machache kutakuwa bora?  

### --feedback--

Bob anapendekeza kufanya kazi masaa zaidi, si machache.  

---

Je, timu tayari imetatua tatizo?  

### --feedback--

Bob anauliza kama pendekezo lake litausaidia, si kama tatizo tayari limetatuliwa.  

---

Je, kufanya kazi masaa ya ziada kutaboresha hali?  

## --video-solution--

4  

# --explanation--

Kutumia maneno hasi katika maswali yenye vitenzi vya msaada au modal (kama `wouldn't`, `isn't`, `doesn't`), ambavyo vinahitaji majibu ya moja kwa moja ya `yes`/`no`, inaonyesha kwamba msemaji anatarajia jibu liwe chanya — Bob anadhani, katika kesi hii, kwamba kufanya kazi masaa ya ziada kutasaidia. Mfano mwingine:

`Doesn't this plan seem like a good idea?` - Msemaji anatarajia msikilizaji anakubaliana kwamba mpango ni mzuri.

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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
