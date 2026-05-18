---
id: 67dbf936fe4d33ccbccae40d
title: Zoezi la 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi iliyo hapa chini.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

Hii hutumika kuomba msamaha kwa jambo lililotokea. Usisahau kuandika herufi kubwa mwanzoni.

# --explanation--

`To be sorry for something` hutumika unapokuwa unamuomba msamaha mtu kwa kitendo kilichoweza kusababisha urahisi au madhara. Kwa mfano:

`I'm sorry for being late to the meeting.` - Hii ina maana msemaji anasikitika kuchelewa na anaomba msamaha. Angalia kwamba `being` iko katika fomu ya `-ing` kwa sababu iko mara moja baada ya `for` (kitenzi cha awali).

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
