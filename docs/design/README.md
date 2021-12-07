# Проєктування бази даних

## Модель бізнес-об'єктів

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

  @startuml
  
  
  
  @enduml

</center>

## ER-модель

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

  @startuml
  
  entity Project <<ENTITY>> {
      name: TEXT
      author: NUMBER
  }

  entity User <<ENTITY>> {
      login: TEXT
      password: TEXT
      createdAt: DATE
      role: TEXT
  }

  entity Plan <<ENTITY>> {
      description: TEXT
      project: NUMBER
      teamlead: NUMBER
  }

  entity Task <<ENTITY>> {
      title: TEXT
      description: TEXT
      deadline: DATE
      state: TEXT
  }

  entity Assignee <<ENTITY>> {
      task: NUMBER
      developer: NUMBER
  }

  entity TaskArtifact <<ENTITY>> {
      task: NUMBER
      artifact: NUMBER
  }

  entity Artifact <<ENTITY>> {
      fileKey: TEXT
  }
  
  Project "0,*" -r- "1,1" User
  Project "1,1" -d- "0,*" Plan
  Plan "0,1" -u- "0,1" User
  User "1,1" -- "0,*" Task
  User "1,1" -r- "0,*" Assignee
  Assignee "0,*" -- "1,1" Task
  Task "1,1" -- "0,*" TaskArtifact
  TaskArtifact "0,*" -- "1,1" Artifact

  @enduml

</center>

## Реляційна схема



