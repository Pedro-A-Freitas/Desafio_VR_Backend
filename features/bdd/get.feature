# language: pt

Funcionalidade: Pesquisar estabelecimentos
    Para averiguar informacoes
    O usuário do sistema
    Deseja realizar uma pesquisa de restaurantes

    Cenario: Buscar informacoes de restaurantes
        Dado que o usuário consulte informacoes dos restaurantes
        Quando ele realizar a pesquisa
        Então o json deve retornar os dados dos restaurentes