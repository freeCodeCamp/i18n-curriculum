---
id: 671a98fbaabfba994e3d9a7c
title: CSS変数のレビュー
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## CSSカスタムプロパティ（CSS変数）

- **定義**: CSSカスタムプロパティ、別名CSS変数は、CSSの作成者が定義し、ドキュメント全体で再利用できる特定の値を含む要素です。これは、より効率的で保守しやすく柔軟なスタイルシートを作成できる強力な機能です。カスタムプロパティは、テーマ対応デザインを作成する際に特に役立ちます。異なるテーマ用に一連のプロパティを定義できます。

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## `@property`ルール

- **定義**: `@property`ルールは、開発者がカスタムプロパティの動作をより細かく制御できる強力なCSS機能で、アニメーションの仕方や初期値の設定も含まれます。

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: 定義するカスタムプロパティの名前です。すべてのカスタムプロパティと同様に、必ず2つのダッシュで始まらなければなりません。
**`syntax`**: プロパティの型を定義します。`<color>`、`<length>`、`<number>`、`<percentage>`などや、より複雑な型が指定できます。
- **`inherits`**: プロパティが親要素から値を継承するかどうかを指定します。
- **`initial-value`**: プロパティのデフォルト値を設定します。
- **`@property`ルールを使ったグラデーションの例**: この例は、要素にホバーしたときに滑らかにアニメーションするグラデーションを作成します。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **フォールバック**: カスタムプロパティを使う際、標準のカスタムプロパティと同様に`var()`関数を使ってフォールバック値を指定できます。

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

CSS変数のトピックと概念をレビューしてください。
