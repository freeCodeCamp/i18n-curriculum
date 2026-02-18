---
id: 695cc8f280fef0cc3bed02ca
title: O que é o módulo Path e como ele funciona?
challengeType: 19
dashedName: what-is-the-path-module-and-how-does-it-work
---

# --description--

O módulo Node.js `path` permite que você trabalhe com arquivos e caminhos de diretórios. Ele fornece vários métodos úteis para manipular e transformar diretórios, incluindo juntar, normalizar e resolver os diretórios em diferentes plataformas e sistemas operacionais.

Para usar o módulo `path`, você pode importá-lo assim:

```js
const path = require("path");
```

Vamos analisar alguns dos métodos que o módulo `path` fornece e como eles funcionam.

Primeiro, você deve estar ciente das variáveis globais do Node.js `__filename` e `__dirname`, também conhecidas como variáveis "common JS". Você não precisa do módulo `path` para acessá-las, por isso elas são chamadas de variáveis globais.

`__filename` é o caminho absoluto do arquivo atual e `__dirname` é o caminho absoluto do diretório que contém o arquivo atual.

Por exemplo, eu tenho um arquivo `script.js` com o qual estou trabalhando atualmente. Veja o que os dois métodos retornam:

```js
console.log(__filename);
// /Users/user/Desktop/fCC/script-code/node/node-path/script.js

console.log(__dirname);
// /Users/user/Desktop/fCC/script-code/node/node-path
```

Você também deve estar ciente de caminhos relativos e absolutos.

Um caminho relativo aponta para um arquivo ou pasta com base no seu diretório de trabalho atual. Por exemplo, `./assets/src/text-files`.

Um caminho absoluto, por outro lado, fornece o endereço completo de um arquivo ou pasta a partir da raiz do seu sistema, como `/Users/johndoe/projects/app/assets/src/text-files.`

O método `basename()` mostra a última parte do arquivo, ou seja, o nome do arquivo:

```js
console.log(path.basename(__filename)); // script.js
```

`dirname()` retorna o nome do diretório de um caminho:

```js
console.log(path.dirname(__dirname)); // node-path
```

`extname()` retorna a extensão do arquivo atual:

```js
console.log(path.extname(__filename)); // .js
```

Você também pode especificar um arquivo diferente para retornar a extensão de:

```js
console.log(path.extname('text-files/text1.txt')); // .txt
```

O método `join()` pega todos os segmentos de caminho que você passar e os une em um caminho limpo e normalizado. 

Isso pode ser útil se você quiser mesclar arquivos relacionados em pastas diferentes para que possa trabalhar com eles juntos:

```js
const joinedPath = path.join("src", "assets", "text-files");
console.log(joinedPath); // src/assets/text-files
```

O Windows usa barras invertidas para separar diretórios, então o resultado será `src\assets\text-files`.

Além disso, o método `join()` corrige automaticamente barras erradas e remove as extras:

```js
const wrongPath = path.join("/src//", "assets", "text-files");
console.log(wrongPath); // /src/assets/text-files
```

O método `resolve()` transforma uma sequência de segmentos de caminho em um caminho absoluto. Ele começa a partir do seu diretório de trabalho atual e resulta em um caminho completo que aponta para a localização exata no dispositivo:

```js
const absolutePath = path.resolve("assets", "src", "text-files");
console.log(absolutePath);
// /Users/user/Desktop/fCC/script-code/node/node-path/assets/src/text-files
```

A diferença entre `join()` e `resolve()` é que `join()` cria um caminho relativo, enquanto `resolve()` retorna um caminho absoluto.

Por fim, existem os métodos `parse()` e `format()`.

`parse()` recebe um diretório ou arquivo e retorna um objeto que contém a divisão de suas partes, como a raiz do sistema, seu diretório, extensão e o nome do arquivo:

```js
const parsedFile = path.parse(__filename);

console.log(parsedFile);
/*
{
 root: '/',
 dir: '/Users/user/Desktop/fCC/script-code/node/node-path',
 base: 'script.js',
 ext: '.js',
 name: 'script'
}
*/
```

`format()`, por outro lado, constrói um caminho a partir de um objeto contendo diretório, nome e extensão:

```js
const formattedDirectory = path.format({
  dir: "/users/johndoe/docs",
  name: "file",
  ext: ".txt",
});

console.log(formattedDirectory); // /users/johndoe/docs/file.txt
```

# --questions--

## --text--

Qual é a diferença entre `path.dirname()` e `path.extname()` no Node.js?

## --answers--

`dirname()` remove a extensão do arquivo, enquanto `extname()` remove o nome do diretório.

### --feedback--

Concentre-se em qual lida com diretórios e qual lida com extensões de arquivos.

---

`dirname()` retorna o caminho completo do arquivo, enquanto `extname()` retorna o nome do diretório.

### --feedback--

Concentre-se em qual lida com diretórios e qual lida com extensões de arquivos.

---

`dirname()` retorna o nome do diretório de um caminho, enquanto `extname()` retorna a extensão do arquivo.

---

`dirname()` e `extname()` retornam o mesmo valor mas em formatos diferentes.

### --feedback--

Concentre-se em qual lida com diretórios e qual lida com extensões de arquivos.

## --video-solution--

3

## --text--

Qual método `path` constrói um caminho completo de arquivo a partir de um objeto contendo as propriedades directory, name e extension?

## --answers--

`path.parse()`

### --feedback--

Pense no que é o oposto de `parse()`.

---

`path.format()`

---

`path.resolve()`

### --feedback--

Pense no que é o oposto de `parse()`.

---

`path.join()`

### --feedback--

Pense no que é o oposto de `parse()`.

## --video-solution--

2

## --text--

A que os valores globais do Node.js `__filename` e `__dirname` fornecem acesso?

## --answers--

O caminho absoluto do arquivo atual e seu diretório contendo.

---

O nome do módulo atual e suas dependências.

### --feedback--

Pense em quais variáveis fornecem automaticamente caminhos completos de arquivos e pastas sem usar o módulo path.

---

O caminho relativo para o diretório de instalação do Node.js.

### --feedback--

Pense em quais variáveis fornecem automaticamente caminhos completos de arquivos e pastas sem usar o módulo path.

---

A URL do servidor web em execução e seu nome de host.

### --feedback--

Pense em quais variáveis fornecem automaticamente caminhos completos de arquivos e pastas sem usar o módulo path.

## --video-solution--

1
