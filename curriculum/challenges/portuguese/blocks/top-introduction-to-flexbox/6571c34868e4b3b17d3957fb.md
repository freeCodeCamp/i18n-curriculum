---
id: 6571c34868e4b3b17d3957fb
title: Lição J de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-j
---

# --description--

Dê uma olhada no exemplo.

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="400" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/MWoyBzR?height=400&amp;default-tab=html%2Cresult&amp;slug-hash=MWoyBzR&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen incorporado" loading="lazy" id="cp_embed_MWoyBzR"></iframe>

Agora você deve ser capaz de prever o que acontece se você colocar `flex: 1` no `.item`. Tente antes de continuar!

Adicionar `flex: 1` ao `.item` faz com que cada um dos itens cresça para preencher o espaço disponível, mas o que você poderia fazer se quisesse que eles mantivessem a mesma largura, embora se distribuíssem de modo diferente dentro do contêiner? Você pode fazer isso!

Remova `flex: 1` do `.item` e adicione `justify-content: space-between` ao `.container`. Fazendo isso, você deve obter algo assim:

<img src="https://cdn.freecodecamp.org/curriculum/odin-project/flex-box/flexbox-05.png" alt="Três pequenas caixas dentro de um retângulo muito maior. As caixas são dispostas em uma única linha, uma próxima à borda esquerda do contêiner, outra próxima à borda direita do contêiner e a última diretamente no meio do contêiner, colocando o máximo de espaço possível entre cada caixa." />

`justify-content` alinha itens ao longo do **eixo principal**. Existem alguns valores que você pode usar aqui. Você aprenderá o restante nas leituras indicadas. Por enquanto, tente mudar para center, o que deve centralizar as caixas ao longo do eixo principal.

# --assignment--

Antes de passar para a próxima lição, veja o que é possível com a propriedade `justify-content`. Leia este [artigo interativo na MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content) e experimente com os diferentes valores de `justify-content` no exemplo.

# --questions--

## --text--

Como aplicar `justify-content: space-between` a um contêiner flex afeta o posicionamento dos seus itens?

## --answers--

Distribui o espaço uniformemente entre os itens, empurrando o primeiro e o último itens para as bordas.

---

Centraliza todos os itens dentro do contêiner.

---

Faz com que os itens cresçam para preencher o espaço disponível.

---

Alinha os itens ao lado esquerdo enquanto deixa espaço excessivo no lado direito.

## --video-solution--

1
