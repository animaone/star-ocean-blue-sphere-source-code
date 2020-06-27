

Manual compreensivo de desmontagem e re-montagem universal de binários.


1- 
  Um erro que percebi observando os vários projetos de disassembly espalhados pela internet,
em específico de ferramentas que geram código automaticamente, foi a tentativa de gerar
código de maneira automatizada como a primeira etapa do projeto.
  Esse tipo de geração de código é feito baseando-se na análise estática do binário, que pode acarretar
em erros de análise, mas é suficiente para uma compreensão profunda do binário. Apesar disso, a análise 
dinâmica é mais efetiva quando é necessário desmontar o código em sua totalidade.
  A idéia de estudar o binário e extrair primeiramente os dados, ao invés do código,
pode evitar uma série de problemas que poderão ocorrer depois. Quais problemas? Bem, digamos que
a verdade não é tão cruel assim, a única coisa a mais que a análise dinâmica irá garantir é que
determinado código foi executado, ou seja, existe 100% de chance de que aquele trecho do binário é código,
e 100% de chance de que aquele código foi executado.
  Outra coisa, é que a separação entre dados e código irá automagicamente facilitar a análise do código depois,
pois irá diminuir a quantidade de código gerada.
  A separação código-dados feita de maneira dinâmica(ou seja, analisando a execução em tempo real do binário)
é bem mais eficiente quando se trata da acurácia da análise.
  No presente momento, o projeto atual chegou à um ponto de análise onde utiliza primeiro, observadores,
depois, utiliza a informação desses observadores para gerar o código.

OBSERVAR -> TIRAR CONCLUSÕES - DESASSEMBLAR -> DOCUMENTAR

  A etapa de documentação continua sendo a mais difícil, e infelizmente não pode ser automatizada. Essa
essa etapa necessita de intervenção humana, que possa analisar os pontos importantes do código e documentá-los.


