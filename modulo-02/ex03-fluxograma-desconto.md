---
config:
  layout: elk
---

flowchart TD
Inicio([Início])
LerValor[Ler valor da compra]
Decisao{Valor > 100?}
CalculoComDesc[Desconto = Valor × 0.10<br/>Valor Final = Valor - Desconto]
SemDesc[Valor Final = Valor]
Exibir[Exibir Valor Final]
Fim([Fim])

    Inicio --> LerValor
    LerValor --> Decisao
    Decisao -->|Sim| CalculoComDesc
    Decisao -->|Não| SemDesc
    CalculoComDesc --> Exibir
    SemDesc --> Exibir
    Exibir --> Fim

    classDef startEnd fill:#f0fdf4,stroke:#4ade80
    classDef process fill:#eef2ff,stroke:#818cf8
    classDef decision fill:#fff7ed,stroke:#fb923c
    classDef output fill:#f0f9ff,stroke:#38bdf8

    class Inicio,Fim startEnd
    class LerValor,CalculoComDesc,SemDesc process
    class Decisao decision
    class Exibir output
