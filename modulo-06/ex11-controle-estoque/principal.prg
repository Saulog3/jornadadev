FUNCTION Main()

    LOCAL aProdutos := {}
    LOCAL nOpcao
    LOCAL cCodigo
    LOCAL nPosicao

    SET PROCEDURE TO estoque_lib.prg

    DO WHILE .T.

        nOpcao := Menu()

        DO CASE
            CASE nOpcao == 1
                CadastrarProduto(aProdutos)

            CASE nOpcao == 2
                ListarProdutos(aProdutos)

            CASE nOpcao == 3
                EntradaEstoque(aProdutos)

            CASE nOpcao == 4
                SaidaEstoque(aProdutos)

            CASE nOpcao == 5
                cCodigo := AllTrim( LerTexto( "Codigo do produto: " ) )
                nPosicao := BuscarProduto(aProdutos, cCodigo)

                IF nPosicao > 0
                    QOut( "Produto encontrado na posicao " + AllTrim( Str( nPosicao ) ) )
                ELSE
                    QOut( "Produto nao encontrado." )
                ENDIF

            CASE nOpcao == 6
                RelatorioEstoque(aProdutos)

            CASE nOpcao == 0
                EXIT

            OTHERWISE
                QOut( "Opcao invalida." )
        ENDCASE

    ENDDO

    QOut( "Fim do programa." )

RETURN NIL
