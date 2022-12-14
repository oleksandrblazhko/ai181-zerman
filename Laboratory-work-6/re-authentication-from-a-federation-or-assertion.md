| #    | Опис                                        | L1 | L2 | L3 | CWE | NIST § |
|------|---------------------------------------------|----|----|----|-----|--------|
|3.6.1 |Переконайтеся, що перевіряючі сторони (RP) вказують максимальну автентифікацію час до постачальників облікових даних (CSP) і що CSP повторно автентифікують користувача, якщо він не використовував сеанс у цьому період.|  |  | ✓ |613|7.2.1|
|3.6.2 |Переконайтеся, що постачальники облікових даних (CSP) інформують перевіряючі сторони (RP) останньої події автентифікації, щоб дозволити RP визначити, чи є їм потрібно повторно автентифікувати користувача.|  |  | ✓ |613|7.2.1|

# CWE 613

## Опис
Відповідно до WASC, «недостатня тривалість сеансу — це коли веб-сайт дозволяє зловмиснику повторно використовувати старі облікові дані або ідентифікатори сеансу для авторизації».

## Загальні наслідки
| Масштаб          | Вплив                                          | Ймовірність |
|------------------|------------------------------------------------|-------------|
| Контроль доступу | Технічний вплив: механізм захисту від байпасу. |             |