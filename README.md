# sysmap-natura-test
Avaliação aplicada no processo seletivo da <b>SysMap</b> para uma vaga de <b>Desenvolvedor Fullstack</b> na <b>Natura</b>.
<br /><br />

## Descrição
O projeto envolve a criação de uma interface Web Responsiva em ReactJS que liste todos os repositórios públicos de uma determinado usuário utilizando a API pública do próprio GitHub acionada via serviço RESTfull desenvolvido em Node.js.

Para tal, há a possibilidade da instalação do código e execução de forma local ou simplemsmente executá-lo sem necessidade de instalação através do endpoint:

https://sysmap-natura.netlify.app/

<br /><br />

## Requisitos
Para que seja realizada a instalação, construção, execução e testes de forma local são necessárias as seguintes tecnologias previamente instaladas que devem ser verificadas através do <b>terminal(Linux/MacOS)</b> ou <b>CommandShell/CMD/PowerShell (Windows)</b>:

- <b>Git</b>

    Para confirmar se já está instalado:<br />
<code>git --version</code>

    Caso ainda não esteja instalado:
https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git
<br /><br />

- <b>Make</b>

    Para confirmar se já está instalado:<br />
    <code>make --version</code>

    Caso ainda não esteja instalado:<br />

    - <b>Linux:</b><br />
<code>sudo apt-get install build-essential</code>

    - <b>Windows</b>
http://gnuwin32.sourceforge.net/packages/make.htm
<br /><br />

- <b>Docker:</b>

    Para confirmar se já está instalado:<br />
<code>docker --version</code>

    Caso ainda não esteja instalado:
https://www.docker.com/community-edition#/download


- <b>Docker-compose</b>:
Normalmente, ao instalar o Docker, o Compose também é instalado. Para confirmar se já está instalado:<br />
<code>docker-compose --version</code>

    Caso ainda não esteja instalado:
https://docs.docker.com/compose/install/
<br /><br />

## Arquitetura
Foi desenvolvida uma arquitetura voltada para microsserviços de modo que estejam separados em containers Docker que podem ser escalados mediante a demanda necessária. A estrutura básica do backend foi desenvolvida em NodeJS com Express, ambos responsáveis pela gestão e roteamento das requisições HTTP usando padrão REST.

As informações dos repositórios provenientes do GitHub é consumida através da chamada de API própria de domínio público acessada pelo backend.

No que tange ao frontend foi criada uma interface em React estilizada de forma semelhante ao próprio GitHub e responsável por consumir os serviços citados.
<br /><br />

## Tecnologias:
- <b>NodeJS</b>: linguagem Javascript backend voltada para a construção das API's;
- <b>React</b>: linguagem Javascript frontend voltada para a construção da camada de apresentação;
- <b>API GitHub</b>: https://developer.github.com/v3/
<br /><br />

## Dependências:
- Gerais
    - <b>body-parser</b>: suporte ao parser de conteúdo para requisições HTTP;
    - <b>cors</b>: autenticação no redirecionamento de domínio;
    - <b>dotenv</b>: leitura de variáveis de ambiente a partir de arquivo .env;
    - <b>express</b>: roteamento e manipulação HTTP para API REST;
    - <b>pg</b>: apoio na utilização do Postgres;
    - <b>sequelize</b>: persistência de dados para Postgres;
    - <b>youch</b>: tratamento de erros e exceções;
    - <b>yup</b>: validação de dados postados;

- Específicas do ambiente de desenvolvimento
    - <b>eslint</b>: formatação e validação de sintaxe;
    - <b>nodemon</b>: monitora o serviço HTTP do node;
    - <b>prettier</b>: formatação do código;
    - <b>sequelize-cli</b>: execução de testes e migrations através da persistência com Postgres;
    - <b>sucrase</b>: adaptação do código para ES6;
<br /><br />

## Instalação

Atualizar as informações no arquivo .env.example e renomeá-lo para .env. Após isso, através do terminal executar:<br />
<code>make install</code><br />

Após o final da instalação, acessar os serviços através do endpoint:<br />
http://localhost:3333/

Exemplo:<br />
http://localhost:3333/customers
<br /><br />

## Testes
<code>make test</code>
<br /><br />


## GUI Teste API's
Foi utilizado o Insomnia para teste manual de cada serviço da API. Arquivo JSON contendo as informações, bem como os parâmetros utilizados disponíveis no repositório para importação, caso seja conveniente.

![Screenshot](insomnia-view.png)
<br /><br />

## Referências
- https://stackoverflow.com/questions/8713596/how-to-retrieve-the-list-of-all-github-repositories-of-a-person#:~:text=15%20Answers&text=You%20can%20use%20the%20github,repositories%20for%20the%20user%20USERNAME.&text=to%20find%20all%20the%20user's%20repos.
- https://www.youtube.com/watch?v=iLEbGQXsg3k
- https://blog.crowdbotics.com/how-to-connect-a-github-api-with-a-nodejs-server/
- https://medium.com/@rshekar/creating-a-react-web-app-on-netlify-and-github-part-1-5c802dd52354
