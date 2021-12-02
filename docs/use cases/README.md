### Діаграми прецедентів


**Загальна схема**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  actor Користувач
  usecase "Зареєструватися" as REG
  usecase "Авторизуватися" as AUTH
  
  Користувач -u-> AUTH
  Користувач -u-> REG

  
  actor Менеджер
  usecase "Редагувати \nпроекти" as EDPROJ #palegreen
  usecase "Редагувати зав- \nдання тімлідів" as EDTLTASK #palegreen

  Менеджер --> EDPROJ
  Менеджер --> EDTLTASK
  
  
  actor Тімлід
  usecase "Редагувати арте- \nфакти проекту" as EDART #palegreen
  usecase "Редагувати зав- \nдання розробників" as EDDEVTASK #palegreen

  Тімлід --> EDART
  Тімлід --> EDDEVTASK
  
  
  actor Розробник
  usecase "Переглядати завдання" as VIEWDEVTASK #palegreen

  Розробник --> VIEWDEVTASK
  
  
  Менеджер -u-|> Користувач
  Тімлід -u-|> Користувач
  Розробник -u-|> Користувач
  
@enduml

</center>


**Project Manager**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  actor Менеджер
  usecase "Редагувати \nпроекти" as EDPROJ #palegreen
  usecase "Редагувати зав- \nдання тімлідів" as EDTASK #palegreen


  Менеджер -r-> EDPROJ
  
  usecase "Створити проект" as CRPROJ
  usecase "Змінити властивості \nпроекту" as EDPROJPROP
  usecase "Видалити проект" as DELPROJ
  
  CRPROJ ..>"<<extends>>" EDPROJ
  EDPROJPROP ..>"<<extends>>" EDPROJ
  DELPROJ ..>"<<extends>>" EDPROJ


  Менеджер -l-> EDTASK
  
  usecase "Створити завдання" as CRTLTASK
  usecase "Змінити \nзавдання" as EDTLTASK
  usecase "Видалити завдання" as DELTLTASK
  
  CRTLTASK .u.>"<<extends>>" EDTASK
  EDTLTASK .r.>"<<extends>>" EDTASK
  DELTLTASK .d.>"<<extends>>" EDTASK
  
  
@enduml

</center>


**Teamlead**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  actor Тімлід
  usecase "Редагувати \nпроекти" as EDPROJ #palegreen
  usecase "Редагувати зав- \nдання тімлідів" as EDTLTASK #palegreen


  Тімлід -r-> EDPROJ
  
  usecase "Створити проект" as CRPROJ
  usecase "Змінити властивості \nпроекту" as EDPROJPROP
  usecase "Видалити проект" as DELPROJ
  
  CRPROJ ..>"<<extends>>" EDPROJ
  EDPROJPROP ..>"<<extends>>" EDPROJ
  DELPROJ ..>"<<extends>>" EDPROJ


  Тімлід -l-> EDTLTASK
  
  usecase "Створити завдання" as CRDEVTASK
  usecase "Змінити властивості \nзавдання" as EDDEVTASK
  usecase "Видалити завдання" as DELDEVTASK

  CRDEVTASK ..>"<<extends>>" EDTLTASK
  EDDEVTASK ..>"<<extends>>" EDTLTASK
  DELDEVTASK ..>"<<extends>>" EDTLTASK

@enduml

</center>


**Developer**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

  actor Розробник
  usecase "Переглядати \nзавдання" as VIEWTASKS #palegreen

  Розробник -d-> VIEWTASKS
  
  usecase "Переглянути вміст \nзавдання" as VIEWDEVTASK
  usecase "Надіслати завдання \nна перевірку" as SENDREVIEWTASK
  
  VIEWTASKS ..>"<<extends>>" VIEWDEVTASK
  VIEWTASKS ..>"<<extends>>" SENDREVIEWTASK
  
  
@enduml

</center>


### Сценарії використання

**AUTH_01**


<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> AUTH_01

        <font color=000 size=16><b>НАЗВА:</b> Зареєструватись у системі
        <font color=000 size=16><b>УЧАСНИКИ:</b> Користувач, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>1.Користувач не зареєстрований у системі.

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b>  Реєстрація користувача у системі.

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>AUTH_EX_01.01

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає
        кнопку "Зареєструватися";
    |Система|
        :Система надає реєстраційну форму користувачеві;
    |Користувач|
        :Користувач отримує реєстраційну форму;
        
        :Користувач відкриває реєстраційну форму;

        :Користувач заповнює реєстраційну форму;
        
        :Користувач підтверджує реєстрацію;
        

       

    |Система|
        :Система перевіряє наявність облікового запису користувача;
        note right #ffaaaa
        <b>Можлива</b>
        <b>AUTH_EX_01.01</b>
        end note

        :Система створює новий обліковий запис;

        :Система надає дані облікового запису користувачеві;

        

    |Користувач|
        stop;

@enduml

</center>


**AUTH_02**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> AUTH_02

        <font color=000 size=16><b>НАЗВА:</b> Авторизуватись у системі
        <font color=000 size=16><b>УЧАСНИКИ:</b> Користувач, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>1.Користувач не авторизувався у системі.
        <font color=000 size=16>2.Користувач є зареєстрованим у системі.

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b>  Авторизація користувача у системі.

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>AUTH_EX_02.01
        <font color=000 size=16>AUTH_EX_02.02

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає
        кнопку "Авторизуватися";
    |Система|
        :Система надає авторизаційну форму користувачеві;
    |Користувач|
        :Користувач отримує авторизаційну форму;
        
        :Користувач відкриває авторизаційну форму;

        :Користувач заповнює авторизаційну форму;
        
        :Користувач підтверджує авторизацію;

    |Система|
        :Система перевіряє наявність облікового запису користувача;
        note right #ffaaaa
        <b>Можлива</b>
        <b>AUTH_EX_02.01</b>
        end note

        :Система перевіряє отримані авторизаційні дані;
        note right #ffaaaa
        <b>Можлива</b>
        <b>AUTH_EX_02.02</b>
        end note

        :Система надає доступ користувачеві до облікового запису;

        

    |Користувач|
        stop;

@enduml

</center>


**PM_01**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> PM_01

        <font color=000 size=16><b>НАЗВА:</b> Створити проект
        <font color=000 size=16><b>УЧАСНИКИ:</b> Менеджер проектів, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b> Відсутні

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b>  Створення проекту.

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>PM_EX_01.01

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає кнопку "Створити проект";
    |Система|
        :Система надає форму реєстрації
        проекту користувачеві;
    |Користувач|
        :Користувач отримує форму реєстрації проекту;
        :Користувач відкриває форму реєстрації проекту;
        :Користувач заповнює інформацію проекту;
        :Користувач обирає параметри проекту;

        :Користувач зберігає введену інформацію";

    |Система|
        :Система перевіряє введені дані;
        note right #ffaaaa
        <b>Можлива</b>
        <b>PM_EX_01.01</b>
        end note
        :Система реєструє новий проект;

        :Система повідомляє користувача
        про успішно створений проект;
        
    |Користувач|
        :Користувач закриває
        повідомлення від системи;
        stop;

@enduml

</center>


**PM_02**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> PM_02

        <font color=000 size=16><b>НАЗВА:</b> Додати завдання проекту
        <font color=000 size=16><b>УЧАСНИКИ:</b> Менеджер проектів, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>Наявність проекту

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Додавання завдань до проекту

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>PM_EX_02.01
        
        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає
        кнопку "Додати завдання";
        
    |Система|
        :Система надає форму користувачеві
        для додавання завдань;
        
    |Користувач|
        :Користувач отримує форму для додавання завдань;
        
        :Користувач відкриває
        форму для додавання завдань;

        :Користувач заповнює 
        інформацію про завдання;

        :Користувач зберігає введену
        інформацію про завдання;

    |Система|
        :Система перевіряє
        інформацію про завдання;
        note right #ffaaaa
        <b>Можлива</b>
        <b>PM_EX_02.01</b>
        end note
        :Система додає завдання до проекту;

        :Система надсилає
        користувачу повідомлення про
        додавання завдання до проекту;

    |Користувач|

        :Користувач закриває
        повідомлення від системи;
        stop;


@enduml

</center>


**PM_03**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> PM_03

        <font color=000 size=16><b>НАЗВА:</b> Призначити завдання
        <font color=000 size=16><b>УЧАСНИКИ:</b> Менеджер проектів, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>Наявність створених завдань

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Призначення існуючих завдань обраному тімліду

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>PM_EX_03.01
        
        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає
        кнопку "Призначити тімліда";
        
    |Система|
        :Система надає форму користувачеві
        для призначення тімліда;
        
    |Користувач|
        :Користувач отримує форму для призначення тімліда;
        
        :Користувач відкриває
        форму для призначення тімліда;

        :Користувач співвідносить завдання до тімліда;

        :Користувач зберігає введену
        інформацію;

    |Система|
        :Система перевіряє
        введену інформацію;
        note right #ffaaaa
        <b>Можлива</b>
        <b>PM_EX_03.01</b>
        end note
        :Система записує зміни;

        :Система надсилає
        користувачу повідомлення
        про успішно внесені зміни;

    |Користувач|
        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>


**PM_04**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> PM_04

        <font color=000 size=16><b>НАЗВА:</b> Переглянути прогрес проекту
        <font color=000 size=16><b>УЧАСНИКИ:</b> Менеджер проектів, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>Наявність проекту

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Відображення прогресу виконання проекту у відсотках

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>Відсутні
        
        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає
        кнопку "Проекти";
    |Система|   
        :Система відправляє користувачу
        список проектів;
    |Користувач|
        
        :Користувач обирає
        потрібний проект;
        
    |Система|
        :Система знаходить обраний 
        проект;
        :Система визначає прогрес
        виконання проекту;
        :Система відображає прогрес
        виконання проекту користувачу;
        
    |Користувач|
        stop;

@enduml

</center>


**LEAD_01**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> LEAD_01

        <font color=000 size=16><b>НАЗВА:</b> Додати артефакти до завдання
        <font color=000 size=16><b>УЧАСНИКИ:</b> Тімлід, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>Наявність створених завдань

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Додавання артефактів проекту до завдання

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>LEAD_EX_01.01
        
        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає кнопку
        "Додати артефакти до завдання";
        
    |Система|
        :Система надає форму користувачеві для
        співвідношення завдання та артефактів;
        
    |Користувач|
        :Користувач вводить
        інформацію про артефакти;

        :Користувач зберігає
        введену інформацію;

    |Система|
        :Система перевіряє
        введену інформацію;
        note right #ffaaaa
        <b>Можлива</b>
        <b>LEAD_EX_01.01</b>
        end note
        :Система записує зміни;

        :Система надсилає
        користувачу повідомлення
        про успішно внесені зміни;

    |Користувач|
        :Користувач завершує
        взаємодію;
        stop;


@enduml

</center>


**LEAD_02**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>


@startuml

    left header

        <font color=000 size=18><b>ID:</b> LEAD_02

        <font color=000 size=16><b>НАЗВА:</b> Виставити дедлайни задач
        <font color=000 size=16><b>УЧАСНИКИ:</b> Тімлід, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b> Наявність створених завдань

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Додавання термінів виконання задач

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b>
        <font color=000 size=16>LEAD_EX_02.01 Задано некоректний дедлайн

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає 
        кнопку "Задачі";
        
    |Система|
        :Система надсилає користувачеві
        список задач;
        
    |Користувач|
        :Користувач обирає потрібну
        задачу;

        :Користувач натискає
        кнопку "Змінити дедлайн";
        
    |Система|
        :Система надсилає користувачеві
        календар дедлайнів;
        
    |Користувач|
        :Користувач обирає дедлайн
        для задачі;
        
        :Користувач зберігає
        введену інформацію;

    |Система|
        :Система перевіряє
        правильність надісланих даних;
        note right #ffaaaa
        <b>Можлива</b>
        <b>LEAD_EX_02.01</b>
        end note

        :Система записує зміни;

    |Користувач|
        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>


**LEAD_03**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> LEAD_03

        <font color=000 size=16><b>НАЗВА:</b> Призначити завдання розробникам
        <font color=000 size=16><b>УЧАСНИКИ:</b> Тімлід, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b> Наявність створених завдань

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Призначене завдання розробникам

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b> Відсутні

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає 
        кнопку "Задачі";
        
    |Система|
        :Система надсилає користувачеві
        список задач;
        
    |Користувач|
        :Користувач обирає потрібну
        задачу;
        
        :Користувач співвідносить
        задачу та розробників;
        
        :Користувач зберігає
        введену інформацію;

    |Система|
        :Система записує зміни;

    |Користувач|
        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>


**LEAD_04**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>


@startuml

    left header

        <font color=000 size=18><b>ID:</b> LEAD_04

        <font color=000 size=16><b>НАЗВА:</b> Перевірити завдання
        <font color=000 size=16><b>УЧАСНИКИ:</b> Тімлід, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b> Завдання знаходиться у стані REVIEW

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Перевірене завдання

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b> Відсутні

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натискає 
        кнопку "Задачі";
        
    |Система|
        :Система надсилає користувачеві
        список задач;
        
    |Користувач|
        :Користувач обирає потрібну
        задачу;
        
        :Користувач заносить
        результат перевірки;

    |Система|
        :Система записує зміни;

    |Користувач|
        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>


**DEV_01**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> DEV_01

        <font color=000 size=16><b>НАЗВА:</b> Отримати завдання
        <font color=000 size=16><b>УЧАСНИКИ:</b> Розробник, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>1.Завдання створено.
        <font color=000 size=16>2.Завдання призначено розробнику.

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Завдання розробника у статусі виконання.

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b> Відсутні

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач обирає потрібне 
        завдання;

    |Система|
        :Система знаходить обране 
        завдання;

        :Система позначає завдання
        як прийняте;
        
        :Система відображує, що 
        завдання у статусі виконання;

    |Користувач|
        :Користувач бачить, що 
        завдання відображується 
        у статусі виконання;

        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>


**DEV_02**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> DEV_02

        <font color=000 size=16><b>НАЗВА:</b> Переглянути вміст задачі
        <font color=000 size=16><b>УЧАСНИКИ:</b> Розробник, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b>
        <font color=000 size=16>1.Завдання створено.
        <font color=000 size=16>2.Завдання має зміст.

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Відображення змісту задачі користувачеві.

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b> Відсутні

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач обирає потрібне 
        завдання;

    |Система|
        :Система знаходить обране 
        завдання;

        :Система відображує, всю 
        інформацію про задачу;

    |Користувач|
        :Користувач бачить відображення 
        інформації про задачу;
        
        :Користувач ознайомлюється
        зі змістом задачі;

        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>


**DEV_03**

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

@startuml

    left header

        <font color=000 size=18><b>ID:</b> DEV_03

        <font color=000 size=16><b>НАЗВА:</b> Відправити завдання на перевірку
        <font color=000 size=16><b>УЧАСНИКИ:</b> Розробник, Система

        <font color=000 size=16><b>ПЕРЕДУМОВИ:</b> Розробником додано рішення до завдання.

        <font color=000 size=16><b>РЕЗУЛЬТАТ:</b> Завдання розробника у статусі перевірки.

        <font color=000 size=16><b>ВИКЛЮЧНІ СИТУАЦІЇ:</b> DEV_EX_03.01 Розробник не вніс зміни у артефакти завдання

        <font color=000 size=16><b>ОСНОВНИЙ СЦЕНАРІЙ:</b>

    end header

    |Користувач|
        start
        :Користувач натикає кнопку
        "Перевірка";

    |Система|
        :Система надсилає користувачеві 
        форму перевірки завдання;
    
    |Користувач|
        :Користувач заповнює форму 
        даними;
        
        :Користувач натискає кнопку
        "Відправити запит на перевірку";


    |Система|
        :Система знаходить обране 
        завдання;
        note right #ffaaaa
        <b>Можлива</b>
        <b>DEV_EX_03.01</b>
        end note

        :Система змінює статус завдання
        на у статусі перевірки;
        
        :Система відображує, що 
        завдання у статусі перевірки;

    |Користувач|
        :Користувач бачить, що 
        завдання відображується 
        у статусі перевірки;

        :Користувач завершує
        взаємодію;
        stop;

@enduml

</center>
