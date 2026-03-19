-- criando indice no campo c_razaclien da tabela comclien
ALTER TABLE comclien add
index idx_comclien_3(c_razaclien);

-- criando indice para o campo c_codiclien
ALTER TABLE comclien add
index idx_comclien_4(c_codiclien);

-- mostrando as indices (visoes)
show indexes from comclien;

-- criando um indice no c_codivenda
ALTER TABLE comvenda add unique
index idx_comvenda_1(c_codivenda);

-- mostrando os indices de comvenda
show indexes from comvenda;

-- deletando um indice
ALTER TABLE comvenda drop index idx_comvenda_1;