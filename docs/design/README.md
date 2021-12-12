# Проєктування бази даних

## Модель бізнес-об'єктів

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

  @startuml

  entity Project <<ENTITY>>
  entity Project.name <<TEXT>> #ffffff

  entity User <<ENTITY>>
  entity User.login <<TEXT>> #ffffff
  entity User.password <<TEXT>> #ffffff
  entity User.createdAt <<DATE>> #ffffff

  entity Collaboration <<ENTITY>>

  entity Role <<ENTITY>>
  entity Role.name <<TEXT>> #ffffff

  entity Task <<ENTITY>>
  entity Task.title <<TEXT>> #ffffff
  entity Task.description <<TEXT>> #ffffff
  entity Task.deadline <<DATE>> #ffffff

  entity Action <<ENTITY>>
  entity Action.comment <<TEXT>> #ffffff
  entity Action.createdAt <<DATE>> #ffffff

  entity State <<ENTITY>>
  entity State.name <<TEXT>> #ffffff

  entity Assignee <<ENTITY>>

  entity Attachment <<ENTITY>>
  entity Attachment.role <<TEXT>> #ffffff
  entity Attachment.comment <<TEXT>> #ffffff

  entity Artifact <<ENTITY>>
  entity Artifact.url <<TEXT>> #ffffff


  Project.name -r-* Project

  User.login -u-* User
  User.password -u-* User
  User.createdAt -r-* User

  Role.name -l-* Role

  Task.title -d-* Task
  Task.description -u-* Task
  Task.deadline -l-* Task

  Action.comment -u-* Action
  Action.createdAt -r-* Action

  State.name -u-* State

  Attachment.role -u-* Attachment
  Attachment.comment -u-* Attachment

  Artifact.url -u-* Artifact


  Collaboration "0,*" -l-> "1,1" Project
  Collaboration "0,*" -d-> "1,1" User
  Collaboration "0,*" -r-> "1,1" Role

  User "1,1" <-- "0,*" Task : owner
  User "1,1" <- "0,*" Assignee : developer
  Assignee "0,*" --> "1,1" Task

  Action "0,*" --> "1,1" State
  Action "0,*" -u-> "1,1" User : actor
  Action "0,*" --> "0,1" Artifact : subject_artifact

  Task "1,1" <-- "0,*" Attachment
  Task "0,1" <-- "0,*" Action : subject_task
  Attachment "0,*" --> "1,1" Artifact

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
  }

  entity User <<ENTITY>> {
      login: TEXT
      password: TEXT
      createdAt: DATE
  }

  entity Collaboration <<ENTITY>> { }
    
  entity Role <<ENTITY>> {
    name: TEXT
  }
  
  entity Task <<ENTITY>> {
      title: TEXT
      description: TEXT
      deadline: DATE
  }
  
  entity Action <<ENTITY>> {
    comment: TEXT
    createdAt: DATE
  }

  entity State <<ENTITY>> {
    name: TEXT (enum: "TODO",\n"PROCESS", "REVIEW", "DONE")
  }

  entity Assignee <<ENTITY>> { }

  entity Attachment <<ENTITY>> {
      role: TEXT
      comment: TEXT
  }

  entity Artifact <<ENTITY>> {
      url: TEXT
  }


  Collaboration "0,*" -l-> "1,1" Project
  Collaboration "0,*" --> "1,1" User
  Collaboration "0,*" -> "1,1" Role

  User "1,1" <-- "0,*" Task : owner
  User "1,1" <- "0,*" Assignee : developer
  Assignee "0,*" --> "1,1" Task

  Action "0,*" --> "1,1" State
  Action "0,*" -u-> "1,1" User : actor
  Action "0,*" --> "0,1" Artifact : subject_artifact

  Task "1,1" <-- "0,*" Attachment
  Task "0,1" <-- "0,*" Action : subject_task
  Attachment "0,*" --> "1,1" Artifact
  
  @enduml

</center>

## Реляційна схема

<center style="
    border-radius:4px;
    border: 1px solid #cfd7e6;
    box-shadow: 0 1px 3px 0 rgba(89,105,129,.05), 0 1px 1px 0 rgba(0,0,0,.025);
    padding: 1em;"
>

![Alt text](./eerd-cropped.svg)

</center>
