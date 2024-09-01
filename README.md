## Comandos

### Inicio del servidor

```zsh
rails server
```

### Crear modelo desde terminal

```zsh
rails generate model <ModelName> <atributos>
```

#### Ejemplo:

```zsh
rails generate model Pet name:string breed:string
```

<br>
Siempre que se crea un modelo con una migracion de bd con el comando anterior es necesario hacer la migracion

```zsh
rails db:migrate
```

### Modelo vista control desde consola

```zsh
rails g scaffold < Modelo > < Atributos >
```

Ejemplo: Como gestionar el concepto de libro en la app, esto crea todo el crud, y una vista basica para la creacion,etc

```zsh
rails g scaffold Book title:string author:string description:text isbn:string pages_count:integer
```

### Consola para interactuar con rails

```zsh
rails console
```

<br>
por ejemplo si quiero crear algo dentro de mi base de datos de pet creada anterior mente puedo entrar a la consola y correr:

```zsh
Pet.create name:"Lulu", breed: "poodle"
```

## Credenciales

Rails maneja sus propias credenciales en un archivo encriptado en config/credencials.yml.enc, para editarlo toca usar:

```zsh
EDITOR=nano rails credentials:edit
```

Si quiero ver la info al momento de guardar voy a la consola de rails y escribo

```zsh
Rails.application.credentials.<variable>
```
