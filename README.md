# Docker LAMPP

Neste projeto foi incorporado os seguintes recursos: PHP 8.1, APACHE, POSTGRES, MARIADB, COMPOSER, NPM, LAMP-RESOURCE, SUPERVISOR e muitos outros.

um ambiente docker pronto para uso em diversas situações, contendos todos os recursos necessários para o desenvolvimento frontend e backend.

e tambem conta com a função multi site do apache ativa e configurada para trabalhar vhosts dinamicamente.

O repositório acompanha um recurso criado em shell script para auxilio na preparação do ambiente.

e muito mais.

> ### Dica!
> > Em sistemas operacionais windows, é indicado clonar o repositório dentro do WSL para evitar as transpilação de tipos de dados linux para windows, fazendo com que o docker perca desempenho.
> > Instale o repositório e suba o container por meio do WSL.
> > no demais sistemas operacionais segue a instalação comum. 

----------------------------------------------------------------------------------------------------------------------
> ### Passo a Passo para Instalação  
> > > **Passo 1:** acesse a pasta do projeto e edite o arquivo docker-compose.yaml, insira os banco de dados nas variaveis <kbd>POSTGRES_MULTIPLE_DATABASES</kbd> e <kbd>MYSQL_MULTIPLE_DATABASES</kbd>, cada banco de dados separado por virgula. se precisar alterar os dados altere as variaveis de credenciais no containers mariadb e postgres.
> > > 
> > > **Passo 2:** acesse a pasta do projeto, e execute o comando:  <kbd>**docker-compose up -d --build**</kbd>
> > >
> > > **Passo 3:** adicione o vhost ao hosts do seu sistema operacional. <kbd>**::1 site2-teste** </kbd>
> >
> > **Passo 2:** Aplicando permissões nos projetos.
> > > **Passo 1.1:** acesse o container com o comando no terminal: <kbd>**docker exec -it projects bash**</kbd>
> > >
> > > **Passo 1.2:** execute comando no terminal: <kbd> **sudo chown -R devuser:devuser /var/www/** </kbd>
> >
> > **Passo 3:** LAMP RESOURCE.
> > > **Passo 3.0:** para criar um novo vhost acesse primeiro o container.</kbd>
> > >
> > > **Passo 3.1:** acesse o container com o comando no terminal: <kbd>**docker exec -it projects bash**</kbd>
> > >
> > > **Passo 3.2:** após acessar o contaienr digite o comando: <kbd> **sudo lamp** </kbd>
> > >
> > > **Passo 3.3:** após selecione a opção: <kbd> **[1] APACHE** </kbd>
> > >
> > > **Passo 3.4:** após selecione a opção: <kbd> **[4] Adicionar Dominio Local ao vHost do Apache** </kbd>
> > >
> > > **Passo 3.5:** <kbd>Digite o nome do dominio:</kbd> o vhost com o nome desejado,  <kbd>exemplo: site2-teste</kbd>, para acessar ficaria assim no navegador:  <kbd>http://site2-teste</kbd>
> > >
> > > **Passo 3.6** <kbd>Qual a pasta root dentro projeto:</kbd>, insira a pasta raiz do seu projeto com a barra no inicio, <kbd>exemplo: /public</kbd>
> > >
> > > **Passo 3.7** <kbd>Deseja Instalar SSL no Dominio Local?:</kbd>, insira **n** para não.
> > >
> > > **Passo 3.8** após a criação vhost, você precisa adiciona-lo ao hosts local do seu sistema operacional.
> > >
> > > **Passo 3.9** para adiciona o vhost basta inseri-lo da seguinte forma <kbd>1:: site2-teste</kbd>.
> > >
> > > **Passo 4.0** segue abaixo os locais no windows e no linux.
> > > > **Windows:** <kbd>c:\Windows\System32\drivers\etc\hosts</kbd>
> > > >
> > > > **Linux:** <kbd>/etc/hosts</kbd>
> > > 
> > 
> > **Passo 5:** Após toda a conclusão dos passos realize a migração dos banco de dados dentro de cada projeto e se necessário edite o arquvo <kbd> **.env** </kbd>.
> > > **Passo 5.1:** para conectar com o banco de dados basta inserir a referência do container como host e as credenciais de acesso.<br><br> segue abaixo alguns exemplos.<br><br>
> > > **Passo 5.2:** Exemplo MariaDB.
> > > <br><kbd> DB_HOST=mariadb<br>DB_PORT=3306<br>DB_DATABASE=db_teste<br>DB_USERNAME=mariadb<br>DB_PASSWORD=root</kbd><br>
> > > **Passo 5.3:** Exemplo Postgres.
> > > <br><kbd> DB_HOST=postgres<br>DB_PORT=5432<br>DB_DATABASE=db_teste<br>DB_USERNAME=postgres<br>DB_PASSWORD=root</kbd><br>

#### Não esqueça de me seguir github e marcar uma estrela no projeto.

<br>

>### Meus Contatos</kbd>
> >E-mail: douglassantos2127@gmail.com
> >
> >Linkedin: <a href='https://www.linkedin.com/in/douglas-da-silva-santos/' target='_blank'>Acessa Perfil</a>&nbsp;&nbsp;<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" width="24">
> >
> >GeekHunter: <a href='https://www.linkedin.com/in/douglas-da-silva-santos/' target='_blank'>Acessa Perfil</a>&nbsp;&nbsp;<img src="https://www.geekhunter.com.br/_next/static/media/geek-logo.5e162598.svg" width="120">
