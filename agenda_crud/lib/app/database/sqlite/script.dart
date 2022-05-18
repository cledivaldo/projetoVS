//C:\Utils\DB\universaobank.db

final createTable = '''
  CREATE TABLE contact(
    id INTEGER NOT NULL PRIMARY KEY
    ,nome VARCHAR(200) NOT NULL
    ,fone CHAR(16) NOT NULL
    ,email VARCHAR(150) NOT NULL
    ,url_avatar VARCHAR(300) NOT NULL 
    ,group VARCHAR(1) NOT NULL 
  )
''';

final insert1 = '''
INSERT INTO contact (nome, fone, email, url_avatar, group)
VALUES ('Pietro','(11) 9 9874-5656','pietro@email.com','https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png','P')
''';

final insert2 = '''
INSERT INTO contact(nome, telefone, email, url_avatar, group)
VALUES ('Maitê','(11) 9 9632-8578', 'maite@email.com','https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366_960_720.jpg','M')
''';

final insert3 = '''
INSERT INTO contact (nome, telefone, email, url_avatar, group)
VALUES ('Hortência','(11) 9 9562-3356','hortencia@email.com','https://cdn.pixabay.com/photo/2021/01/24/09/28/girl-5944691_960_720.jpg','H')
''';
