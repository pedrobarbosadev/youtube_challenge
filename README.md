## Automatização de processos com Ruby

Este projeto implementa uma automatização front-end e utiliza as seguintes ferramentas:

- Capybara
- Cucumber
- rspec
- selenium web-driver

O projeto é dividido em três cenários sendo:
O primeiro:
Acessar o youtube, pesquisar por um canal e acessar a aba "sobre", além de validar se a página é correta:

![Exemplo1](https://media2.giphy.com/media/IEVCJDRUHiMZvu5OXP/giphy.gif)
O segundo cenário cria um fluxo alternativo, acessa a um vídeo do mesmo canal e clica em "mostrar mais":

![Exemplo1](https://media3.giphy.com/media/naSLcwmiWD8IdAmIJR/giphy.gif)
e por fim, o terceiro cenário, parte de extra do desafio, acessa o canal, clica na aba "vídeos", acessa um vídeo e seleciona a opção de compartilhar:

![Exemplo1](https://media3.giphy.com/media/CzuD7r7Ac8Y1hBl8g4/giphy.gif)
### Como executar o projeto
Para rodar qualquer um dos três cenários individualmente basta executar o comando
`cucumber -t @[cenário]`
Onde o cenário está setado com um '@'  no `arquivo youtube.feature`

E para executar os três cenários ao mesmo tempo:
`cucumber` no terminal no path do projeto.

O resultado de todos os cenários quando executado salva um screenshot na pasta `logs`