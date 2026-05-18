---
id: 662347b1bb7b3cdfcccffa57
title: Aufgabe 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` ist die Vergangenheitsform des Verbs `to hear`, das bedeutet, etwas durch das Hören wahrzunehmen oder über etwas informiert zu werden. Zum Beispiel bedeutet `I heard the news yesterday`, dass Sie die Nachricht am Tag zuvor erfahren haben.

Ein `authentication module` im Softwarekontext ist ein Teil eines Systems, der für die Überprüfung der Identität von Benutzenden zuständig ist. Es wird oft in Login-Systemen verwendet. Zum Beispiel bedeutet `The authentication module checks the username and password`, dass es die Zugangsdaten des Benutzers überprüft.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

Es ist die Vergangenheitsform von `to hear` und zeigt an, dass Brian über Sophies Aufgabe informiert wurde.

---

`fixing`

### --feedback--

Es bezieht sich auf das Reparieren oder Beheben des Problems (Bug) in der Software.

---

`authentication`

### --feedback--

Es bezieht sich auf den Prozess der Überprüfung der Identität eines Benutzers im Softwaremodul.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
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
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
