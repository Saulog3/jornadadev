FUNCTION Main()

    LOCAL cNomeFuncionario   := "Saulo Cunha"
    LOCAL nSalarioBruto      := 1500
    LOCAL lAtivo             := .F.
    LOCAL dDataEmissao       := Date()
    LOCAL cCodDepartamento   := "C14"
    
    SET DATE FORMAT TO "DD/MM/YYYY"

    QOUT("Nome do funcionario: " + cNomeFuncionario)
    QOUT("Salario bruto: " + Str( nSalarioBruto, 10, 2))
    QOUT("Funcionario ativo: " + IIF( lAtivo, "Sim", "Nao"))
    QOUT("Data de emissao: " + DTOC( dDataEmissao))
    QOUT("Codigo do departamento: " + cCodDepartamento)

RETURN NIL
