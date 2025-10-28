---
id: 672e1fff03af3aeed5d7a84b
title: Tarefa 117
challengeType: 19
dashedName: task-117
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Anna pensa sobre as ideias de James e o que ela sugere?

## --answers--

Ela discorda das ideias de James e sugere começar uma nova abordagem.

### --feedback--

Anna expressa concordância com James, não discordância, e quer se manter atualizada em vez de recomeçar.

---

Ela acha que as ideias de James são confusas e sugere focar apenas nos objetivos de acessibilidade.

### --feedback--

Anna não acha as ideias de James confusas; ela concorda e quer monitorar o progresso dos objetivos compartilhados deles.

---

Ela concorda com James e sugere que eles mantenham contato para monitorar o progresso.

---

Ela acha que as ideias de James são desnecessárias e sugere parar o projeto.

### --feedback--

Anna não sugere parar; ela apoia as ideias de James e quer se manter atualizada.

## --video-solution--

3

# --explanation--

Anna concorda com a abordagem de James, dizendo `That makes sense`, o que mostra que ela entende e apoia suas ideias.Ela também sugere `keeping in touch to monitor progress`, indicando seu interesse em se manter atualizada para garantir que alcancem seus objetivos compartilhados.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
