---
id: 68b7cadffed0e75a517da66f
title: "Challenge 50: Longest Word"
challengeType: 29
dashedName: challenge-50
---

# --description--

문장이 주어지면, 문장에서 가장 긴 단어를 반환하세요.

- 단어 길이를 판단할 때 마침표(`.`)는 무시하세요.
- 가장 긴 단어가 여러 개라면, 문장에 처음 나오는 단어를 반환하세요.

# --hints--

`get_longest_word("coding is fun")` should return `"coding"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` should return `"educational"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` should return `"sentence"`.

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
