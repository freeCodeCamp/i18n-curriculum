---
id: 68b7cadffed0e75a517da66f
title: "挑戰 50：最長的字、單字"
challengeType: 29
dashedName: challenge-50
---

# --description--

給定一個句子，傳回句子中最長的字。

- 判斷字長時忽略句點（`．`）。
- 如果多個字的長度相同，傳回第一個出現的字。

# --hints--

`get_longest_word("coding is fun")` 應該傳回 `"coding"`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` 應該傳回 `"educational"`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` 應該傳回 `"sentence"`。

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
