create table `footertexts` (
  `id` int(11) not null auto_increment,
  `bas` varchar(255),
  `type` varchar(50),
  primary key(`id`)
) charset=utf8 collate=utf8_unicode_ci;

create table `basdata` (
  `id` int(11) not null auto_increment,
  `eng` varchar(255) collate utf8_unicode_ci not null,
  `engtype` varchar(50) collate utf8_unicode_ci not null,
  `engmean` varchar(255) collate utf8_unicode_ci not null,
  `dhi` varchar(255) collate utf8_unicode_ci not null,
  `dhitype` varchar(50) collate utf8_unicode_ci not null,
  `dhimean` varchar(255) collate utf8_unicode_ci not null,
  `latin` varchar(255) collate utf8_unicode_ci not null,
  primary key (`id`)
) charset=utf8 collate=utf8_unicode_ci;

create table `bassuggests` (
  `id` int(11) not null auto_increment,
  `eng` varchar(255) collate utf8_unicode_ci not null,
  `dhi` varchar(255) collate utf8_unicode_ci not null,
  `latin` varchar(255) collate utf8_unicode_ci not null,
  `status` int(2) not null default 0,
  primary key (`id`)
) charset=utf8 collate=utf8_unicode_ci;

create table `bassuggestapp` (
  `id` int(11) not null auto_increment,
  `eng` varchar(255) collate utf8_unicode_ci not null,
  `dhi` varchar(255) collate utf8_unicode_ci not null,
  `latin` varchar(255) collate utf8_unicode_ci not null,
  `status` int(2) not null default 0,
  primary key (`id`)
) charset=utf8 collate=utf8_unicode_ci;

create table `bastracking` (
  `id` int(11) not null auto_increment,
  `basid` int(11) not null,
  `time` timestamp default CURRENT_TIMESTAMP,
  primary key (`id`)
) charset=utf8 collate=utf8_unicode_ci;

ALTER TABLE bastracking ADD CONSTRAINT fk_basid FOREIGN KEY (basid) references basdata(id);

create table `baskeywords` (
  `id` int(11) not null auto_increment,
  `keyword` varchar(255) collate utf8_unicode_ci not null,
  `time` timestamp default CURRENT_TIMESTAMP,
  primary key (`id`)
) charset=utf8 collate=utf8_unicode_ci;
