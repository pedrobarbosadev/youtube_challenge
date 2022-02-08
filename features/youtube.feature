#language:pt

Funcionalidade: Verificar quantidade de inscritos
    @inscritos
    Cenário: Validação da quantidade de inscritos

        Dado que eu esteja na página inicial do youtube
        E pesquisar o canal "D1 Jornadas"
        Quando clicar no canal
        E ir para a aba sobre do canal
        Então deverá aparecer a quantidade de inscritos do canal
    
    @mostrarMais
    Cenário: Validação do 'mostrar mais'
        Dado que eu esteja com um vídeo do D1 Jornadas Digitais aberto
        Quando clicar em mostrar mais
        Então deverá abrir a descrição mostrando mais informações

    @compartilhar
    Cenário: Acessar o canal e compartilhar vídeo

        Dado que eu esteja na página inicial do youtube
        E pesquisar o canal "D1 Jornadas"
        Quando clicar no canal
        E ir para a aba de vídeos
        E clicar em um vídeo 
        E clicar em compartilhar
        Então deverá aparecer o icone do whastapp
