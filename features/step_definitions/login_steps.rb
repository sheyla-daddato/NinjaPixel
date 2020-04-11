Dado("que acesso à página principal") do
    visit "http://pixel-web:3000/login"
    page.current_window.resize_to(1440, 900)
end
  
Quando("eu submeto minhas credenciais {string} e {string}") do |email, password|
    # o hastag é para buscar o elemento pelo ID (inspecione o elemento para ver)
    find("#emailId").set email
    find("input[name=password]").set password
    click_button "Entrar"
end
  
Então("devo ser autenticado") do
    logged_user = find(".user .info span").text
    expect(logged_user).to eql "Papito"
end

Então("devo ver uma mensagem de alerta {string}") do |mensagem_erro|
    msg_erro = find(".card-body .alert span").text
    expect(msg_erro).to eql mensagem_erro
end

