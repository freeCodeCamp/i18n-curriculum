---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: Tarefa 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que mais Mark deveria ter feito?

## --answers--

Ele deveria ter reescrito todo o seu código.

### --feedback--

Mark não precisou reescrever tudo.

---

Ele deveria ter testado seu código primeiro.

---

Ele deveria ter removido todos os comentários.

### --feedback--

Comentários são úteis e não devem ser removidos.

---

Ele deveria ter pulado o teste porque leva muito tempo.

### --feedback--

Testar é uma etapa importante antes de enviar o código.

## --video-solution--

2

# --explanation--

Um `test suite` é uma coleção de testes que verificam se um programa funciona corretamente. Por exemplo:

- `We ran the test suite to check if the app works properly.` - A equipe executou todos os testes para garantir que o app funcione conforme o esperado.

- `We need to add more tests to the test suite to check for edge cases.` - A equipe deve incluir mais testes para cobrir todas as situações possíveis.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
