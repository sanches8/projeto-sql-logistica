# Banco de Dados — Anotações

> Data: 28/06/2026

---

## Tipos de dados

### Valores de texto

- **CHAR**: texto de comprimento **fixo** (1 a 255 caracteres)
- **VARCHAR**: texto de comprimento **variável** (1 a 255 caracteres)
- **TEXT**: texto longo

### Valores numéricos

- **INT**: valor numérico inteiro
- **FLOAT**: valor numérico fracionado

### Valores de data e hora

- **DATE**: data
- **TIME**: hora
- **DATETIME**: data e hora

---

## CHAR e VARCHAR

- **CHAR**: quando usado, aloca um valor fixo na memória para salvar a informação. Se a quantidade de posições for fixa na memória, mesmo que eu salve algo com um tamanho menor que o tamanho fixo, o número de posições ainda continuará sem alterações. EX: se eu adicionar 10 bytes (espaços) no banco, mas digitar apenas 5 caracteres, o banco ainda salvará os 10 caracteres. Útil quando há strings de tamanho conhecido, como sexo, unidade federativa.

- **VARCHAR**: tamanho é variável, ou seja, o número de posições se altera de acordo com o número de caracteres digitados. Se eu criar um VARCHAR de 20 caracteres, mas digitar apenas 10, o espaço na memória apenas salvará os 10 caracteres, não deixando em branco os 10 restantes.

---

## Divisões da linguagem SQL

- **DDL** (Data Definition Language): grupo de definição dos dados. Comandos: `CREATE`, `DROP`
- **DML** (Data Manipulation Language): `INSERT`, `UPDATE`, `DELETE`
- **DQL** (Data Query Language): `SELECT`

---

## Operadores úteis

**BETWEEN**: trabalha com intervalos de números e datas.
```sql
-- EX: idade entre 18 e 21
WHERE age BETWEEN 18 AND 21
```

**IN**: realiza comparações dentro de uma lista de possibilidades.
```sql
WHERE status IN ('ativo', 'pendente')
```

**LIKE**: permite realizar filtros com base em uma pesquisa de caracteres dentro de uma coluna textual. É case insensitive — `%maria%` também retorna "Maria" e variações.

- `%` — indica que pode haver a existência de um ou mais caracteres de qualquer conjunto no texto
- `_` — representa exatamente um caractere em uma posição específica

```sql
-- Retorna tudo que terminar com 'a'. Ex: Maria
WHERE first_name LIKE '%a'

-- Retorna qualquer registro que tiver 'r' em qualquer posição. Ex: Arrigo, Marcelo
WHERE customer_name LIKE '%r%'

-- Retorna qualquer texto que tenha "atricia" e UM caractere antes, apenas
WHERE first_name LIKE '_atricia'

-- Seleciona registros que terminem com um caractere depois do 'e', mas pode ter qualquer caractere antes
WHERE home_terminal LIKE '%e_'
```

---

## Normalização de dados

Série de conjuntos e regras que são aplicadas no banco de dados para evitar redundância, otimizar resultados e garantir integridade de dados. Existem "etapas" para normalizar uma tabela, ou seja, regras necessárias para que uma tabela seja considerada na primeira, segunda, terceira forma normal.

### Regras da 1ª Forma Normal (1FN)

- Toda tabela precisa de pelo menos uma coluna que identifique os registros de forma única.
- Todas as colunas de uma tabela devem ser atômicas: campos multivalorados devem ser transformados em uma nova tabela.
- Campos compostos devem ser decompostos em colunas ou convertidos em outra tabela.

### Primary Key

Atributo ou conjunto de atributos que identifica de forma única um registro em uma tabela.

- **Artificial**: não são relacionadas a regras de negócio, apenas têm a função de identificar os registros (como números sequenciais). Chaves naturais podem mudar muito — como o CPF, que pode sempre mudar.
- **AUTO_INCREMENT**: serve para que o valor de um campo seja automaticamente inserido toda vez que se cria um novo registro.
