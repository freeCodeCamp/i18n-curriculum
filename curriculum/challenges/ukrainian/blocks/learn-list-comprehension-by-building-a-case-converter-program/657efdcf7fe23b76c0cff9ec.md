---
id: 657efdcf7fe23b76c0cff9ec
title: Крок 7
challengeType: 20
dashedName: step-7
---

# --description--

Вам потрібно обробити символи, які вже знаходяться в нижньому регістрі, додавши їх до списку конвертованих символів.

Одразу після інструкції `if` всередині циклу `for` додайте умову `else` і використайте метод `.append()` щоб додати `char` до змінної `snake_cased_char_list`.

# --hints--

Ви повинні додати умову `else` всередині циклу `for`. Не забудьте двокрапку в кінці.

```js
({
    test: () => {
        const transformedCode = code.replace(/\r/g, "");
        const convert_to_snake_case = __helpers.python.getDef("\n" + transformedCode, "convert_to_snake_case");
        const { function_body } = convert_to_snake_case;

        assert.match(function_body, / +else:/);
    }
})
```

Ви повинні використати метод `.append()` щоб додати `char` до змінної `snake_cased_char_list`.

```js
({
    test: () => {
        const transformedCode = code.replace(/\r/g, "");
        const convert_to_snake_case = __helpers.python.getDef("\n" + transformedCode, "convert_to_snake_case");
        const { function_body } = convert_to_snake_case;

        assert.match(function_body, / +snake_cased_char_list.append\(\s*char\s*\)/);
    }
})
```

# --seed--

## --seed-contents--

```py
def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
--fcc-editable-region--
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
--fcc-editable-region--
```
