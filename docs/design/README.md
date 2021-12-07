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
  entity Project.author <<NUMBER>> #ffffff

  entity User <<ENTITY>>
  entity User.login <<TEXT>> #ffffff
  entity User.password <<TEXT>> #ffffff
  entity User.createdAt <<DATE>> #ffffff
  entity User.role <<TEXT>> #ffffff
  
  entity Plan <<ENTITY>>
  entity Plan.description <<TEXT>> #ffffff
  entity Plan.project <<NUMBER>> #ffffff
  entity Plan.teamlead <<NUMBER>> #ffffff

  entity Task <<ENTITY>>
  entity Task.title <<TEXT>> #ffffff
  entity Task.description <<TEXT>> #ffffff
  entity Task.deadline <<DATE>> #ffffff
  entity Task.state <<TEXT>> #ffffff

  entity Assignee <<ENTITY>>
  entity Assignee.task <<NUMBER>> #ffffff
  entity Assignee.developer <<NUMBER>> #ffffff

  entity TaskArtifact <<ENTITY>>
  entity TaskArtifact.task <<NUMBER>> #ffffff
  entity TaskArtifact.artifact <<NUMBER>> #ffffff

  entity Artifact <<ENTITY>>
  entity Artifact.fileKey <<TEXT>> #ffffff


  Project.name -r-* Project
  Project.author -d-* Project

  User.login -d-* User
  User.password -d-* User
  User.createdAt -d-* User
  User.role -u-* User

  Plan.description -u-* Plan
  Plan.project -u-* Plan
  Plan.teamlead -r-* Plan

  Task.title -u-* Task
  Task.description -r-* Task
  Task.deadline -u-* Task
  Task.state -u-* Task

  Assignee.task -d-* Assignee
  Assignee.developer -d-* Assignee

  TaskArtifact.task -l-* TaskArtifact
  TaskArtifact.artifact -l-* TaskArtifact

  Artifact.fileKey -l-* Artifact


  Project "0,*" -r- "1,1" User
  Project "1,1" -d- "0,*" Plan
  Plan "0,1" -u- "0,1" User
  User "1,1" -r- "0,*" Task
  User "1,1" -r- "0,*" Assignee
  Assignee "0,*" -d- "1,1" Task
  Task "1,1" -r- "0,*" TaskArtifact


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

Тут буде реляційна схема

