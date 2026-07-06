---
id: 68b7cadffed0e75a517da66f
title: "تحدٍّ 50: أطول كلمة"
challengeType: 29
dashedName: challenge-50
---

# --description--

أعطِ جملة، أرجع أطول كلمة في الجملة.

- تجاهل النقاط (`.`) عند تحديد طول الكلمة.
- إذا تساوت عدة كلمات في الطول، أرجع أول كلمة تظهر.

# --hints--

`get_longest_word("coding is fun")` يجب أن تُرجع `"coding"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("coding is fun"), "coding")`)
}})
```

`get_longest_word("Coding challenges are fun and educational.")` يجب أن تُرجع `"educational"`.

```js
({test: () => { runPython(`
from unittest import TestCase
TestCase().assertEqual(get_longest_word("Coding challenges are fun and educational."), "educational")`)
}})
```

`get_longest_word("This sentence has multiple long words.")` يجب أن تُرجع `"sentence"`.

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
