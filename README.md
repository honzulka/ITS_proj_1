# ITS Projekt 1

* **Autor:** Jan Černoch (xcernoj00)
* **Datum:** 2026-04-05

## Matice pokrytí artefaktů

Čísla testů jednoznačně identifikují scénář v souborech `.feature`.

| Page          | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| ------------- | - | - | - | - | - | - | - | - | - | -- |
| Teams page    | x |   |   |   |   |   |   |   |   |    |
| Members page  |   | x | x | x | x |   |   |   |   |    |
| Member detail |   |   | x |   | x |   |   |   |   |    |
| Users page    |   |   |   |   |   | x | x | x | x |    |
| User detail   |   |   |   |   |   |   | x | x |   |    |
| Payments page |   |   |   |   |   |   |   |   |   | x  |

## Matice pokrytí aktivit

| Activities            | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| --------------------- | - | - | - | - | - | - | - | - | - | -- |
| Create team           | x |   |   |   |   |   |   |   |   |    |
| Create member         |   | x |   |   |   |   |   |   |   |    |
| Assign member to team |   |   | x |   |   |   |   |   |   |    |
| Filter members        |   |   |   | x |   |   |   |   |   |    |
| Edit member           |   |   |   |   | x |   |   |   |   |    |
| Create user           |   |   |   |   |   | x |   |   |   |    |
| Assign user to member |   |   |   |   |   |   | x |   |   |    |
| Change user role      |   |   |   |   |   |   |   | x |   |    |
| Permission check      |   |   |   |   |   |   |   |   | x |    |
| Create payment        |   |   |   |   |   |   |   |   |   | x  |
| View payments         |   |   |   |   |   |   |   |   |   |    |
| Multiple payments     |   |   |   |   |   |   |   |   |   |    |

## Matice Feature-Test

| Feature file       | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
| ------------------ | - | - | - | - | - | - | - | - | - | -- |
| membership.feature | x | x | x | x | x |   |   |   |   |    |
| users.feature      |   |   |   |   |   | x | x | x | x |    |
| payments.feature   |   |   |   |   |   |   |   |   |   | x  |

