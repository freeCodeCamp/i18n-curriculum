---
id: 67f36533ffaeffe3ac2dad2b
title: Tarefa 131
challengeType: 19
dashedName: task-131
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Jessica está explicando?

## --answers--

Houve um problema com a programação da atualização atual.

### --feedback--

Jessica está falando sobre o tempo do recurso, não sobre o cronograma da atualização em si.

---

O recurso de acompanhamento de orçamento estará na próxima atualização, não na atual.

---

O recurso de acompanhamento de orçamento foi removido da atualização atual.

### --feedback--

Jessica não menciona que o recurso foi removido.

---

O recurso foi incluído por engano nesta atualização.

### --feedback--

Jessica não diz que a funcionalidade foi incluída por engano.

## --video-solution--

2

# --explanation--

Jessica diz, `The budget tracking feature is planned for the next update`, explicando que o recurso não está incluído na atualização atual mas será adicionado na próxima.

Isso esclarece a confusão sobre o tempo da funcionalidade.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
