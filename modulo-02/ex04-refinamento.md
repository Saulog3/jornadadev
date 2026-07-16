# Refinamento sucessivo


Nível 1

Início
   Registrar itens da compra
   Calcular subtotal
   Aplicar desconto se houver cartão fidelidade
   Mostrar total
Fim

Nivel 2

INICIO
    Registrar itens da compra:
    Ler valor do item
    Acumular valor na variável Subtotal

    Calcular subtotal:
    Subtotal ← Soma de todos os itens registrados

    Aplicar desconto:
    Se Cliente possui cartão fidelidade
        Desconto ← Subtotal * 0.05
        TotalAPagar ← Subtotal - Desconto
    Senão
        TotalAPagar ← Subtotal

    Mostrar resultado:
    Escrever "Total a pagar: " + TotalAPagar
FIM