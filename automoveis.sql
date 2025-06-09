--1. Criar um banco de dados chamado "automoveis" e
--uma tabela chamada "carros".

CREATE DATABASE automoveis;

USE automoveis;

CREATE TABLE carros (
  placa char(7) primary key,
  marca VARCHAR(20) not null,
  modelo VARCHAR(20) not null,
  ano_fabricacao INT not null,
  preco float not null,
  cor VARCHAR(15) not null,
  quilometragem INT,
  motor VARCHAR(25)
);

--2. Inserir pelo menos 5 veículos. Cada veículo deve incluir informações como marca,
--modelo, ano de fabricação, preço inicial, etc.

INSERT INTO carros (placa, marca, modelo, ano_fabricacao, preco, cor, quilometragem,
motor)
VALUES
  ('TER9874','Toyota', 'Yaris', 2025, 98000.00, 'Preto', 0, '1.0L'),
  ('DAB4152','Fiat', 'Pulse', 2024, 70000.00, 'Prata', 10000, '1.0L'),
  ('XYX9874','Jeep', 'Renegade', 2025, 110000.00, 'Branca', 50000, '1.6L'),
  ('ADF8855','VW', 'Polo', 2020, 65000, 'Vermelho', 25000, '1.0L'),
  ('GYU9512','GM', 'Tracker', 2019, 78000, 'Cinza', 53000, '1.5L');

select * from carros

--3. Aumento de Preços por Ano: Aumente o preço de todos os carros fabricados em 2018
--em 5%.

UPDATE carros
  SET preco = preco * 1.05
  WHERE ano_fabricacao = 2018;

--4. Redução de Preços por Marca: Reduza o preço de todos os carros
--da marca "Toyota" em 10%.

UPDATE carros
  SET preco = preco * 0.90 --set preco=preco-(preco*0.1)
  WHERE marca = 'Toyota';

--5. Atualização do Ano de Fabricação: Atualize o ano de fabricação
--de todos os carros da marca "Honda" para 2022.

UPDATE carros
  SET ano_fabricacao = 2022
  WHERE marca = 'Honda';

-- 6. Atualização da Cor dos Carros com Preço Acima de um Valor Específico:
--Atualize a cor de todos os carros com preço superior a R$30000 para "Azul".

UPDATE carros
  SET cor = 'Azul'
  WHERE preco > 30000;

select * from carros

--7. Atualização do Modelo: Altere o modelo de um carro específico de
--"Civic" para "Accord".

UPDATE carros
  SET modelo = 'Accord'
  WHERE modelo = 'Civic';

-- 8. Exclusão de Carros Antigos:
--Exclua todos os carros fabricados antes de 2015.

DELETE FROM carros
WHERE ano_fabricacao < 2015;

-- 9. Exclusão de Carros de uma Marca Específica:
--Remova todos os carros da marca "Ford" da tabela.

DELETE FROM carros
WHERE marca = 'Ford';

--10. Exclusão de Carros por Faixa de Preço:
--Exclua todos os carros com preço entre R$10000 e R$20000.

DELETE FROM carros
WHERE preco >=10000 AND preco<=20000;

--OPÇAO 2 PARA O MESMO COMANDO:

DELETE FROM carros
WHERE preco between 10000 AND 20000;

-- 11. Remoção de Campo "Motor": Remova o campo "motor" de todos os carros da coleção.

ALTER TABLE carros
DROP COLUMN motor;
select * from carros

--12. Atualização do Preço Mínimo por Modelo:
--Defina o preço mínimo de todos os modelos "SUV" para R$25000.

UPDATE carros
SET preco = 25000
WHERE modelo = 'SUV';

--13. Aumento de Preços por Modelo e Ano:
--Aumente o preço de todos os carros do modelo
--"Corolla" fabricados em 2020 em 7%.

UPDATE carros
SET preco = preco * 1.07
WHERE modelo = 'Corolla' AND ano_fabricacao = 2020;

-- 14. Atualização da Quilometragem: Atualize a quilometragem de
-- todos os carros da marca "Chevrolet" para 0 km.

UPDATE carros
SET quilometragem = 0
WHERE marca = 'Chevrolet';

-- 15. Exclusão de Carros com Quilometragem Elevada:
--Remova todos os carros com mais de 100000 km rodados.

DELETE FROM carros
WHERE quilometragem > 100000;

--16. Exclusão de Carros com Cor Específica: Exclua todos os carros da cor "Verde".
DELETE FROM carros
WHERE cor = 'Verde';

--17. Atualização de Preços com Base no Modelo e na Cor: Aumente o preço de todos os
--carros do modelo "Mustang" e cor "Vermelho" em 15%.

UPDATE carros
SET preco = preco * 1.15
WHERE modelo = 'Mustang' AND cor = 'Vermelho';
