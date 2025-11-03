---
id: 67c8cf7bbcc2fbe9b32c9ab2
title: Tarefa 92
challengeType: 19
dashedName: task-92
lang: en-US
---

<!-- (Audio) Maria: That's a good point. I'll suggest having more regular check-ins with the team to improve communication. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.  

# --questions--

## --text--

O que Maria fará com os comentários que ela recebeu de James?  

## --answers--

Ela os ignorará.  

### --feedback--

Maria reconhece o ponto de James e planeja agir.

---

Ela vai dizer à equipe para parar de se preocupar com a comunicação.

### --feedback--

Maria quer melhorar a comunicação e não descartar preocupações. 

---

Ela vai cancelar os check-ins da equipe.

### --feedback--

Maria não diz que vai cancelar os check-ins.

---

Ela proporá ter mais check-ins para melhorar a comunicação.

## --video-solution--

4  

# --explanation--

Ao usar o verbo `suggest`, use o verbo seguinte na forma `-ing` em vez do infinitivo. Por exemplo:

- `She suggested taking a break.` - Isso significa que a ideia proposta é fazer uma pausa.

- `He suggested starting the meeting earlier to avoid delays.` - Isso significa que ele propôs começar a reunião mais cedo.

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
