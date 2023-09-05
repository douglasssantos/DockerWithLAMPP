# Docker LAMPP

Neste projeto foi incorporado os seguintes recursos: PHP 8.1, APACHE, POSTGRES, MARIADB, COMPOSER, NPM, LAMP-RESOURCE, SUPERVISOR e muitos outros.

um ambiente docker pronto para uso em diversas situações, contendos todos os recursos necessários para o desenvolvimento frontend e backend.

e tambem conta com a função multi site do apache ativa e configurada para trabalhar vhosts dinamicamente.

O repositório acompanha um recurso criado em shell script para auxilio na preparação do ambiente.

e muito mais.

----------------------------------------------------------------------------------------------------------------------
> ### Passo a Passo para Instalação  
> > > **Passo 1:** acesse a pasta do projeto e edite o arquivo docker-compose.yaml, insira os banco de dados nas variaveis <kbd>POSTGRES_MULTIPLE_DATABASES</kbd> e <kbd>MYSQL_MULTIPLE_DATABASES</kbd>, cada banco de dados separado por virgula. se precisar alterar os dados altere as variaveis de credenciais no containers mariadb e postgres.
> > > 
> > > **Passo 2:** acesse a pasta do projeto, e execute o comando:  <kbd>**docker-compose up -d --build**</kbd>
> > >
> > > **Passo 3:** adicione o vhost ao hosts do seu sistema operacional. <kbd>**::1 dominio-teste** </kbd>
> >
> > **Passo 2:** Aplicando permissões nos projetos.
> > > **Passo 1.1:** acesse o container com o comando no terminal: <kbd>**docker exec -it projects bash**</kbd>
> > >
> > > **Passo 1.2:** execute comando no terminal: <kbd> **sudo chown -R devuser:devuser /var/www/** </kbd>
> >
> > **Passo 3:** LAMP RESOURCE.
> > > **Passo 1.1:** para criar um novo vhost acesse primeiro o container.</kbd>
> > >
> > > **Passo 1.2:** acesse o container com o comando no terminal: <kbd>**docker exec -it projects bash**</kbd>
> > >
> > > **Passo 1.2:** após acessar o contaienr digite o comando: <kbd> **sudo lamp** </kbd>
> > 
> > **Passo 5:** Após toda a conclusão dos passos realize a migração dos banco de dados dentro de cada projeto e se necessário edite o arquvo <kbd> **.env** </kbd>.
<br>

#### Não esqueça de me seguir github e marcar uma estrela no projeto.

<br>

>### Meus Contatos</kbd>
> >E-mail: douglassantos2127@gmail.com
> >
> >Linkedin: <a href='https://www.linkedin.com/in/douglas-da-silva-santos/' target='_blank'>Acessa Perfil</a>&nbsp;&nbsp;<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linkedin/linkedin-original.svg" width="24">
> >
> >GeekHunter: <a href='https://www.linkedin.com/in/douglas-da-silva-santos/' target='_blank'>Acessa Perfil</a>&nbsp;&nbsp;<img src="https://www.geekhunter.com.br/_next/static/media/geek-logo.5e162598.svg" width="120">
