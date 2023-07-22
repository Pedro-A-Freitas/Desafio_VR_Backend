Dado('que o usuário consulte informacoes dos restaurantes') do
    @get_url = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
end
  
  Quando('ele realizar a pesquisa') do
    @list_restaurant = HTTParty.get(@get_url)
  end
  
  Então('o json deve retornar os dados dos restaurentes') do
    expect(@list_restaurant.code).to eql 200
    expect(@list_restaurant.message).to eql 'OK'
  end