


# DESAFIO Datainfor

Projeto de cadastro de Software desenvolvido com Java Web, JSF e Maven.

## Características

- CRUD
- Design Patterns
- Interface
- DAO
- Bean
- Entidade
- Filtro
- DataTables
- Login
- Responsivo

## Requisitos

- NetBeans 8.2
- Java JDK 1.8
- Maven 3.5.4
- TomCat 9.0.12
- PostgreSQL 10

## Tecnologias

- Java
- JPA
- JSF
- Maven
- Jetty
- CSS e SCSS
- JS
- PrimeFaces
- PostgreSQL

## Instalação



Crie o banco de dados com o nome cadastro_software em seu PostgreSQL. Você pode localizar o dump cadastro_software.sql na raiz e importar com: 

```

$ psql -U <username> 

postgres> create database cadastro_software;
postgres> \q

$ pg_restore -U <username> -d cadastro_software -1 cadastro_software.sql

```

Após você finalizar a configuração, abra o prompt de comando (cmd) e digite: <br>

```
mvn jetty:run
```

Depois abra no seu navegador com o seguinte endereço:<br>

http://localhost:8080/cadastro-software/app/index.jsf

## Repositório Maven

Localizar dependências do Maven. <br>
https://mvnrepository.com/

## Demonstração 

Para ver o sistema rodando, basta acessar o link abaixo: <br>
https://cadastro-software.herokuapp.com/

- Login:
	- Email: admin@admin.com
	- Senha: admin123


