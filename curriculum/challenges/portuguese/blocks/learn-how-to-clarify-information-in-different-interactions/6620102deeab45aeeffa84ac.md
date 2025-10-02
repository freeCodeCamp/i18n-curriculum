---
id: 6620102deeab45aeeffa84ac
title: Tarefa 5
challengeType: 22
dashedName: task-5
---

<!-- (Audio) Tom: She's a colleague with long wavy brown hair and bright brown eyes. -->

# --description--

Ao descrever a cor dos olhos de uma pessoa, você normalmente os identifica primeiro pela sua cor.As cores comuns dos olhos são `black`, `brown`, `blue` e `green`.Dependendo da cor, pode haver uma tendência para `white` ou para `black` (a própria cor é mais forte ou mais fraca).Neste caso, você pode adicionar as palavras `light` (tendendo a `white`) e `dark` (tendendo a `black`) antes da cor para expressá-la.Outra característica que você normalmente usa para identificar os olhos de outra pessoa é o formato - `round` quando é mais parecido com um círculo e `narrow` quando é mais semelhante a uma linha.Finalmente, você pode se referir a eles em termos de seu tamanho, `large` (quando são grandes) ou `small` (quando não são).Tom também expressa uma opinião, dizendo que os olhos de Lisa estão cheios de energia e vitalidade.Neste caso, você diz que os olhos de alguém estão `bright`.

Assim como você faz com `hair`, os adjetivos para identificar os olhos de uma pessoa também seguem uma ordem em inglês.Primeiro, você expressa essa opinião, depois passa para o tamanho, depois a forma e finalmente a cor (precedida ou não por `light` ou `dark`).

Exemplo: `Tom has beautiful, small, narrow, light green eyes.`

Agora ouça e preencha as lacunas com a descrição de Tom sobre os olhos de Lisa.

# --fillInTheBlank--

## --sentence--

`She's a colleague with long wavy brown hair and BLANK BLANK eyes.`

## --blanks--

`bright`

### --feedback--

Tom expressa uma opinião primeiro.Ele diz que os olhos de Lisa estão cheios de energia.

---

`brown`

### --feedback--

Tom finalmente fala sobre a cor dos olhos de Lisa.É um tom próximo de `black` e nem `blue` nem `green`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 6.52,
      "finishTimestamp": 10.6
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.08,
      "dialogue": {
        "text": "She's a colleague with long wavy brown hair and bright brown eyes.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.58
    }
  ]
}
```
