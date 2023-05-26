CREATE DATABASE CRIPTO --CRIA UM BANCO DE DADOS CHAMADO CRIPTO

USE CRIPTO -- DIZ PARA O BANCO QUE VAI USAR ESTA BASE DE DADOS

CREATE TABLE Usuários (
   UsuarioID INT PRIMARY KEY IDENTITY, 
   Email VARCHAR(100) UNIQUE NOT NULL,    
   Senha VARCHAR (50) NOT NULL
)

INSERT INTO Usuários VALUES ('tiagobfs@gmail.com', 01234)

SELECT * FROM Usuários

SELECT UsuarioID, Email, HASHBYTES ('MD2',Senha) AS 'Senha criptografada' FROM Usuários WHERE UsuarioID = 3
SELECT UsuarioID, Email, HASHBYTES ('MD4',Senha) AS 'Senha criptografada' FROM Usuários WHERE UsuarioID = 3
SELECT UsuarioID, Email, HASHBYTES ('MD5',Senha) AS 'Senha criptografada' FROM Usuários WHERE UsuarioID = 3
SELECT UsuarioID, Email, HASHBYTES ('SHA',Senha) AS 'Senha criptografada' FROM Usuários WHERE UsuarioID = 3
SELECT UsuarioID, Email, HASHBYTES ('SHA2_256',Senha) AS 'Senha criptografada' FROM Usuários WHERE UsuarioID = 3
SELECT UsuarioID, Email, HASHBYTES ('SHA2_512',Senha) AS 'Senha criptografada' FROM Usuários WHERE UsuarioID = 3


--HASHBYTES SIGNIFICA QUE IREI ENCRIPTAR A SENHA ANTES DE ENVIAR OS DADOS PARA O BACK END.