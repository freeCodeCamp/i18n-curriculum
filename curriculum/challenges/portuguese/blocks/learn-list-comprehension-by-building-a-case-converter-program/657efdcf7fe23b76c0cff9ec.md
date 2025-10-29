---
id: 657efdcf7fe23b76c0cff9ec
title: Passo 7
challengeType: 20
dashedName: step-7
---

# --description--

Você precisa lidar com os caracteres que já estão em minúsculas adicionando-os à lista de caracteres convertidos.

Logo após a declaração `if` dentro do loop `for`, adicione uma cláusula `else` e use o método `.append()` para adicionar `char` à variável `snake_cased_char_list`.

# --hints--

Você deve adicionar uma cláusula `else` dentro do loop `for`.Não esqueça do dois-pontos no final.

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

Você deve usar o método `.append()` para adicionar `char` à variável `snake_cased_char_list`.

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
