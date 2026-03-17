---
id: 657efdcf7fe23b76c0cff9ec
title: Passaggio 7
challengeType: 20
dashedName: step-7
---

# --description--

Devi gestire i caratteri che sono già in minuscolo aggiungendoli alla lista dei caratteri convertiti.

Subito dopo l'istruzione `if` all'interno del loop `for`, aggiungi una clausola `else` e usa il metodo `.append()` per aggiungere `char` alla variabile `snake_cased_char_list`.

# --hints--

Dovresti aggiungere una clausola `else` all'interno del loop `for`. Non dimenticare i due punti alla fine.

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

Dovresti usare il metodo `.append()` per aggiungere `char` alla variabile `snake_cased_char_list`.

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
