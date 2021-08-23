* Settings *
Documentation           Arquivo com cenários da funcionalidade de Autenticacao

Resource        ../resources/base.robot

Test Setup      Abrir App
Test Teardown   Fechar App

* Variables *
${email_valido}        demetriotester@gmail.com
${senha_valida}        tester123

* Test Cases *
Fazer Login e Acessar Dashboard do APP
    Escolher Autenticacao por Login
    Fazer Login Com    ${email_valido}     ${senha_valida}
    Aceitar Termos de Uso
    Aceitar Compartilhar Localizacao
    Validar Login na Dashboard