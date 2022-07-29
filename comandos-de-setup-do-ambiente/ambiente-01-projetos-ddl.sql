#DDL de criação da base de dados:

#Código de criação da tabela "projetos".
CREATE TABLE projetos
(
    id INT AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL,
    data_inicio DATE NOT NULL,
    url VARCHAR(100),

    PRIMARY KEY (id)
)
    ENGINE = InnoDB,
    AUTO_INCREMENT = 1,
    DEFAULT CHARSET = UTF8;


#Código de criação da tabela "usuarios".
CREATE TABLE usuarios
(
    id INT AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL,

    PRIMARY KEY (id)
)
    ENGINE = InnoDB,
    AUTO_INCREMENT = 1,
    DEFAULT CHARSET = UTF8;

#Código de criação da tabela "comentarios".
CREATE TABLE comentarios
(
    id INT AUTO_INCREMENT,
    comentario TEXT NOT NULL,
    data_postagem TIMESTAMP NOT NULL,
    id_usuario INT NOT NULL,
    id_projeto INT NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id),
    FOREIGN KEY (id_projeto) REFERENCES projetos(id)

)
    ENGINE = InnoDB,
    AUTO_INCREMENT = 1,
    DEFAULT CHARSET = UTF8;

#Código de criação da tabela "likes_por_projeto".
CREATE TABLE likes_por_projeto
(
    id_projeto INT NOT NULL,
    id_usuario INT NOT NULL,

    FOREIGN KEY (id_projeto) REFERENCES projetos (id),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id)
)
    ENGINE = InnoDB,
    DEFAULT CHARSET = UTF8;

#Código de criação da tabela "likes_por_comentario".
CREATE TABLE likes_por_comentario
(
    id_usuario INT NOT NULL,
    id_comentario INT NOT NULL,

    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_comentario) REFERENCES comentarios(id)
)
    ENGINE = InnoDB,
    DEFAULT CHARSET = UTF8;
