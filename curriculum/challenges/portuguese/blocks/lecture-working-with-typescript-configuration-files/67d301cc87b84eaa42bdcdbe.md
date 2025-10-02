---
id: 67d301cc87b84eaa42bdcdbe
title: O que é um arquivo tsconfig e por que é importante incluí-lo em seus projetos TypeScript?
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

As configurações do compilador do TypeScript podem ser configuradas para atender às necessidades do seu projeto.Essa configuração fica em um arquivo `tsconfig.json` no diretório raiz do seu projeto.De fato, sem ele, o compilador não será executado a menos que você passe diretamente as flags de comando.Mas o que exatamente este arquivo faz?Bem, vamos dar uma olhada em um arquivo de exemplo:

```json
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

Isso parece muito!Então vamos analisar.A propriedade `compilerOptions` vai conter o "núcleo" da sua configuração - é aqui que você controla como o compilador TypeScript se comporta.Olhando para aquele objeto aninhado…

O `rootDir` e `outDir` informam ao TypeScript qual diretório contém seus arquivos fonte e qual diretório deve conter o código JavaScript transpilado.

A propriedade `lib` determina quais definições de tipo o compilador usa e permite que você inclua suporte para versões específicas do ES, o DOM e mais.

`module` e `moduleResolution` funcionam efetivamente em conjunto para gerenciar como seu pacote usa módulos - seja CommonJS ou ECMAScript.

`esModuleInterop` permite uma interoperabilidade mais suave entre CommonJS e módulos ES ao criar automaticamente objetos de namespace para importações, facilitando o uso de módulos de sistemas diferentes juntos em seus projetos TypeScript, e a opção `skipLibCheck` pula a validação de arquivos `.d.ts` que não são referenciados por importações no seu código.

E finalmente chegamos ao modo `strict`.Pode-se argumentar que o TypeScript não é realmente útil sem essa flag ativada, pois ela ativa várias outras verificações, como exigir que você trate corretamente tipos anuláveis ou avisar quando o TypeScript não consegue inferir um tipo e recorre ao any.

Antes de terminarmos, uma rápida observação sobre a propriedade `exclude` de nível superior - quando você definiu um diretório de origem, pode haver código TypeScript fora desse diretório que você não quer que seja compilado como parte do seu código de produção.Por exemplo, seu código de teste.O array `exclude` informa ao compilador para ignorar esses arquivos TypeScript durante a compilação, mas ainda permite que ferramentas como Intellisense exponham possíveis problemas.

Existem muitas outras opções de compilador que você pode explorar - mais de 50!Eu incentivo você a explorar a documentação e experimentar para encontrar a configuração que funciona para as necessidades do seu projeto.

# --questions--

## --text--

Qual propriedade no arquivo `tsconfig.json` afeta como o compilador se comporta?

## --answers--

`rootDir`

### --feedback--

Esta propriedade é um objeto contendo opções para o compilador.

---

`compilerOptions`

---

`exclude`

### --feedback--

Esta propriedade é um objeto contendo opções para o compilador.

---

`lib`

### --feedback--

Esta propriedade é um objeto contendo opções para o compilador.

## --video-solution--

2

## --text--

O que a opção `strict` no arquivo `tsconfig.json` faz?

## --answers--

Ele verifica apenas tipos anuláveis.

### --feedback--

Esta opção habilita várias verificações, incluindo o tratamento de tipos anuláveis.

---

Ele aplica o uso de módulos CommonJS.

### --feedback--

Esta opção habilita várias verificações, incluindo o tratamento de tipos anuláveis.

---

Ele alterna várias opções de verificação de tipo.

---

Ele exclui arquivos de teste da compilação.

### --feedback--

Esta opção habilita várias verificações, incluindo o tratamento de tipos anuláveis.

## --video-solution--

3

## --text--

Qual é o propósito do array `exclude` no arquivo `tsconfig.json`?

## --answers--

Para especificar quais arquivos compilar.

### --feedback--

Você pode usar isso para excluir código de teste da compilação.

---

Para listar bibliotecas adicionais para incluir.

### --feedback--

Você pode usar isso para excluir código de teste da compilação.

---

Para ignorar certos arquivos durante a compilação.

---

Para definir diretórios de saída para arquivos compilados.

### --feedback--

Você pode usar isso para excluir código de teste da compilação.

## --video-solution--

3
