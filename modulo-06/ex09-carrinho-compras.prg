FUNCTION Main()
   LOCAL aCarrinho := {}
   LOCAL cNome := ""
   LOCAL cInputPreco := ""
   LOCAL nPreco := 0
   LOCAL cOpcao := ""
   LOCAL nTotal := 0
   LOCAL nI := 0
   LOCAL aItem := {}

   CLS
   QOut("==========================================")
   QOut("        MINI-CARRINHO DE COMPRAS          ")
   QOut("==========================================")
   QOut("")

   // 1. Loop principal para adi├º├úo din├ómica de itens
   DO WHILE .T.
      QOut("--- Adicionar Produto ---")

      // Valida├º├úo do Nome do Produto
      DO WHILE .T.
         ACCEPT "Nome do produto: " TO cNome
         cNome := AllTrim(cNome)

         IF Len(cNome) > 0
            EXIT
         ELSE
            QOut("Erro: O nome do produto nao pode ficar em branco.")
         ENDIF
      ENDDO

      // Valida├º├úo do Pre├ºo
      DO WHILE .T.
         ACCEPT "Preco do produto (R$): " TO cInputPreco
         cInputPreco := AllTrim(cInputPreco)

         IF Len(cInputPreco) > 0
            nPreco := Val(cInputPreco)
            IF nPreco > 0
               EXIT
            ENDIF
         ENDIF

         QOut("Erro: Digite um valor num├®rico maior que zero.")
      ENDDO

      // Insere a estrutura {nome, preco} no carrinho
      AAdd(aCarrinho, { cNome, nPreco })
      QOut("-> Item adicionado com sucesso!")
      QOut("")

      // Pergunta se o usu├írio deseja cadastrar mais um item
      ACCEPT "Deseja adicionar outro produto? (S/N): " TO cOpcao
      cOpcao := Upper(AllTrim(cOpcao))

      IF cOpcao != "S"
         EXIT // Encerra o cadastro de itens
      ENDIF

      QOut("")
   ENDDO

   // 2. Exibi├º├úo da Lista de Itens e Totaliza├º├úo
   CLS
   QOut("==========================================")
   QOut("            RESUMO DA COMPRA              ")
   QOut("==========================================")

   IF Len(aCarrinho) == 0
      QOut("O carrinho esta vazio.")
   ELSE
      // Cabe├ºalho alinhado das colunas
      QOut(PadR("PRODUTO", 28) + PadL("PRECO", 12))
      QOut("------------------------------------------")

      // Varredura dos itens e ac├║mulo do total
      FOR nI := 1 TO Len(aCarrinho)
         aItem := aCarrinho[nI] // Extrai {nome, preco}
         
         // Formata o item alinhando o nome ├á esquerda e o pre├ºo ├á direita
         QOut(PadR(aItem[1], 28) + PadL("R$ " + AllTrim(Transform(aItem[2], "999,999.99")), 12))
         
         nTotal += aItem[2] // Acumula o pre├ºo
      NEXT

      QOut("------------------------------------------")
      QOut(PadR("TOTAL A PAGAR:", 28) + PadL("R$ " + AllTrim(Transform(nTotal, "999,999.99")), 12))
   ENDIF

   QOut("==========================================")
   QOut("")
   WAIT
RETURN NIL