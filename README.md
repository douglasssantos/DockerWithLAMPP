# Container Docker K8 Bank

O repositório acompanha um recurso criado em shell script para auxilio na instalação do ambiente.

com ele você tem o auxilio na instalação dos **Repositórios da K8 no Git, Execução do Composer e NPM + Execução automática para Buildar e Subir o Container para Docker**

tambem tem o auxilio na criação de vHost para desenvolvimento local: opção de multi-sites do Apache.

e muito mais.

> O Reposótrio Contém auto instaladores compativel com Windows/Linux/Mac
> dentre eles existem quatro instaladores um com execução do docker e outro sem.
> > **Clone_Repositories_With_Docker_For_Windows.bat** > <code>Com Docker</code> | Compativel apenas com <code>Windows</code>
> > **Clone_Repositories_Without_Docker_For_Windows.bat** > <code>Sem Docker</code> | Compativel apenas com <code>Windows</code>
> > **Clone_Repositories_With_Docker_For_Linux.sh** > <code>Com Docker</code> | Compativel apenas com <code>Linux/Mac</code>
> > **Clone_Repositories_Without_Docker_For_Linux.sh** > <code>Sem Docker</code> | Compativel apenas com <code>Linux/Mac</code>

#### Atenção antes de executar os autos instaladores é necessário já ter instalado em seu computador as seguintes ferramentas:<code> Docker, PHP, NPM e Composer </code>, pois elas serão executadas no momento da instalação.

----------------------------------------------------------------------------------------------------------------------
> ### Passo a Passo para Instalação  
> > **Passo 1:** Clone o DockerK8Bank com o comando: <code>**git clone https://github.com/douglasssantos/DockerK8Bank.git**</code>  
> >
> > **Passo 2:** Acesse a pasta do repositório ou via terminal: <kbd> **cd DockerK8Bank/** </kbd>  
> >
> > **Passo 3:** Apenas para <code>**Linux/Mac**</code>:
> > > **Passo 1.1:** abra o arquivo com um editor de texto:<br><kbd>**Clone_Repositories_With_Docker_For_Linux.sh ou Clone_Repositories_Without_Docker_For_Linux.sh**</kbd>
> > >
> > > **Passo 1.2:** Procure por <code>Token Aqui</code> e substitua pelo seu token do git, exemplo abaixo de onde está no arquivo:<br><kbd> **GIT_TOKEN="Token Aqui"** </kbd>
> > >
> > > **Passo 1.3:** feche o arquivo e execute o comando no terminal:<br><kbd>**sudo chmod +x Clone_Repositories_With_Docker_For_Linux.sh ou Clone_Repositories_Without_Docker_For_Linux.sh**</kbd>
> > >
> > > **Passo 1.4:** execute o comando no terminal:<br><kbd>**sudo ./Clone_Repositories_With_Docker_For_Linux.sh ou ./Clone_Repositories_Without_Docker_For_Linux.sh**</kbd>
> > >
> > > **Passo 1.5:** Aguarde toda a instalação.
> > > 
> > > **Configuração (após a conclusão da etapa 3.1.4):**
> > >
> > > **Passo 2.1:** execute o comando no terminal <code>Mac</code> <kbd>**sudo echo '::1 k8-backoffice k8-onboarding k8-onboarding-api k8-onboarding-v2-api k8-rh k8-webconta k8-webconta-api' >> /private/etc/hosts**</kbd>
> > >
> > > **Passo 2.2:** execute o comando no terminal <code>Linux</code> <kbd>**sudo echo -e '::1 k8-backoffice k8-onboarding k8-onboarding-api k8-onboarding-v2-api k8-rh k8-webconta k8-webconta-api' >> /etc/hosts**</kbd>
> > 
> > **Passo 3:** Apenas para <code>**Windows**</code>: 
> > > **Passo 1.1:** abra o arquivo com um editor de texto:<br><kbd>**Clone_Repositories_With_Docker_For_Windows.bat ou Clone_Repositories_Without_Docker_For_Windows.bat**</kbd>
> > >
> > > **Passo 1.2:** substitua por seu token do git onde está localizado <code>Token Aqui</code> :<br><kbd> **set GIT_TOKEN=Token Aqui** </kbd>
> > >
> > > **Passo 1.3:** feche e execute o arquivo:<br><kbd>**Clone_Repositories_With_Docker_For_Windows.bat ou Clone_Repositories_Without_Docker_For_Windows.bat**</kbd>
> > >
> > > **Passo 1.4:** Aguarde toda a instalação.
> > >
> > > **Configuração (após a conclusão da etapa 3.1.3):**
> > >
> > > **Passo 2:** Abra como adiministrador copie o texto abaixo e cole dentro do arquivo <kbd>**Hosts**</kbd> em <kbd>**c:\Windows\System32\drivers\etc**</kbd>:<br><kbd> **::1 k8-backoffice k8-onboarding k8-onboarding-api k8-onboarding-v2-api k8-rh k8-webconta k8-webconta-api** </kbd>
> >
> > **Passo 4:** Aplicando permissões nos projetos.
> > > **Passo 1.1:** acesse o container com o comando no terminal: <kbd>**docker exec -it projects bash**</kbd>
> > >
> > > **Passo 1.2:** execute comando no terminal: <kbd> **sudo chown -R devuser:devuser /var/www/** </kbd>
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
