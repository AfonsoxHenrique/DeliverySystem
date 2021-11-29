# tartarugaCometa

O projeto tem como intuito criar uma aplicação Java WEB que permita realizar uma entrega.

## Tecnologias utilizadas

• JDK 1.8 
• Tomcat 8
• MySQL
• Apache NetBeans 12.5
• XAMPP
• Java
• HTML

## Livrarias utilizadas

• Spring Framework 4.3.29
• mysql-connector-java-5.1.47.jar
• JDK 1.8 (DEFAULT)
• Apache Tomcat ot TomEE

## Instruções

• Sistema: o programa contém uma área para Destinatário, Remetente, Produto e Entrega. Sendo os três primeiros, respectivamente, previamente cadastrados. Tendo esses três cadastrados dentro do sistema , o processo de entrega pode ser iniciado. 

Um destinatário não pode ser excluído enquanto estiver cadastrado em uma entrega, assim como um remetente e um produto.

O sistema contém a opção para listar todos os componentes, dentro da opção listar você consegue editar e excluir.

Para a conexão com o banco, é preciso baixar a livraria "mysql-connector-java-5.1.47.jar" e adicioná-la ao projeto, pois ela não é nativa.

• Banco de dados: Para usar o banco é preciso baixar o XAMPP, iniciar o Apache e logo em seguida o MySQL. Não consegui usar o Workbench do MySQL, pois o meu sistema operacional não o suporta. Também disponibilizei um arquivo .SQL que contém toda a codificação do Banco de Dados. Para usar, basta criar uma DataBase e importá-lo dentro do MySQL. (Criar uma DataBase com o nome de: tartarugacometa) 

• IDE: De preferência usar o NetBeans para não ocorrer algum erro.

• Executável: o arquivo executável .WAR está localizado dentro da pasta "dist".

## Considerações finais

Tive muitas ideias que gostaria de aplicar nesse projeto, mas a maioria envolvia um conhecimento até avançado do FrontEnd, coisa que não tenho. Então não consegui aplicar muitas das coisas que queria. O back-end está completo, com todas as funcionalidades necessárias, assim como o banco de dados.
