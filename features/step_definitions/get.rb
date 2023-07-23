list_restaurants = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')

Dado('que o usuário consulte informacoes dos restaurantes') do
    expect(list_restaurants.code).to eql 200 #Confirma que a chamada na api teve sucesso
    expect(list_restaurants.message).to eql 'OK' #Confirma que a chamada na api teve sucesso
    puts 'A API está funcionando'
end
  
  Quando('ele pesquisa por tipo de estabelecimento') do
    if list_restaurants.include? "typeOfEstablishment" #Confirma que o json possui a chave
        puts 'A chave "typeOfEstablishment" existe no json'
    end
  end
  
  Então('deve retornar um tipo aleatório') do
    list_restaurants = JSON.parse(list_restaurants.body)
    typeOfEstablishment = list_restaurants["typeOfEstablishment"] #Salva as chaves os resultados da chave typeOfEstablishment em outra variável
    puts typeOfEstablishment.sample #Traz um valor aleatório
  end