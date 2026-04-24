---
id: 671a999cc77b7f9bceb4caeb
title: CSSアニメーションのレビュー
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## CSSアニメーションの基本

- **定義**: CSSアニメーションは、JavaScriptや複雑なプログラミングなしでウェブページに動的で視覚的に魅力的な効果を作成できます。指定した期間内に要素を異なるスタイル間でスムーズに変化させる方法を提供します。
- **`@keyframes` ルール**: このルールはアニメーションの段階とスタイルを定義します。アニメーションのさまざまなポイントで要素がどのようなスタイルを持つべきかを指定します。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box">Slide</div>
```

```css
.box {
  width: 120px;
  padding: 10px;
  background: #0077ff;
  color: white;
  animation: slide-in 1s ease-in-out;
}

@keyframes slide-in {
  from {
    transform: translateX(-100%);
  }
  to {
    transform: translateX(0);
  }
}
```

:::

- **`animation` プロパティ**: アニメーションを適用するための省略形プロパティです。
- **`animation-name`**: 使用する`@keyframes`ルールの名前を指定します。
- **`animation-duration`**: アニメーションが完了するまでの時間を設定します。
- **`animation-timing-function`**: アニメーションの進行方法（ease、linear、ease-in-outなど）を定義します。
- **`animation-delay`**: アニメーション開始前の遅延時間を指定します。
- **`animation-iteration-count`**: アニメーションの繰り返し回数を設定します。
- **`animation-direction`**: アニメーションの再生方向（前方、後方、交互）を決定します。
- **`animation-fill-mode`**: アニメーションの前後で要素がどのようにスタイル付けされるかを指定します。
- **`animation-play-state`**: アニメーションの一時停止と再開を可能にします。

## アクセシビリティと`prefers-reduced-motion`メディアクエリ

- **`prefers-reduced-motion`メディアクエリ**: アニメーションに関する主なアクセシビリティの懸念の一つは、特定のユーザーに不快感や身体的な害を引き起こす可能性があることです。前庭障害や動きに敏感な人は、画面上の特定の動きにさらされるとめまい、吐き気、頭痛を感じる場合があります。`prefers-reduced-motion`メディアクエリは、ユーザーがシステムレベルで最小限のアニメーションや動きの効果を要求しているかどうかをウェブ開発者が検出できるようにします。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<button class="animated-element">Hover me</button>
```

```css
.animated-element {
  padding: 10px 16px;
  transition: transform 0.3s ease-in-out;
}

.animated-element:hover {
  transform: translateX(20px);
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    transition: none;
  }
}
```

:::

# --assignment--

CSSアニメーションのトピックと概念をレビューしてください。
