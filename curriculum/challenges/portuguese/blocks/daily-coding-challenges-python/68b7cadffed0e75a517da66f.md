---
id: 68b7cadffed0e75a517da66f
title: "Desafio 50: Palavra Mais Longa"
challengeType: 29
dashedName: challenge-50
---

# --description--

Dada uma frase, retorne a palavra mais longa da frase.

- Ignore os pontos (`.`) ao determinar o comprimento da palavra.
- Se várias palavras estiverem empatadas como as mais longas, retorne a primeira que ocorrer.

# --hints--

`get_longest_word("coding is fun")` deve retornar `"coding"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` deve retornar `"educational"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` deve retornar `"sentence"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("This sentence has multiple long words."), "sentence")`)
}})
```

# --seed--

## --seed-contents--

```py
def get_longest_word(sentence):

    return sentence
```

# --solutions--

```py
def get_longest_word(sentence):
    words = sentence.split()
    longest = ''
    for word in words:
        clean_word = word.replace('.', '')
        if len(clean_word) > len(longest):
            longest = clean_word
    return longest
```
