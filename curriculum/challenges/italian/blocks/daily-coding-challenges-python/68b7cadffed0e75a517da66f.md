---
id: 68b7cadffed0e75a517da66f
title: "Sfida 50: la parola più lunga"
challengeType: 29
dashedName: challenge-50
---

# --description--

Data una frase, restituisci la parola più lunga nella frase.

- Ignora i punti (`.`) quando determini la lunghezza della parola.
- Se più parole hanno la stessa lunghezza massima, restituisci la prima che compare.

# --hints--

`get_longest_word("coding is fun")` dovrebbe restituire `"coding"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` dovrebbe restituire `"educational"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` dovrebbe restituire `"sentence"`.

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
