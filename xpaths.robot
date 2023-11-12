# Tracks various level xpaths.
# Selenium Test Xpath Variables

# Global xpaths
*** Variables ***
${amazonUrl}             https://www.amazon.com.br/    
${menuAll}               css:.nav-search-scope.nav-sprite
${categoryBook}          //a[contains(.,'Livros')]
${messageBooksPage}      //img[@alt='Até 50% off em Livros e eBooks']
${searchProducts}        //input[contains(@name,'field-keywords')]
${searchButton}          //input[contains(@value,'Ir')]
${productHolyBible}      //img[contains(@alt,'Bíblia Sagrada Acf, Couro Soft, Marrom, Letra Grande, Leitura Perfeita')]
${addToCart}             //input[contains(@title,'Adicionar ao carrinho')]  
${goToCart}              //a[contains(@data-csa-c-type,'button')]
${deleteCart}            //input[contains(@value,'Excluir')]
${emptyCart}             //h1[contains(.,'Seu carrinho de compras da Amazon está vazio.')]
${goToCheckout}          //input[contains(@name,'proceedToRetailCheckout')]