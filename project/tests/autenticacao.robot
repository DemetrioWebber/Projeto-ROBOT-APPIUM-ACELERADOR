* Settings *
Documentation           Arquivo com cenários da funcionalidade de Autenticacao

Resource        ../resources/support/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App


* Test Cases *
 Fazer Login e Acessar Dashboard do APP

     ${dados_sensiveis}      Get JSON      sensitive.json

     Escolher Autenticacao por Login
     Fazer Login Com    ${dados_sensiveis["dados_validos"]["email"]}     ${dados_sensiveis["dados_validos"]["senha"]}
     Aceitar Termos de Uso
     Aceitar Compartilhar Localizacao
     Validar Login na Dashboard

Fazer Login com Dados Invalidos

    ${dados_dinâmicos}      Criar Email e Senha Dinâmicos

    Escolher Autenticacao por Login
    Fazer Login Com     ${dados_dinâmicos}[0]    ${dados_dinâmicos}[1]
    Validar Dados Invalidos no Login