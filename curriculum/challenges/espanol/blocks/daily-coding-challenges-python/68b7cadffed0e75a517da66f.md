---
id: 68b7cadffed0e75a517da66f
title: "Desafío 50: Palabra más larga"
challengeType: 29
dashedName: challenge-50
---

# --description--

Dada una oración, devuelve la palabra más larga en la oración.

- Ignora los puntos (`.`) al determinar la longitud de la palabra.
- Si varias palabras empatan como la más larga, devuelve la primera que aparece.

# --hints--

`get_longest_word("coding is fun")` debería devolver `"coding"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` debería devolver `"educational"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` debería devolver `"sentence"`.

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
