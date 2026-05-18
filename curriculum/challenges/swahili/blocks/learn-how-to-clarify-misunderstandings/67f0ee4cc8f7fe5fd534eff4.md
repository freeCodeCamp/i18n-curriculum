---
id: 67f0ee4cc8f7fe5fd534eff4
title: Zoezi la 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

Sikiliza sauti na ukamilishe sentensi ifuatayo.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

Usemi huu wa maneno mawili hutumika kuonyesha kukubaliana au kuidhinisha wazo au pendekezo. Neno la kwanza linaishia na `-s`.

---

`appreciate`

### --feedback--

Neno hili linamaanisha kushukuru kwa jambo fulani. Linaonyesha shukrani kwa msaada, sapoti, au jambo lililofanywa kwa ajili yako.

# --explanation--

`Sounds good` ina maana kwamba msemaji anakubaliana na au kuidhinisha kile kilichosemwa. Kwa mfano:

`Your idea sounds good.` – Hii ina maana msemaji anadhani wazo ni zuri na anakubaliana nalo.

`I appreciate` ni njia ya kusema asante au kuonyesha shukrani. Kwa mfano:

`I appreciate your help with the project.` – Hii ina maana unashukuru kwa msaada uliopokea.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
