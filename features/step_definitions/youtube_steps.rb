Dado('que eu esteja na página inicial do youtube') do
    visit 'https://www.youtube.com/'
end

E ('pesquisar o canal {string}') do |nome| 
    find('input[id=search]').set nome
    find('#search-icon-legacy').click
end

Quando ('clicar no canal') do
    find('#channel-title').click 
end

E ('ir para a aba sobre do canal') do
    find(:xpath,'//*[@id="tabsContent"]/tp-yt-paper-tab[6]/div').click
end

Então ('deverá aparecer a quantidade de inscritos do canal') do
    expect(page).to have_content 'inscritos'
    page.save_screenshot("logs/temp_screenshot.png")
end

Dado ('que eu esteja com um vídeo do D1 Jornadas Digitais aberto') do
    visit 'https://www.youtube.com/watch?v=rcrNntC5thw'
end
Quando ('clicar em mostrar mais') do
    find('#more').click
end

Então ('deverá abrir a descrição mostrando mais informações') do
    expect(page).to have_content 'Esse vídeo é um trecho do Journey Talks #14'
    page.save_screenshot("logs/maisinformacao_screenshot.png")
end


Quando('ir para a aba de vídeos') do
    find(:xpath,'//*[@id="tabsContent"]/tp-yt-paper-tab[2]/div').click
end

E('clicar em um vídeo') do
    click_link 'Transbordo para atendimento humano'
end

E ('clicar em compartilhar') do
    find(:xpath, '/html/body/ytd-app/div/ytd-page-manager/ytd-watch-flexy/div[5]/div[1]/div/div[6]/div[2]/ytd-video-primary-info-renderer/div/div/div[3]/div/ytd-menu-renderer/div/ytd-button-renderer[1]/a/yt-icon-button/button/yt-icon').click
end

Então ('deverá aparecer o icone do whastapp') do
    expect(page).to have_content 'WhatsApp' 
    page.save_screenshot("logs/whatsapp_screenshot.png")
end

