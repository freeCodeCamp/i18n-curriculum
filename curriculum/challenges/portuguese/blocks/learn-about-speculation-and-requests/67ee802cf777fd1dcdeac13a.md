---
id: 67ee802cf777fd1dcdeac13a
title: Tarefa 19
challengeType: 19
dashedName: task-19
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Qual requisito Sophie menciona?

## --answers--

Mark deve deletar linhas de código desnecessárias.

### --feedback--

Sophie não fala sobre remover código.

---

Mark deve reescrever completamente seu código.

### --feedback--

Sophie não sugere reescrever todo o código.

---

Mark deve evitar usar loops.

### --feedback--

Sophie não diz nada sobre evitar loops.

---

Mark deve usar notas no seu código.

## --video-solution--

4

# --explanation--

Um `comment` é uma nota no código que ajuda a explicar o que ele faz.Por exemplo:

- `I added a comment to explain why this loop is necessary.` - Você escreveu um comentário para descrever por que determinado loop é usado.

- `You can use comments to leave notes about issues that need fixing later.` - Comentários podem ser adicionados no código como lembretes para coisas que precisam ser corrigidas ou melhoradas.

Comentários ajudam outras pessoas a entender o código e lembram você de detalhes importantes ao revisar seu código depois.

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
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
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
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
