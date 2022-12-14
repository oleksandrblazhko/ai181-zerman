| #    | Опис                                        | L1 | L2 | L3 | CWE | NIST § |
|------|---------------------------------------------|----|----|----|-----|--------|
|2.5.1 |Переконайтеся, що згенерований системою секрет початкової активації або відновлення не надсилається користувачеві відкритим текстом. (C6) | ✓ | ✓ | ✓ |640|5.1.1.2|
|2.5.2 |Підказки для перевірки пароля або аутентифікація на основі знань (так звані "секретні питання") відсутні. | ✓ | ✓ | ✓ |640|5.1.1.2|
|2.5.3 |Перевірка пароля відновлення облікових даних жодним чином не розкриває поточний пароль. (C6) | ✓ | ✓ | ✓ |640|5.1.1.2|
|2.5.4 |Переконайтеся, що загальні облікові записи або облікові записи за замовчуванням відсутні (наприклад, "root", "admin " або"sa") | ✓ | ✓ | ✓ | 16 |5.1.1.2/A.3|
|2.5.5 |Переконайтеся, що при зміні або заміні фактора аутентифікації користувач отримує повідомлення про цю подію. | ✓ | ✓ | ✓ | 304|6.1.2.3|
|2.5.6 |Перевірте забутий пароль та інші шляхи відновлення використовуйте безпечний механізм відновлення, такий як OTP на основі часу (TOTP) або інший програмний токен, мобільний push або інший механізм автономного відновлення. (C6) | ✓ | ✓ | ✓ |640|5.1.1.2|
|2.5.7 |Переконайтеся, що у випадку втрати параметрів OTP або багатофакторної автентифікації Перевірка автентичності виконується на тому ж рівні, що і при реєстрації. |  | ✓ | ✓ | 308|6.1.2.3|

# C6 Опис
Цифрова ідентифікація-це унікальне уявлення користувача (або іншого суб'єкта), коли він здійснює онлайн-транзакцію. Аутентифікація-це процес підтвердження того, що фізична або юридична особа є тим, за кого себе видає. Управління сеансом-це процес, за допомогою якого сервер підтримує стан автентифікації користувачів, щоб користувач міг продовжувати використовувати систему без повторної автентифікації. Спеціальна публікація NIST 800-63B: посібник з цифрової ідентифікації (аутентифікація та управління життєвим циклом) містить надійні рекомендації щодо впровадження елементів керування цифровою ідентифікацією, аутентифікацією та сеансами.

# CWE 640

## Опис
Програмне забезпечення містить механізм, який дозволяє користувачам відновлювати або змінювати свої паролі, не знаючи оригінального пароля, але цей механізм слабкий.
## Розширений опис
Зазвичай програма має механізм, який надає користувачеві можливість отримати доступ до свого облікового запису, якщо він забуде свій пароль. Дуже часто механізм відновлення пароля слабкий, що підвищує ймовірність того, що особа, яка не є законним користувачем системи, зможе отримати доступ до облікового запису цього користувача. Слабкі схеми відновлення пароля повністю підривають надійну схему автентифікації пароля.
Ця слабкість може полягати в тому, що таємне запитання надто легко вгадати або знайти на нього відповідь (наприклад, тому що запитання надто поширене або відповіді можна знайти за допомогою соціальних мереж). Або в коді механізму відновлення пароля може бути слабка реалізація, яка може, наприклад, змусити систему надіслати новий пароль електронною поштою на обліковий запис електронної пошти, відмінний від облікового запису користувача. Частота скидання пароля може не обмежуватися, щоб зловмисник міг відмовити законному користувачеві в обслуговуванні, якщо зловмисник спробує швидко відновити його пароль. Система може надіслати оригінальний пароль користувачеві замість створення нового тимчасового пароля. Підсумовуючи, функція відновлення пароля, якщо вона не була ретельно розроблена та реалізована, часто може стати найслабшою ланкою системи, якою можна зловживати таким чином, щоб зловмисник міг отримати неавторизований доступ до системи.
## Застосовні платформи
### Мови
Клас: не залежить від мови (поширеність не визначена)
## Загальні наслідки
|Масштаб | Вплив | Ймовірність|
|--------|-------|------------|
|Контроль доступу|Зловмисник може отримати неавторизований доступ до системи, отримавши облікові дані для автентифікації законного користувача.| |
|Доступність| Зловмисник може відмовити в обслуговуванні законних користувачів системи, запустивши атаку грубою силою на механізм відновлення пароля, використовуючи ідентифікатори легальних користувачів.| |
|Інше|Функціональні засоби безпеки системи спрямовані проти системи зловмисником.| |
## Ймовірність виникнення
Висока