create table sample_info_detail
(
    id int unsigned not null auto_increment primary key,
    sample_name varchar(50) not null,
    species_origin varchar(50) default null,
    sample_num int unsigned default null,
    concentration varchar(50) default null,
    volume varchar(50) default null,
    product_num varchar(50) default null,
    od_260_or_280 varchar(50) default null
);
