*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Open Browser
# Test Teardown    Close Browser

*** Test Cases ***

Test Case 01 - Access to the Electronics menu
    [Documentation]    Esse teste verifica o menu Ideias de Presente do site da Amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus  categorias  
    Given that I am on the Amazon.com.br home page
    When accessing the "Livros" section
    Then "Livros" page is opened with the title "Livros | Amazon.com.br" 
    And the text "Até 50% off em Livros e eBooks" must be displayed on the page
    
Test Case 02 - Search for a Product
    [Documentation]    Esse teste verifica a busca de um produto
    [Tags]             busca-produtos  lista_busca
    Given that I am on the Amazon.com.br home page
    When searching for the product "Biblia Sagrada"
    Then a list of products "Biblia Sagrada" must be shown on the page

Test Case 03 - Add Product to Cart
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Given that I am on the Amazon.com.br home page
    When searching for the product "Biblia Sagrada"
    Then a list of products "Biblia Sagrada" must be shown on the page

    When adding the "Biblia Sagrada" product to the cart
    Then the product "Biblia Sagrada" should be added successfully
    
Test Case 04 - Remove Product from Cart
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Given that I am on the Amazon.com.br home page
    When searching for the product "Biblia Sagrada"
    Then a list of products "Biblia Sagrada" must be shown on the page
    
    When adding the "Biblia Sagrada" product to the cart
    Then the product "Biblia Sagrada" should be added successfully

    When to remove the "Biblia Sagrada" product from the cart
    Then the cart will be empty


    