# DesafioCaddy
criação de IAC para deploy caddy

Esta IAC foi desenvolvida como desafio para mostrar as habilidades com as ferramentas de DevOps.

A realização desta tarefa foi um pouco complicada devido a falta de tempo hábil para me dedicar a realização, também encontrei problemas com o docker, pois faz alguns meses que não atuo com a ferramenta.

Executando:

Para criar o servidor na AWS Cloud, executar o comando "terraform apply" dentro do diretório terraform

terraform apply

Após criar o servidor na sua nuvem, executar dentro do diretório Ansible o comando: 

ansible-playbook -i hosts Playbook.yaml -v

O arquivo Playbook.yaml, está chamando outros dois arquivos, um para a instalação do docker e suas dependencias e outro para a realização do deploy da aplicação caddy

para teste local executar o colando curl:

curl http://localhost:3001



Pontos de melhorias:
 - mostar tela "Hello World"
 - Codigo: deixar a execução e subida da IAC mais perfomatica,
 - subir a aplicação em dockerfile ou em dockercompose, para realizar o redeploy, caso necessário,
 - criar armazenamento EFS ou S3 apontando ao endpoit,
 - Implementação de CI/CD;
 
 
 A realização deste teste me fez perceber o quanto eu estava enferrujado com a utilização de docker, me deixando com mais vontade retornar a atuar com esta cultura.
 
 Espero quer a IAC possa mostrar um pouco do meu conhecimento.
 
 Danilo Reis
 
 
