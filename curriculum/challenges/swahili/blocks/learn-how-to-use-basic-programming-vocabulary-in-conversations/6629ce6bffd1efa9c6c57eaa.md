---
id: 6629ce6bffd1efa9c6c57eaa
title: Zoezi la 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

Usemi `how's it going?` ni njia ya kawaida ya kumuuliza mtu hali yake au kinachoendelea katika maisha yake. Mara nyingi hutumika kama salamu ya kirafiki.

Kwa mfano, unapoona rafiki wa zamani, unaweza kusema `Hey, how's it going? I haven't seen you for a while!` Hii ni njia ya kawaida ya kumuuliza kuhusu maisha yake. Ikiwa unataka kumuuliza kuhusu jambo maalum, kama kazi yake mpya, unaweza kusema `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

Kifupisho hiki hutumika sana katika salamu zisizo rasmi. Andika herufi kubwa kwa neno la kwanza.

---

`going`

### --feedback--

Neno hili linakamilisha salamu ya kawaida isiyo rasmi inayouliza kuhusu hali ya mtu kwa ujumla.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
