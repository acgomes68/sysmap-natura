# sysmap-natura-test
Avaliação aplicada no processo seletivo da **SysMap** para uma vaga de **Desenvolvedor Fullstack** na **Natura**.
<br /><br />

## Descrição
O projeto envolve a criação de uma **interface Web Responsiva em ReactJS** que liste todos os repositórios públicos de um determinado usuário utilizando a [API pública do próprio GitHub](https://docs.github.com/en/rest) acionada via serviço **RESTfull** desenvolvido em **Node.js**.

Para tal, há a possibilidade da instalação do código e **execução de forma local** ou simplemsmente executá-lo **sem necessidade de instalação** através do endpoint:

https://sysmap-natura.netlify.app/

<br />

## Requisitos
Para que seja realizada a instalação, construção, execução e testes de forma local é importante que exista **acesso direto a Internet (sem VPN)** pois as dependências serão instaladas via download. Além disso, são necessárias as seguintes tecnologias previamente instaladas que devem ser verificadas através do **terminal(Linux/MacOS)** ou **CommandShell/CMD/PowerShell (Windows)**:

- **Git**

    Para confirmar se já está instalado:<br />
```git --version```

    Caso ainda não esteja instalado:<br />
https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git
<br /><br />

- **Make**

    Para confirmar se já está instalado:<br />
    ```make --version```

    Caso ainda não esteja instalado:<br />

    - **Linux:**<br />
```sudo apt-get install build-essential```

    - **Windows**<br />
http://gnuwin32.sourceforge.net/packages/make.htm
<br /><br />

- **Docker:**

    Para confirmar se já está instalado:<br />
```docker --version```

    Caso ainda não esteja instalado:<br />
https://www.docker.com/community-edition#/download


- **Docker-compose**:
Normalmente, ao instalar o Docker, o Compose também é instalado. Para confirmar se já está instalado:<br />
```docker-compose --version```

    Caso ainda não esteja instalado:<br />
https://docs.docker.com/compose/install/
<br /><br />

## Arquitetura
Foi desenvolvida uma arquitetura voltada para **microsserviços** de modo que estejam separados em containers **Docker** que podem ser escalados mediante a demanda necessária. A estrutura básica do **backend** foi desenvolvida em **NodeJS**.

No que tange ao frontend foi criada uma interface em **React** com **Typescript** estilizada de forma semelhante ao próprio **GitHub** e responsável por consumir os serviços citados.

As informações dos repositórios provenientes do **GitHub** é consumida através da chamada de **API** própria de domínio público.
<br /><br />

## Tecnologias:
- **NodeJS**: linguagem Javascript backend voltada para a construção das API's;
- **React**: linguagem Javascript frontend voltada para a construção da camada de apresentação;
- **Typescript**: linguagem fortemente tipada e compilada para Javascript;
- **API GitHub**: https://api.github.com/users/
<br /><br />

## Dependências:
- **Gerais**
    - **"@testing-library/jest-dom"**: "^4.2.4";
    - **"@testing-library/react"**: "^9.3.2";
    - **"@testing-library/user-event"**: "^7.1.2";
    - **"@types/jest"**: "^24.0.0";
    - **"@types/node"**: "^12.0.0";
    - **"@types/react"**: "^16.9.0";
    - **"@types/react-dom"**: "^16.9.0";
    - **"date-fns"**: "^2.15.0";
    - **"history"**: "^5.0.0";
    - **"react"**: "^16.13.1";
    - **"react-calendar-heatmap"**: "^1.8.1";
    - **"react-dom"**: "^16.13.1";
    - **"react-icons"**: "^3.10.0";
    - **"react-router-dom"**: "^6.0.0-beta.0";
    - **"react-scripts"**: "3.4.1";
    - **"styled-components"**: "^5.1.1";
    - **"typescript"**: "~3.7.2";

- Específicas do ambiente de **desenvolvimento**
    - **"@types/react-calendar-heatmap"**: "^1.6.2",
    - **"@types/react-icons"**: "^3.0.0",
    - **"@types/react-router-dom"**: "^5.1.5",
    - **"@types/styled-components"**: "^5.1.2"
<br /><br />

## Instalação

Atualizar as informações no arquivo .env.example e renomeá-lo para .env. Após isso, executar através do terminal:<br />
```make install```<br />

Após o final da instalação, acessar os serviços através do endpoint:<br />
http://localhost:3000/

Exemplo:<br />
http://localhost:3000/acgomes68
<br /><br />

## Testes
```make test```
<br /><br />


## Referências
- https://stackoverflow.com/questions/8713596/how-to-retrieve-the-list-of-all-github-repositories-of-a-person#:~:text=15%20Answers&text=You%20can%20use%20the%20github,repositories%20for%20the%20user%20USERNAME.&text=to%20find%20all%20the%20user's%20repos.
- https://www.youtube.com/watch?v=iLEbGQXsg3k
- https://blog.crowdbotics.com/how-to-connect-a-github-api-with-a-nodejs-server/
- https://medium.com/@rshekar/creating-a-react-web-app-on-netlify-and-github-part-1-5c802dd52354
