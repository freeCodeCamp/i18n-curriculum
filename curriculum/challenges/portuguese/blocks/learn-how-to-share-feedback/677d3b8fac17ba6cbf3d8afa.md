---
id: 677d3b8fac17ba6cbf3d8afa
title: Tarefa 3
challengeType: 22
dashedName: task-3
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

Esta é a forma `-ing` do verbo `say`, usada após a preposição `by` para indicar o método de início.

---

`QA`

### --feedback--

Isso significa `Quality Assurance`, referindo-se ao processo de garantir que os produtos atendam aos padrões exigidos.

# --explanation--

Quando um verbo segue uma preposição, ele deve estar na forma `-ing` (gerúndio).Nesta frase, `saying` segue a preposição `by`, indicando o método que Bob usa para iniciar sua declaração.Por exemplo:

Ela melhorou suas habilidades praticando regularmente. - Aqui, `practicing` segue a preposição `by`, mostrando como ela melhorou suas habilidades.

Bob elogia Jessica pelo seu trabalho em `QA`. `QA` significa `Quality Assurance`.Refere-se ao processo de garantir que produtos ou serviços atendam a padrões específicos de qualidade e funcionem corretamente.Outro exemplo:

`The QA team identified several bugs during testing.` - Isso significa que as pessoas responsáveis por garantir a qualidade do software conseguiram detectar bugs no software antes do seu lançamento.

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
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
