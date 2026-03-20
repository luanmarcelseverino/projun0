*** Settings ***
Library    Browser
Documentation    Projeto de Automação E2E - Nível Júnior

*** Variables ***
${URL}             https://www.saucedemo.com/
${USER}            standard_user
${PASSWORD}        secret_sauce
${PRODUTO}         Sauce Labs Backpack

*** Test Cases ***
Fluxo de Compra com Sucesso
    [Documentation]    Valida o login e a inclusão de item no carrinho.
    Abrir Site SauceDemo
    Realizar Login            ${USER}    ${PASSWORD}
    Adicionar Item Ao Carrinho
    Verificar Item No Carrinho    ${PRODUTO}
    [Teardown]    Take Screenshot

*** Keywords ***
Abrir Site SauceDemo
    New Browser    browser=chromium    headless=False
    New Page       ${URL}

Realizar Login
    [Arguments]    ${username}    ${pass}
    Fill Text      css=#user-name    ${username}
    Fill Text      css=#password     ${pass}
    Click          css=#login-button

Adicionar Item Ao Carrinho
    Click          css=#add-to-cart-sauce-labs-backpack
    Click          css=.shopping_cart_link

Verificar Item No Carrinho
    [Arguments]    ${nome_esperado}
    Get Text       css=.inventory_item_name    contains    ${nome_esperado}