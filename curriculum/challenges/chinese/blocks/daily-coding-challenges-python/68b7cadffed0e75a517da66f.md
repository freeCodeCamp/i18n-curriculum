---
id: 68b7cadffed0e75a517da66f
title: "挑战 50：最长单词"
challengeType: 29
dashedName: challenge-50
---

# --description--

给定一个句子，返回句子中最长的单词。

- 忽略句号（`.`）来确定单词长度。
- 如果多个单词并列为最长，返回第一个出现的那个。

# --hints--

`get_longest_word("coding is fun")` 应该返回 `"coding"`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` 应该返回 `"educational"`。

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` 应该返回 `"sentence"`。

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
