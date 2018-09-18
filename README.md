# TRABALHO 01: Ctrl+Money
Trabalho desenvolvido durante a disciplina de BD2

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Brendon Mauro brendonmauro@gmail.com:<br>
Jennifer de Castro : jenny_cg23@hotmail.com<br>
Joel Will: joel-willb@hotmail.com <br>
Larrisa Motta: larissasantosdamotta@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <b> Ctrl+Money</b>
<br>e motivação da escolha realizada. <br>

Ter um bom controle dos seus gastos é uma necessidade premente de todo cidadão. Tempo é dinheiro. E, dinheiro bem administrado, é sinônimo de sono tranquilo.
Portanto, Ctrl+Money  vai além do básico e permite que você faça controles incríveis, essenciais para suas finanças. Com gráficos simples, você sabe de onde vem e para onde vai o seu dinheiro e ainda oferece funcionalidades de previsão para auxiliar o melhor planejamento do seu futuro e poder instituir metas a serem cumpridas.

 

### 3.MINI-MUNDO<br>

O sistema opera com usuários cadastrando suas receitas e despesas de cada mês. Um usuário consegue acessar o portal através de um login e uma senha.
Para facilitar o gerenciamento de formas de pagamento, um usuário pode cadastrar seus cartões de crédito, informando o nome do cartão, seu limite, dia de fechamento da conta e data de vencimento da mesma.
Uma pessoa possui receitas e despesas, que serão subdivididas em categorias. As categorias envolvendo entrada de dinheiro são: salário, vendas, pensão e outros. Já as categorias envolvendo a saída de dinheiro são: alimentação, moradia, educação, transporte, lazer e outros. Um usuário poderá visualizar qual categoria é mais lucrativa ou gera mais prejuízo em um determinado mês. Além disso, o site será capaz de exibir o fluxo de caixa de um ano selecionado.
Dentro do portal, é possível exibir as receitas e/ou despesas de um determinado mês subdividindo em suas categorias. Dentro destas categorias, é possível detalhá-las, exibindo todos os itens de despesas referentes ao grupo selecionado.
As receitas possuem nome, valor, data de recebimento, e se é fixa. Já as despesas dispõem de nome, data de compra, forma de pagamento, além de valor e data de pagamento (se pago em dinheiro), ou valor da parcela e número de parcelas (caso seja pago no cartão). O cliente tem acesso a exibição dos gastos de um cartão selecionado em um determinado mês.
No final de cada mês, ocorre o fechamento de contas, onde é realizado um cálculo para saber se todas as contas foram de fato pagas. O usuário informa a quantia que realmente foi paga naquele mês específico e, caso não seja igual o valor total esperado para sanar todas as despesas daquele mês, é calculado a diferença entre o valor esperado e o valor real pago. O resultado obtido desta conta será somado no próximo mês, aparecendo como despesa acumulada.
As receitas e/ou despesas em dinheiro serão consideradas como recebidas e/ou pagas quando a data de recebimento/pagamento forem maiores ou iguais ao dia corrente.
Somando-se a isso, é possível um usuário ter acesso de total de receitas e/ou despesas de um mês específico. Além disso, é possível visualizar através de gráficos, o quanto de orçamento ele possui em caixa no momento atual. Este valor é calculado baseado no seu histórico, onde é somado o valor total resultante de todos os meses anteriores.
Será possível visualizar, através de um gráfico, a previsão de receitas, despesas e caixa disponíveis para o cliente nos próximos três meses após o mês atual. O cálculo é realizado de acordo com o histórico do usuário, portanto é imprescindível que o usuário possua pelo menos 3 meses com dados registrados.


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

[Arquivo com os protótipos em html](https://github.com/CtrlMoney/trab01/blob/master/Prototipo_Ctrl%2BMoney.zip)
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
  
    
> O sistema <b> Ctrl+Money </b> poderá ser capaz de gerar os seguintes relatórios:
* Relatório de fluxo de caixa do usuário .
* Relatório de previsão de saldo dos próximos três meses, a partir da data atual. Este relatório será gerado a partir do histórico do usuário.
* Relatório de receitas dividindo-as nas seguintes categorias: salário, pensão, venda e outros .
* Relatório de despesas dividindo-as nas seguintes categorias: alimentação, moradia, lazer, transporte, educação e outros.
* [FALTA 1]
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
>## Marco de Entrega 01 em: (06/09/2018)<br>

### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO 
        * Para nosso prótótipo limitaremos o modelo conceitual nas 6 principais entidades do escopo
        * O protótipo deve possui no mínimo duas relações N para N
        * o mínimo de entidades do modelo conceitual será igual a 5
        
![Alt text](https://github.com/CtrlMoney/trab01/blob/master/Modelos/Modelo%20conceitual.png "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
        
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
![Alt text](https://github.com/CtrlMoney/trab01/blob/master/Modelos/Modelo%20Logico.png "Modelo Lógico")

### 7	MODELO FÍSICO<br>
<a href="https://github.com/CtrlMoney/trab01/blob/master/Modelos/ModeloFisico.sql">MODELO FÍSICO</a><br>          
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico 
        b) formato .SQL

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script
        (Drop para exclusão de tabelas + create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


