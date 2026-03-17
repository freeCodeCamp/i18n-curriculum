---
id: 68b7cadffed0e75a517da66f
title: "Завдання 50: найдовше слово"
challengeType: 29
dashedName: challenge-50
---

# --description--

Дано речення, поверніть найдовше слово в реченні.

- Ігноруйте крапки (`.`) при визначенні довжини слова.
- Якщо кілька слів мають однакову максимальну довжину, поверніть перше з них.

# --hints--

`get_longest_word("coding is fun")` має повернути `"coding"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` має повернути `"educational"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` має повернути `"sentence"`.

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
