

FUNCTION LerTexto(cMensagem)

    LOCAL cTexto := ""

    ACCEPT cMensagem TO cTexto

RETURN cTexto


FUNCTION Menu()

    LOCAL nOpcao

    QOut( "" )
    QOut( "=== Controle de Estoque ===" )
    QOut( "1 - Cadastrar produto" )
    QOut( "2 - Listar produtos" )
    QOut( "3 - Entrada de estoque" )
    QOut( "4 - Saida de estoque" )
    QOut( "5 - Buscar produto por codigo" )
    QOut( "6 - Relatorio de estoque" )
    QOut( "0 - Sair" )
    QOut( "" )

    DO WHILE .T.
        nOpcao := Val( LerTexto( "Opcao: " ) )

        IF nOpcao >= 0 .AND. nOpcao <= 6
            EXIT
        ENDIF

        QOut( "Opcao invalida. Tente novamente." )
    ENDDO

RETURN nOpcao


FUNCTION CadastrarProduto(aProdutos)

    LOCAL cCodigo
    LOCAL cNome
    LOCAL nQuantidade
    LOCAL nPrecoUnitario
    LOCAL nPosicao

    QOut( "" )
    QOut( "=== Cadastrar Produto ===" )

    cCodigo := AllTrim( LerTexto( "Codigo: " ) )

    IF Empty( cCodigo )
        QOut( "Codigo invalido." )
        RETURN NIL
    ENDIF

    nPosicao := BuscarProduto(aProdutos, cCodigo)

    IF nPosicao > 0
        QOut( "Ja existe um produto com este codigo." )
        RETURN NIL
    ENDIF

    cNome := AllTrim( LerTexto( "Nome: " ) )

    IF Empty( cNome )
        QOut( "Nome invalido." )
        RETURN NIL
    ENDIF

    DO WHILE .T.
        nQuantidade := Val( LerTexto( "Quantidade inicial: " ) )

        IF nQuantidade >= 0 .AND. Int( nQuantidade ) == nQuantidade
            EXIT
        ENDIF

        QOut( "Quantidade invalida. Informe um inteiro >= 0." )
    ENDDO

    DO WHILE .T.
        nPrecoUnitario := Val( LerTexto( "Preco unitario: " ) )

        IF nPrecoUnitario > 0
            EXIT
        ENDIF

        QOut( "Preco invalido. Informe um valor maior que zero." )
    ENDDO

    AAdd( aProdutos, { cCodigo, cNome, nQuantidade, nPrecoUnitario } )

    QOut( "Produto cadastrado com sucesso." )

RETURN NIL


FUNCTION ListarProdutos(aProdutos)

    LOCAL nI

    QOut( "" )
    QOut( "=== Listar Produtos ===" )

    IF Len( aProdutos ) == 0
        QOut( "Nenhum produto cadastrado." )
        RETURN NIL
    ENDIF

    FOR nI := 1 TO Len( aProdutos )
        QOut( "Codigo: " + aProdutos[nI][1] )
        QOut( "Nome: " + aProdutos[nI][2] )
        QOut( "Quantidade: " + AllTrim( Str( aProdutos[nI][3], 10, 0 ) ) )
        QOut( "Preco unitario: " + AllTrim( Str( aProdutos[nI][4], 10, 2 ) ) )
        QOut( "------------------------------" )
    NEXT

RETURN NIL


FUNCTION EntradaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL nPosicao
    LOCAL nQuantidade

    QOut( "" )
    QOut( "=== Entrada de Estoque ===" )

    IF Len( aProdutos ) == 0
        QOut( "Nenhum produto cadastrado." )
        RETURN NIL
    ENDIF

    cCodigo := AllTrim( LerTexto( "Codigo do produto: " ) )

    IF Empty( cCodigo )
        QOut( "Codigo invalido." )
        RETURN NIL
    ENDIF

    nPosicao := BuscarProduto(aProdutos, cCodigo)

    IF nPosicao == 0
        QOut( "Produto nao encontrado." )
        RETURN NIL
    ENDIF

    DO WHILE .T.
        nQuantidade := Val( LerTexto( "Quantidade a entrar: " ) )

        IF nQuantidade > 0 .AND. Int( nQuantidade ) == nQuantidade
            EXIT
        ENDIF

        QOut( "Quantidade invalida. Informe um inteiro positivo." )
    ENDDO

    aProdutos[nPosicao][3] := aProdutos[nPosicao][3] + nQuantidade

    QOut( "Entrada realizada com sucesso." )

RETURN NIL


FUNCTION SaidaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL nPosicao
    LOCAL nQuantidade

    QOut( "" )
    QOut( "=== Saida de Estoque ===" )

    IF Len( aProdutos ) == 0
        QOut( "Nenhum produto cadastrado." )
        RETURN NIL
    ENDIF

    cCodigo := AllTrim( LerTexto( "Codigo do produto: " ) )

    IF Empty( cCodigo )
        QOut( "Codigo invalido." )
        RETURN NIL
    ENDIF

    nPosicao := BuscarProduto(aProdutos, cCodigo)

    IF nPosicao == 0
        QOut( "Produto nao encontrado." )
        RETURN NIL
    ENDIF

    DO WHILE .T.
        nQuantidade := Val( LerTexto( "Quantidade a sair: " ) )

        IF nQuantidade > 0 .AND. Int( nQuantidade ) == nQuantidade
            EXIT
        ENDIF

        QOut( "Quantidade invalida. Informe um inteiro positivo." )
    ENDDO

    IF nQuantidade > aProdutos[nPosicao][3]
        QOut( "Estoque insuficiente para esta saida." )
        RETURN NIL
    ENDIF

    aProdutos[nPosicao][3] := aProdutos[nPosicao][3] - nQuantidade

    QOut( "Saida realizada com sucesso." )

RETURN NIL


FUNCTION BuscarProduto(aProdutos, cCodigo)

    LOCAL nI

    cCodigo := AllTrim( cCodigo )

    IF Empty( cCodigo )
        RETURN 0
    ENDIF

    FOR nI := 1 TO Len( aProdutos )
        IF AllTrim( aProdutos[nI][1] ) == cCodigo
            RETURN nI
        ENDIF
    NEXT

RETURN 0


FUNCTION RelatorioEstoque(aProdutos)

    LOCAL nI
    LOCAL nValorPorProduto
    LOCAL nTotalGeral

    QOut( "" )
    QOut( "=== Relatorio de Estoque ===" )

    IF Len( aProdutos ) == 0
        QOut( "Nenhum produto cadastrado." )
        RETURN NIL
    ENDIF

    nTotalGeral := 0

    FOR nI := 1 TO Len( aProdutos )
        nValorPorProduto := aProdutos[nI][3] * aProdutos[nI][4]
        nTotalGeral := nTotalGeral + nValorPorProduto

        QOut( "Produto: " + aProdutos[nI][2] )
        QOut( "Valor em estoque: " + AllTrim( Str( nValorPorProduto, 12, 2 ) ) )
        QOut( "------------------------------" )
    NEXT

    QOut( "Total geral: " + AllTrim( Str( nTotalGeral, 12, 2 ) ) )

RETURN NIL
