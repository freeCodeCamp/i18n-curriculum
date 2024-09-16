---
id: 6571b2fccc1de61d7b4dd37f
title: Lição A de Introdução ao Flexbox
challengeType: 15
dashedName: introduction-flexbox-lesson-a
---

# --description--

## Antes de começarmos

Os layouts do Flexbox podem ficar um pouco complicados. Em uma lição anterior, você aprendeu como inspecionar e depurar coisas usando as ferramentas de desenvolvedor do seu navegador. Essas ferramentas serão cruciais para você nas próximas lições. Se algo não está se comportando do modo esperado, inspecionar nas ferramentas de desenvolvedor deve ser seu primeiro passo sempre.

O Flexbox não é necessariamente mais difícil do que os outros conceitos que cobrimos até agora, mas tem algumas partes que requerem um pouco mais de atenção. Vai ser um pouco difícil usar qualquer uma das coisas que você está aprendendo nestas primeiras lições até chegar ao fim e conseguir juntar tudo. À medida que avançamos, aproveite o tempo e <strong>brinque bastante com todos os exemplos de código.</strong>

Você quase definitivamente precisará voltar e se referir a essas lições (ou a alguns dos recursos que compartilhamos com você) quando chegar às atividades no final da seção, mas se você levar seu tempo e experimentar todos os exemplos de código que fornecemos, saberá melhor onde procurar quando esse momento chegar.

## Vamos usar o flex

O Flexbox é uma maneira de dispor itens em linhas ou colunas. Esses itens "flexionar" (ou seja, crescer ou encolher) com base em algumas regras simples que você pode definir. Para começar, vamos olhar para uma demonstração simples.

> Inserimos muitos exemplos interativos nessas lições. Passe um tempo experimentando com eles à medida que avança para fixar os conceitos em sua mente!

<iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true"  frameborder="0" height="400" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/TheOdinProjectExamples/embed/QWgNxrp?height=400&amp;default-tab=html%2Cresult&amp;slug-hash=QWgNxrp&amp;editable=true&amp;user=TheOdinProjectExamples&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="CodePen incorporado" loading="lazy"></iframe>

Falaremos sobre o que está acontecendo aqui em breve. Por enquanto, vamos descomentar as duas declarações do CSS relacionadas ao flex no Codepen acima removendo as tags `/*` e `*/` que as envolvem. Depois, conferimos o resultado.

> Comentários impedem que o navegador interprete linhas como código e são envoltos entre tags específicas. O CSS usa `/*` como tag de abertura do comentário e `*/` como tag de fechamento do comentário. O HTML e o JavaScript têm sua própria sintaxe. Linhas de código comentadas podem ser reabilitadas simplesmente removendo as tags de comentário que as cercam.

Todas as 3 divs devem agora estar dispostas horizontalmente. Se você redimensionar a janela de resultados com os botões `1x`, `.5x` e `.25x` você também verá que os elementos `div` vão "flexionar". Eles preencherão a área disponível e terão largura igual.

Se você adicionar outra `div` ao HTML, dentro de `.flex-container`, ela aparecerá ao lado dos outras. Tudo se ajustará para caber dentro da área disponível.

> Se for difícil ver o que está acontecendo no pequeno CodePen incorporado, sinta-se à vontade para clicar no botão "Edit on CodePen" ou "Fork on CodePen". Isso trará o exemplo para um ambiente de tamanho completo. Ao fazer isso, será possível visualizar melhor alguns dos exemplos posteriores.

# --question--

## --text--

O que acontece quando as duas declarações do CSS relacionadas ao flex no CodePen são descomentadas?

## --answers--

Os elementos `div` ficam escondidos da vista, perdendo sua visibilidade dentro do contêiner.

---

Os 3 elementos `div` são dispostos horizontalmente e se flexionam para preencher a área disponível com largura igual.

---

Cada elemento `div` se amplia e cobre todo o contêiner, sobrepondo-se uns aos outros.

---

Os elementos `div` se alinham verticalmente em uma única coluna, ignorando as declarações do CSS relacionadas ao flex.

## --video-solution--

2
