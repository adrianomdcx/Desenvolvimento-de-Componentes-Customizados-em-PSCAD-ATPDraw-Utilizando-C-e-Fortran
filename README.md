# Funções em C e Fortran para PSCAD e ATPDraw

Este repositório reúne rotinas que podem servir de base para componentes personalizados em PSCAD e ATPDraw. O arquivo em C concentra os cálculos e as condições de controle; o arquivo em Fortran faz a interface com essas rotinas usando `ISO_C_BINDING` e `BIND(C)`.

## O que há nos arquivos

- `arquivos.c`: gera uma portadora triangular, calcula a transformada de Clarke, implementa condições de acionamento para chaves pares e ímpares e aplica um distúrbio de tensão e frequência.
- `arquivos.f`: contém as rotinas `AUX_*` que chamam as funções em C.

Os arquivos são apenas o código-fonte dessas rotinas. O repositório não inclui esquemas dos componentes, um projeto de simulação nem instruções de compilação específicas para uma versão do PSCAD ou ATPDraw.

## Antes de usar

Há uma diferença que precisa ser corrigida na função triangular: em `arquivos.c`, `triangular` recebe cinco argumentos (`m`, `b`, `T`, `t` e `y`), enquanto a interface `AUX_TRIANGULAR` em `arquivos.f` declara e envia quatro. Alinhe as duas assinaturas antes de integrar ou executar essa rotina; a chamada incompatível pode gerar resultados incorretos.

As demais funções também dependem de que a interface Fortran e a rotina C mantenham a mesma quantidade e ordem de argumentos. A compilação e a ligação dos dois arquivos devem ser feitas no ambiente configurado para o PSCAD ou ATPDraw.
