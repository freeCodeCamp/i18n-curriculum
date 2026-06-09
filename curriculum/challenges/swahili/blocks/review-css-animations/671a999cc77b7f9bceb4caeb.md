---
id: 671a999cc77b7f9bceb4caeb
title: Ukaguzi wa michoro ya CSS
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## Misingi ya michoro ya CSS

- **Maelezo**: Michoro ya CSS inakuwezesha kuunda athari za kuona zinazobadilika kwa urahisi kwenye kurasa za mtandao bila haja ya JavaScript au programu ngumu. Hutoa njia ya kuhamisha vipengele kwa mpangilio laini kati ya mitindo tofauti kwa muda uliobainishwa.
- **Kanuni ya `@keyframes`**: Kanuni hii inaeleza hatua na mitindo ya michoro. Inaeleza mitindo ambayo kipengele kinapaswa kuwa nayo katika nyakati tofauti wakati wa michoro.

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

- **Sifa ya `animation`**: Hii ni sifa ya ufupisho inayotumika kutekeleza michoro.
- **`animation-name`**: Hii inaeleza jina la kanuni ya `@keyframes` itakayotumika.
- **`animation-duration`**: Hii inaweka muda ambao michoro inapaswa kuchukua kukamilika.
- **`animation-timing-function`**: Hii inaeleza jinsi michoro inavyosogea kwa muda (kama `ease`, `linear`, `ease-in-out`).
- **`animation-delay`**: Hii inaeleza kuchelewa kabla michoro haijaanza.
- **`animation-iteration-count`**: Hii inaweka ni mara ngapi michoro inapaswa kurudiwa.
- **`animation-direction`**: Hii inaamua kama michoro itachezwa katika mwelekeo wa `normal`, kwa `reverse`, au `alternate` kati ya yote mawili.
- **`animation-fill-mode`**: Hii inaeleza jinsi kipengele kinapaswa kupambwa kabla na baada ya michoro.
- **`animation-play-state`**: Hii inakuwezesha kusitisha na kuendelea na michoro.

## Ufikikaji na media query ya `prefers-reduced-motion`

- **Media query ya `prefers-reduced-motion`**: Mojawapo ya masuala makuu ya ufikikaji kuhusu michoro ni kwamba inaweza kusababisha usumbufu au hata madhara kwa baadhi ya watumizi. Watu wenye matatizo ya vestibular au hisia kali za mwendo wanaweza kupata kizunguzungu, kichefuchefu, au maumivu ya kichwa wanapokumbwa na aina fulani za mwendo kwenye skrini. Media query ya `prefers-reduced-motion` inaruhusu wasanidi programu wa mtandao kugundua kama mtumizi ameomba michoro au athari za mwendo kidogo kwenye ngazi ya mfumo.

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

Kagua mada na dhana za michoro ya CSS.
