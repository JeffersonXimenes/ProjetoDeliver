create table tb_order (id bigint not null auto_increment, address varchar(255), latitude double precision, longitude double precision, moment datetime, status integer, primary key (id)) engine=MyISAM;
create table tb_order_product (order_id bigint not null, product_id bigint not null, primary key (order_id, product_id)) engine=MyISAM;
create table tb_product (id bigint not null auto_increment, description varchar(255), image_uri varchar(255), name varchar(255), price double precision, primary key (id)) engine=MyISAM;
alter table tb_order_product add constraint FKsu03ywlcvyqg5y78qey2q25lc foreign key (product_id) references tb_product (id);
alter table tb_order_product add constraint FK40anaevs16kmc2tbh7wc511fq foreign key (order_id) references tb_order (id);
