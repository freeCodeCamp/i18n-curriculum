---
id: 6571b300cc1de61d7b4dd384
title: Lição F de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-f
---

# --description--

`flex-grow` espera um único número como seu valor, e esse número é usado como o "fator de crescimento" do flex-item. Quando você aplicou `flex: 1` a cada div dentro de nosso contêiner, estava dizendo a cada div para crescer a mesma quantidade. O resultado disso é que cada div acaba tendo exatamente o mesmo tamanho. Se, em vez disso, você adicionar `flex: 2` a apenas uma das divs, então essa div crescerá 2x mais que o tamanho dos outras.

No exemplo a seguir, o atalho `flex` possui valores para `flex-shrink` e `flex-basis` especificados com seus valores padrão.

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="300" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/YzQqvgK?height=300&amp;default-tab=html%2Cresult&amp;slug-hash=YzQqvgK&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen incorporado" loading="lazy" id="cp_embed_YzQqvgK"></iframe>

# --questions--

## --text--

O que significa definir `flex: 2` para uma div específica dentro de um contêiner flex, enquanto as outras divs têm `flex: 1`?

## --answers--

O contêiner se ajustará para acomodar a div maior.

---

Todas as divs manterão o mesmo tamanho devido aos valores de `flex` conflitantes.

---

A div específica crescerá para ser duas vezes o tamanho das outras.

---

Todas as divs vão encolher igualmente para se ajustar aos novos valores de `flex`.

## --video-solution--

3
