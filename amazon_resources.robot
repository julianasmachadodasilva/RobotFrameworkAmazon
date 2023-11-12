*** Settings ***
Library    SeleniumLibrary
Documentation    This test suite checks the amazon webiste features
Resource    ./xpaths.robot


*** Keywords ***
Open the browser
    Open Browser    browser=firefox         
    Maximize Browser Window   
Close the browser
    Capture Page Screenshot
    Close Browser

# Test Case 01 - Access to the Electronics menu
Given that I am on the Amazon.com.br home page
    Go To                            url=${amazonUrl}
    Title Should Be                  Amazon.com.br | Tudo pra você, de A a Z.
When accessing the "Livros" section
    Click Element                    ${categoryBook}
    Sleep    5s
Then "Livros" page is opened with the title "Livros | Amazon.com.br" 
    Title Should Be         Livros | Amazon.com.br    
And the text "Até 50% off em Livros e eBooks" must be displayed on the page
    Element Should Be Visible    ${messageBooksPage}
    Sleep    5s

# Test Case 02 - Search for a Product
When searching for the product "Biblia Sagrada"
    Input Text                       ${searchProducts}    Biblia Sagrada
    Click Element                    ${searchButton}
    Sleep    5s
Then a list of products "Biblia Sagrada" must be shown on the page
    Wait Until Element Is Visible    ${productHolyBible}    timeout=10s
    Title Should Be    Amazon.com.br : Biblia Sagrada
    Sleep    5s

# Test Case 03 - Add Product to Cart
When adding the "Biblia Sagrada" product to the cart
    Click Element                    ${productHolyBible}                   
    Click Element                    ${addToCart}
    Sleep    5s
Then the product "Biblia Sagrada" should be added successfully
    Click Element                    ${goToCart}
    Element Should Be Visible        ${goToCheckout}
    Title Should Be                  Carrinho de compras da Amazon.com
    Sleep    5s

# Test Case 04 - Remove Product from Cart
When to remove the "Biblia Sagrada" product from the cart
    Click Element                    ${deleteCart}
Then the cart will be empty
    Wait Until Element Is Visible    ${emptyCart}    timeout=10s
    Close All Browsers

