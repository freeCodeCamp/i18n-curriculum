---
id: 67d301cc87b84eaa42bdcdbe
title: 什么是 `tsconfig` 文件，为什么在你的 TypeScript 项目中包含它很重要？
challengeType: 19
dashedName: what-is-a-tsconfig-file-and-why-is-it-important-to-include-in-your-typescript-projects
---

# --description--

TypeScript 的编译器设置可以配置以满足你的项目需求。该配置存放在项目根目录下的 `tsconfig.json` 文件中。实际上，如果没有它，编译器不会运行，除非你直接传递命令标记。但这个文件到底做什么呢？我们来看一个示例文件：

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

这看起来很多！所以我们来分解一下。`compilerOptions` 属性将包含你配置的“核心”——这里是你控件 TypeScript 编译器行为的地方。看看那个嵌套的对象……

`rootDir` 和 `outDir` 告诉 TypeScript 哪个目录包含你的源文件，哪个目录应包含转译后的 JavaScript 代码。

`lib` 属性决定编译器使用哪些类型定义，并允许你包含对特定 ES 版本、DOM 等的支持。

`module` 和 `moduleResolution` 有效协同管理你的包如何使用模块——无论是 CommonJS 还是 ECMAScript。

`esModuleInterop` 通过自动为导入创建命名空间对象，实现 CommonJS 和 ES 模块之间更顺畅的互操作性，使你在 TypeScript 项目中更容易一起使用来自不同系统的模块，而 `skipLibCheck` 选项则跳过验证代码中未被导入引用的 `.d.ts` 文件。

最后我们到达了 `strict` 模式。有人可能会认为，如果不启用这个标记，TypeScript 并不真正有帮助，因为它会切换许多其他检查，例如要求你正确处理可空类型，或者在 TypeScript 无法推导类型并回退到 any 时发出警告。

在结束之前，快速说明一下顶层的 `exclude` 属性——当你定义了源目录时，你可能有一些不想作为生产代码一部分编译的 TypeScript 代码位于该目录之外。例如，你的测试代码。`exclude` 数组告诉编译器在编译时忽略这些 TypeScript 文件，但仍允许像 Intellisense 这样的工具暴露潜在问题。

还有大量其他的编译器选项可供你探索——超过 50 个！我鼓励你查找文档并进行试验，以找到适合你项目需求的配置。

# --questions--

## --text--

`tsconfig.json` 文件中哪个属性会影响编译器的行为？

## --answers--

`rootDir`

### --feedback--

此属性是一个包含 `compiler` 选项的对象。

---

`compilerOptions`

---

`exclude`

### --feedback--

此属性是一个包含 `compiler` 选项的对象。

---

`lib`

### --feedback--

此属性是一个包含 `compiler` 选项的对象。

## --video-solution--

2

## --text--

`tsconfig.json` 文件中的 `strict` 选项有什么作用？

## --answers--

它只查看可空类型。

### --feedback--

此选项启用各种检查，包括对可空类型的处理。

---

它迫使使用 CommonJS 模块。

### --feedback--

此选项启用各种检查，包括对可空类型的处理。

---

它切换多个类型检查选项。

---

它将测试文件排除在编译之外。

### --feedback--

此选项启用各种检查，包括对可空类型的处理。

## --video-solution--

3

## --text--

`tsconfig.json` 文件中 `exclude` 数组的作用是什么？

## --answers--

指定要编译的文件。

### --feedback--

你可以使用此方法将测试代码排除在编译之外。

---

列出要包含的附加库。

### --feedback--

你可以使用此方法将测试代码排除在编译之外。

---

在 `compilation` 期间忽略某些 `file`。

---

为编译后的文件定义输出目录。

### --feedback--

你可以使用此方法将测试代码排除在编译之外。

## --video-solution--

3
