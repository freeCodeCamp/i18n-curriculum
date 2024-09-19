---
id: 65e185b1500d930ce8ed909b
title: Lição A de Aprenda variáveis e operadores
challengeType: 15
dashedName: learn-variables-and-operators-lesson-a
---

# --description--
A maneira mais simples de começar é criar um arquivo HTML com o código em JavaScript dentro dele. Digite o esqueleto básico do HTML em um arquivo no seu computador em algum lugar:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Page Title</title>
</head>
<body>
  <script>
    // Your JavaScript goes here!
    console.log("Hello, World!")
  </script>
</body>
</html>
```

Salve e abra esse arquivo em um navegador da web (você pode usar o <a href="https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer" target="_blank" >"Live Server" no Visual Studio Code</a> para fazer isso!) e depois abra o console do navegador clicando com o botão direito na página da web em branco e selecionando "Inspecionar" ou "Inspecionar Elemento". No painel 'Ferramentas de Desenvolvedor', encontre e selecione a aba 'Console', onde você deve ver a saída da nossa instrução `console.log`.

> `console.log()` é o comando para imprimir algo no console do desenvolvedor no seu navegador. Você pode usar isso para imprimir os resultados de qualquer um dos artigos e exercícios seguintes no console. Incentivamos você a programar junto com todos os exemplos nesta e em futuras lições.

Outra maneira de incluir JavaScript em uma página da web é por meio de um script externo. É muito semelhante a vincular documentos CSS externos ao seu site.

```html
  <script src="javascript.js"></script>
```

Arquivos em JavaScript têm a extensão `.js`, semelhante a `.css` para folhas de estilo. Arquivos em JavaScript externos são usados para scripts mais complexos.

# --questions--

## --text--

Qual instrução descreve com precisão como incluir JavaScript em um documento HTML?

## --answers--

JavaScript só pode ser incluído internamente dentro de uma tag `<script>` no corpo do HTML.

---

O código em JavaScript deve ser escrito na seção `<head>` de um documento HTML para executar corretamente.

---

JavaScript pode ser incluído diretamente em um arquivo HTML usando uma tag `<script>` ou vinculado externamente via uma tag `<script src="javascript.js">`.

---

Arquivos em JavaScript externos requerem um atributo especial na tag `<script>` para serem reconhecidos pelos navegadores da web.


## --video-solution--

3
