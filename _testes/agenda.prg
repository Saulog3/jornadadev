PROCEDURE Main()
    // Array de registros: {nome, telefone}
    LOCAL aAgenda := {}
    LOCAL nPosicao := 0

    // Adicionando contatos de teste
    AddContato(aAgenda, "Alice", "11 99999-1111")
    AddContato(aAgenda, "Bob", "11 98888-2222")

    // Exibindo a listagem inicial
    ? "=== AGENDA ==="
    ListarContatos(aAgenda)

    // Buscando por um nome (ignorando mai├║sculas/min├║sculas)
    nPosicao := BuscarPorNome(aAgenda, "bob")
    
    IF nPosicao > 0
        ? 'Busca "bob": encontrado na posi├º├úo ' + AllTrim(Str(nPosicao))
    ELSE
        ? 'Busca "bob": n├úo encontrado'
    ENDIF

    ? ""
RETURN

// AddContato(aAgenda, cNome, cFone) -> usa AADD
PROCEDURE AddContato(aAgenda, cNome, cFone)
    AAdd(aAgenda, {cNome, cFone})
RETURN

// ListarContatos(aAgenda) -> percorre com FOR (numerado)
PROCEDURE ListarContatos(aAgenda)
    LOCAL i

    FOR i := 1 TO Len(aAgenda)
        ? AllTrim(Str(i)) + ". " + aAgenda[i][1] + " - " + aAgenda[i][2]
    NEXT
RETURN

// BuscarPorNome(aAgenda, cNome) -> devolve a posi├º├úo (ou 0)
FUNCTION BuscarPorNome(aAgenda, cNome)
    LOCAL i

    FOR i := 1 TO Len(aAgenda)
        // Upper() garante que a busca funcione mesmo se digitar min├║sculo
        IF Upper(aAgenda[i][1]) == Upper(cNome)
            RETURN i
        ENDIF
    NEXT
RETURN 0
