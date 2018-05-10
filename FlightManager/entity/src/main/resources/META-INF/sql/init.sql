


-- ----------- VIEW -------------------------
create view user_group as
select username, name roles, role_id_id user_role
from roles r, users u;
-- ----------------- VIEW ----------------


           --------------------- COMPANY ------------------


create table company (
	id INT,
        
        comp_id VARCHAR(30)
	name VARCHAR(50),
	country VARCHAR(50),
	headquarters VARCHAR(50),
	is_active INT
);
insert into company (id, comp_id, name, country, headquarters, is_active) values (1,'123as2', 'Avavee', 'China', 'Sunzhuang', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (2,'942kg2', 'Gabspot', 'Bangladesh', 'Saidpur', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (3,'732q7', 'Jaxspan', 'Yemen', 'Aa Salw', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (4,'120yy3', 'Edgeify', 'Bangladesh', 'Tangail', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (5,'816fq5', 'Katz', 'Mexico', 'San Agustin', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (6,'092ow7', 'Meedoo', 'Kazakhstan', 'Aksu', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (7,'293nf', 'Thoughtworks', 'France', 'Tours', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (8,'085vf2', 'Skipfire', 'Indonesia', 'Tiyingtali Kelod', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (9,'092dj3', 'Twitternation', 'Nigeria', 'Udi', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (10,'653gs7', 'Eabox', 'Portugal', 'Picoto', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (11,'097vd1', 'Mynte', 'China', 'Qilong', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (12,'746fk4', 'Livetube', 'Brazil', 'Caninde', 1);
insert into company (id, comp_id, name, country, headquarters, is_active) values (13,'653ql9', 'Yamia', 'Argentina', 'Santo Tome', 1);
-- insert into company (id, name, country, headquarters, is_active) values (14, 'Demimbu', 'China', 'Daduo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (15, 'Mita', 'Brazil', 'Paraguaçu Paulista', 1);
-- insert into company (id, name, country, headquarters, is_active) values (16, 'Fivebridge', 'Bosnia and Herzegovina', 'Donja Dubica', 1);
-- insert into company (id, name, country, headquarters, is_active) values (17, 'Minyx', 'China', 'Bijie', 1);
-- insert into company (id, name, country, headquarters, is_active) values (18, 'Roombo', 'Bulgaria', 'Pleven', 1);
-- insert into company (id, name, country, headquarters, is_active) values (19, 'Yombu', 'Russia', 'Povenets', 1);
-- insert into company (id, name, country, headquarters, is_active) values (20, 'Yadel', 'China', 'Lishan', 1);
-- insert into company (id, name, country, headquarters, is_active) values (21, 'Zoombeat', 'China', 'Liuji', 1);
-- insert into company (id, name, country, headquarters, is_active) values (22, 'Skynoodle', 'Indonesia', 'Danauparis', 1);
-- insert into company (id, name, country, headquarters, is_active) values (23, 'Latz', 'France', 'Cluses', 1);
-- insert into company (id, name, country, headquarters, is_active) values (24, 'Oyonder', 'Colombia', 'Jamundí', 1);
-- insert into company (id, name, country, headquarters, is_active) values (25, 'Kanoodle', 'Russia', 'Kostrovo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (26, 'Gabcube', 'Portugal', 'Zambujal', 1);
-- insert into company (id, name, country, headquarters, is_active) values (27, 'Photofeed', 'Portugal', 'Rana', 1);
-- insert into company (id, name, country, headquarters, is_active) values (28, 'Devshare', 'Tajikistan', 'Boshkengash', 1);
-- insert into company (id, name, country, headquarters, is_active) values (29, 'Kaymbo', 'Brazil', 'Vitória de Santo Antão', 1);
-- insert into company (id, name, country, headquarters, is_active) values (30, 'Snaptags', 'Sweden', 'Stockholm', 1);
-- insert into company (id, name, country, headquarters, is_active) values (31, 'Aivee', 'Portugal', 'Monte da Pedra', 1);
-- insert into company (id, name, country, headquarters, is_active) values (32, 'Buzzdog', 'Russia', 'Krasnogvardeyets', 1);
-- insert into company (id, name, country, headquarters, is_active) values (33, 'Blogtags', 'Portugal', 'Santa Marta de Penaguião', 1);
-- insert into company (id, name, country, headquarters, is_active) values (34, 'Aibox', 'Sweden', 'Stockholm', 1);
-- insert into company (id, name, country, headquarters, is_active) values (35, 'Yodo', 'Indonesia', 'Teongtoda', 1);
-- insert into company (id, name, country, headquarters, is_active) values (36, 'Tagcat', 'Russia', 'Pushkino', 1);
-- insert into company (id, name, country, headquarters, is_active) values (37, 'Vinte', 'Indonesia', 'Lewokluok', 1);
-- insert into company (id, name, country, headquarters, is_active) values (38, 'Shufflester', 'Indonesia', 'Bukbatang', 1);
-- insert into company (id, name, country, headquarters, is_active) values (39, 'Tagcat', 'France', 'Vitrolles', 1);
-- insert into company (id, name, country, headquarters, is_active) values (40, 'Eimbee', 'Portugal', 'Souto', 1);
-- insert into company (id, name, country, headquarters, is_active) values (41, 'Babbleopia', 'South Korea', 'Kurye', 1);
-- insert into company (id, name, country, headquarters, is_active) values (42, 'Demizz', 'Japan', 'Ebetsu', 1);
-- insert into company (id, name, country, headquarters, is_active) values (43, 'Skipfire', 'Sweden', 'Ljungby', 1);
-- insert into company (id, name, country, headquarters, is_active) values (44, 'Dynazzy', 'Vietnam', 'Tây Ninh', 1);
-- insert into company (id, name, country, headquarters, is_active) values (45, 'Skyble', 'Indonesia', 'Cikembar', 1);
-- insert into company (id, name, country, headquarters, is_active) values (46, 'Oba', 'China', 'Laba Goumen', 1);
-- insert into company (id, name, country, headquarters, is_active) values (47, 'Shufflester', 'China', 'Yonggu', 1);
-- insert into company (id, name, country, headquarters, is_active) values (48, 'Quatz', 'Philippines', 'Batad', 1);
-- insert into company (id, name, country, headquarters, is_active) values (49, 'Oodoo', 'Pakistan', 'Shahkot', 1);
-- insert into company (id, name, country, headquarters, is_active) values (50, 'Talane', 'Ukraine', 'Medenychi', 1);
-- insert into company (id, name, country, headquarters, is_active) values (51, 'Avamm', 'Indonesia', 'Cimuncang', 1);
-- insert into company (id, name, country, headquarters, is_active) values (52, 'Skippad', 'Lithuania', 'Aleksotas', 1);
-- insert into company (id, name, country, headquarters, is_active) values (53, 'Digitube', 'Philippines', 'Alegria', 1);
-- insert into company (id, name, country, headquarters, is_active) values (54, 'Eabox', 'Argentina', 'San Pedro', 1);
-- insert into company (id, name, country, headquarters, is_active) values (55, 'Meemm', 'Cuba', 'Guantánamo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (56, 'Twitterwire', 'Jamaica', 'Bethel Town', 1);
-- insert into company (id, name, country, headquarters, is_active) values (57, 'Avamba', 'Guatemala', 'Santa Cruz Muluá', 1);
-- insert into company (id, name, country, headquarters, is_active) values (58, 'Avaveo', 'Czech Republic', 'Dolní Dunajovice', 1);
-- insert into company (id, name, country, headquarters, is_active) values (59, 'Abatz', 'Russia', 'Baykalovo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (60, 'Realblab', 'China', 'Lüyang', 1);
-- insert into company (id, name, country, headquarters, is_active) values (61, 'Cogilith', 'Philippines', 'Usab', 1);
-- insert into company (id, name, country, headquarters, is_active) values (62, 'Yabox', 'Poland', 'Żarki', 1);
-- insert into company (id, name, country, headquarters, is_active) values (63, 'Gabcube', 'Iran', 'Fāryāb', 1);
-- insert into company (id, name, country, headquarters, is_active) values (64, 'Avaveo', 'Argentina', 'Berón de Astrada', 1);
-- insert into company (id, name, country, headquarters, is_active) values (65, 'Linklinks', 'Germany', 'Bochum', 1);
-- insert into company (id, name, country, headquarters, is_active) values (66, 'Ntag', 'Russia', 'Magnitogorsk', 1);
-- insert into company (id, name, country, headquarters, is_active) values (67, 'Riffpedia', 'China', 'Sishan', 1);
-- insert into company (id, name, country, headquarters, is_active) values (68, 'Photolist', 'Russia', 'Zyuzino', 1);
-- insert into company (id, name, country, headquarters, is_active) values (69, 'Blogpad', 'Afghanistan', 'Asmar', 1);
-- insert into company (id, name, country, headquarters, is_active) values (70, 'Realmix', 'Pakistan', 'Moro', 1);
-- insert into company (id, name, country, headquarters, is_active) values (71, 'Skalith', 'France', 'Cergy-Pontoise', 1);
-- insert into company (id, name, country, headquarters, is_active) values (72, 'Dynabox', 'China', 'Qinglung', 1);
-- insert into company (id, name, country, headquarters, is_active) values (73, 'Ooba', 'Indonesia', 'Kadupayung', 1);
-- insert into company (id, name, country, headquarters, is_active) values (74, 'Skidoo', 'Sweden', 'Karlskoga', 1);
-- insert into company (id, name, country, headquarters, is_active) values (75, 'Babbleblab', 'Philippines', 'Kalawit', 1);
-- insert into company (id, name, country, headquarters, is_active) values (76, 'Fiveclub', 'Indonesia', 'Pekalongan', 1);
-- insert into company (id, name, country, headquarters, is_active) values (77, 'Thoughtsphere', 'France', 'Sélestat', 1);
-- insert into company (id, name, country, headquarters, is_active) values (78, 'Thoughtstorm', 'Serbia', 'Sremska Mitrovica', 1);
-- insert into company (id, name, country, headquarters, is_active) values (79, 'Miboo', 'Panama', 'Cerro Punta', 1);
-- insert into company (id, name, country, headquarters, is_active) values (80, 'Dabjam', 'Indonesia', 'Cibiru', 1);
-- insert into company (id, name, country, headquarters, is_active) values (81, 'Flipopia', 'Argentina', 'Concepción', 1);
-- insert into company (id, name, country, headquarters, is_active) values (82, 'Camido', 'Indonesia', 'Waihibar', 1);
-- insert into company (id, name, country, headquarters, is_active) values (83, 'Mydo', 'Nigeria', 'Zango', 1);
-- insert into company (id, name, country, headquarters, is_active) values (84, 'Katz', 'China', 'Daping', 1);
-- insert into company (id, name, country, headquarters, is_active) values (85, 'Omba', 'Bulgaria', 'Bukhovo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (86, 'Shuffletag', 'Indonesia', 'Batangtoru', 1);
-- insert into company (id, name, country, headquarters, is_active) values (87, 'Divanoodle', 'Portugal', 'Requião', 1);
-- insert into company (id, name, country, headquarters, is_active) values (88, 'Skajo', 'Ukraine', 'Berestechko', 1);
-- insert into company (id, name, country, headquarters, is_active) values (89, 'Camimbo', 'Finland', 'Pudasjärvi', 1);
-- insert into company (id, name, country, headquarters, is_active) values (90, 'Devcast', 'Philippines', 'Upper San Mateo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (91, 'Yadel', 'Honduras', 'Reitoca', 1);
-- insert into company (id, name, country, headquarters, is_active) values (92, 'Edgeclub', 'Canada', 'Leduc', 1);
-- insert into company (id, name, country, headquarters, is_active) values (93, 'Buzzdog', 'France', 'Saint-Denis', 1);
-- insert into company (id, name, country, headquarters, is_active) values (94, 'Tagcat', 'Indonesia', 'Sikka', 1);
-- insert into company (id, name, country, headquarters, is_active) values (95, 'Latz', 'Indonesia', 'Titiakar', 1);
-- insert into company (id, name, country, headquarters, is_active) values (96, 'Meevee', 'Indonesia', 'Kasonawejo', 1);
-- insert into company (id, name, country, headquarters, is_active) values (97, 'Fatz', 'Russia', 'Nikulino', 1);
-- insert into company (id, name, country, headquarters, is_active) values (98, 'Thoughtstorm', 'Philippines', 'Bungsuan', 1);
-- insert into company (id, name, country, headquarters, is_active) values (99, 'Eazzy', 'China', 'Geyuan', 1);
-- insert into company (id, name, country, headquarters, is_active) values (100, 'Voonyx', 'China', 'Rifeng', 1);





      -- ------------------------------- ROLES -------------------------------





create table roles (
	id INT,
	name VARCHAR(50),
	is_active INT);
insert into roles (id, name, is_active) values (1, 'admin', 1);
insert into roles (id, name, is_active) values (2, 'Safety Technician I', 1);
insert into roles (id, name, is_active) values (3, 'Dental Hygienist', 1);







  -- ----------------------------------- USERS -------------------------------------------




create table users (
	id INT,
	username VARCHAR(50),
	password VARCHAR(500),
	company_id_id INT,
	role_id_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	is_active INT);



insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, 1, 'Tyne', 'Robertz', 1);


insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (2, 'bgoff1', 'uQ5AGd33j', 8, 1, 'Brnaby', 'Goff', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (3, 'bocannavan2', 'e82WYovF', 2, 1, 'Bucky', 'O''Cannavan', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (4, 'gmartine3', 'dEz2qh10e', 4, 1, 'Gay', 'Martine', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (5, 'dcondy4', 'UfKpST5', 16, 1, 'Dill', 'Condy', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (6, 'cgrissett5', 'gJr8K6WzF', 2, 1, 'Cullen', 'Grissett', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (7, 'ccable6', 'bxKPMwrO2pYi', 3, 1, 'Casi', 'Cable', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (8, 'rhassur7', 'cjXvMWkkK', 5, 1, 'Robbie', 'Hassur', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (9, 'varon8', 'HX7Xq8', 4, 1, 'Vidovic', 'Aron', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (10, 'abedminster9', 'RK0yiz6', 9, 1, 'Arlee', 'Bedminster', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (11, 'nshuttlea', 'Ml6Wj7j', 5, 1, 'Nannie', 'Shuttle', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (12, 'sferenczb', '1MBjooz5h', 4, 1, 'Sumner', 'Ferencz', 1);
insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (13, 'gsamwayesc', 'cG8M9TAv0h', 5, 1, 'Glynnis', 'Samwayes', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (14, 'cegelld', 'WdLMZ1bVV', 47, 1, 'Clair', 'Egell', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (15, 'rfaveye', 'LZTuQIFQ', 28, 1, 'Rockwell', 'Favey', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (16, 'lbissettf', 'sodjLR', 71, 1, 'Lazarus', 'Bissett', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (17, 'gwarkupg', 'meWxa9', 66, 1, 'Garvy', 'Warkup', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (18, 'gcawsonh', 'XWiKripBJ', 47, 1, 'Gaylord', 'Cawson', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (19, 'grootei', 'ZEP5cIKx6J2r', 4, 1, 'Gregoire', 'Roote', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (20, 'bloutheanej', 'yIpLolbh', 99, 1, 'Bendicty', 'Loutheane', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (21, 'gfigguresk', 'V5nGw9A', 98, 1, 'Giselbert', 'Figgures', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (22, 'bmessittl', 'DhImN7hjZyTj', 33, 1, 'Bette', 'Messitt', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (23, 'alawlingm', 'Ecc0uHA2Yai', 78, 1, 'Anallese', 'Lawling', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (24, 'mevittsn', '7NWpp2TNQSi', 71, 1, 'Margaretta', 'Evitts', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (25, 'bquarleso', 'ktBeKpX', 21, 1, 'Berton', 'Quarles', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (26, 'dbenwellp', 'kkqr9vcsdXv', 28, 1, 'Darryl', 'Benwell', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (27, 'egarletteq', 'kslu7i', 79, 1, 'Ermengarde', 'Garlette', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (28, 'ododmanr', 'C1dLGOZ', 61, 1, 'Ossie', 'Dodman', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (29, 'foloughanes', 'gNFXKM5WjCcB', 69, 1, 'Florence', 'O''Loughane', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (30, 'bjelkt', 'euTBfA', 2, 1, 'Bren', 'Jelk', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (31, 'rskadeu', 'Ax8kpqVCBK', 36, 1, 'Rad', 'Skade', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (32, 'jpaddisonv', 'JbY0RpyawfH', 44, 1, 'Jeana', 'Paddison', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (33, 'nellertonw', 'qcNCzw6BAUZA', 1, 1, 'Niel', 'Ellerton', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (34, 'nschiesterlx', 'mFtXNryy', 50, 1, 'Nertie', 'Schiesterl', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (35, 'mramsteady', 'xxmdYwfFONW', 61, 1, 'Marjorie', 'Ramstead', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (36, 'averryanz', 'Fa411oe', 81, 1, 'Aube', 'Verryan', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (37, 'ykersting10', '9l4LWx7Oeh', 41, 1, 'Yves', 'Kersting', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (38, 'lhurry11', 'hlzJi7m', 22, 1, 'Lou', 'Hurry', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (39, 'cloncaster12', 'GxTJDISerqlw', 17, 1, 'Corine', 'Loncaster', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (40, 'rlenormand13', '9r3Nck', 21, 1, 'Roana', 'Lenormand', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (41, 'btebboth14', 'CqZMAnW6F', 32, 1, 'Blanch', 'Tebboth', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (42, 'kcoker15', 'fvbWfq2', 6, 1, 'Krissie', 'Coker', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (43, 'jdorsett16', 'CgE2dw', 30, 1, 'Jo', 'Dorsett', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (44, 'skobu17', 'CQLjL2LnU4m', 51, 1, 'Sibeal', 'Kobu', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (45, 'mpettis18', 'zknKC0YX', 53, 1, 'Miriam', 'Pettis', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (46, 'kdallison19', 'C2G2pvDB', 64, 1, 'Kerry', 'Dallison', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (47, 'nrubinowitz1a', 'HRMT2Q3xk', 86, 1, 'Norry', 'Rubinowitz', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (48, 'jcortes1b', '2OZMUgQR', 80, 1, 'Janeczka', 'Cortes', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (49, 'cscoyles1c', 'mXnDBIA', 39, 1, 'Cosimo', 'Scoyles', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (50, 'ktownshend1d', '0zCdNnNgfAQ', 85, 1, 'Kiel', 'Townshend', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (51, 'mdruett1e', '87OZeD1', 27, 1, 'Mathe', 'Druett', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (52, 'pdengel1f', 'xIyawHcgbz', 76, 1, 'Patrice', 'Dengel', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (53, 'epinnigar1g', 'Hv8aMNqy8P', 5, 1, 'Em', 'Pinnigar', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (54, 'ivivian1h', 'XtRvEm', 87, 1, 'Imogene', 'Vivian', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (55, 'jurion1i', 'tvMrENoF', 31, 1, 'Jane', 'Urion', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (56, 'jbullas1j', 'zGdP2jH3LP', 76, 1, 'Joelly', 'Bullas', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (57, 'gmclaren1k', '4bxXb9Kb1aU', 80, 1, 'Giavani', 'McLaren', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (58, 'aesslement1l', 'xxpzDmlN', 87, 1, 'Aube', 'Esslement', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (59, 'dmoggie1m', 'ASsUPi2', 66, 1, 'Domenico', 'Moggie', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (60, 'lbrager1n', 'DAViKt', 24, 1, 'Lief', 'Brager', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (61, 'slochead1o', 'BwKbOCEQh', 90, 1, 'Sadye', 'Lochead', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (62, 'cplank1p', 'tdKkONIRIb', 82, 1, 'Christin', 'Plank', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (63, 'nglasser1q', 'sANWmPrQ', 13, 1, 'Nap', 'Glasser', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (64, 'gshottin1r', 'vTMGrh', 24, 1, 'Gregoire', 'Shottin', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (65, 'gfarnill1s', 'jktfRw4', 77, 1, 'Gabby', 'Farnill', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (66, 'obrisard1t', 'FrW66U0go', 22, 1, 'Ophelie', 'Brisard', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (67, 'lmargerison1u', '1jzvYb', 77, 1, 'Lusa', 'Margerison', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (68, 'lgwyn1v', 'XrGErl', 80, 1, 'Larissa', 'Gwyn', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (69, 'cjacson1w', 'c8QI6AypSO', 1, 1, 'Cameron', 'Jacson', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (70, 'kbodicam1x', 'PmbLD1yJZVB6', 16, 1, 'Kevan', 'Bodicam', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (71, 'twyldish1y', 'tqOQNVKMJeKu', 44, 1, 'Taylor', 'Wyldish', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (72, 'fclaque1z', 'MCFtxrnU', 75, 1, 'Fiann', 'Claque', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (73, 'smosdell20', '2zwDUOcEW', 42, 1, 'Sterne', 'Mosdell', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (74, 'btimmons21', 'Ql9DR9uamw', 52, 1, 'Bone', 'Timmons', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (75, 'akwietak22', 'wSt3gdDqUg', 36, 1, 'Adorne', 'Kwietak', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (76, 'khindmoor23', 'x5ugrziSj1jr', 80, 1, 'Kania', 'Hindmoor', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (77, 'cberic24', 'tp4bsI', 17, 1, 'Claybourne', 'Beric', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (78, 'eingry25', 'tpxD7RYte', 61, 1, 'Ernie', 'Ingry', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (79, 'worteau26', 'a21uRneC', 61, 1, 'Waverly', 'Orteau', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (80, 'vjewel27', 'OVngJoA', 68, 1, 'Vivi', 'Jewel', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (81, 'ccanto28', 'raKNKiNv4S', 3, 1, 'Carlota', 'Canto', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (82, 'rhuygen29', 'ADHvTVz8', 94, 1, 'Romeo', 'Huygen', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (83, 'ntrett2a', 'jlvbMnT8Qde0', 22, 1, 'Nelly', 'Trett', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (84, 'cgerault2b', 'aMuMr3', 74, 1, 'Claudianus', 'Gerault', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (85, 'npress2c', 'c4qO6RUTS', 65, 1, 'Noelani', 'Press', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (86, 'tgabel2d', 'ksJTh0bipxCe', 72, 1, 'Tonye', 'Gabel', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (87, 'kcoyett2e', 'OOyTR0bDO0Z', 88, 1, 'Kissiah', 'Coyett', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (88, 'dpendrich2f', 'TdNtksTf2', 85, 1, 'Donnamarie', 'Pendrich', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (89, 'bletchmore2g', 'a4gOEh1', 94, 1, 'Bernetta', 'Letchmore', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (90, 'eburgess2h', 'FyBihkr4LSx', 13, 1, 'Elliot', 'Burgess', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (91, 'preiner2i', 'Ge7nWV4', 61, 1, 'Pinchas', 'Reiner', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (92, 'mmcquaide2j', '9LVFu0NLi', 13, 1, 'Melony', 'McQuaide', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (93, 'eduplain2k', 'Gc1S7Un', 61, 1, 'Ellary', 'Duplain', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (94, 'vmocker2l', 'rzl3en', 42, 1, 'Vance', 'Mocker', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (95, 'blartice2m', 'hB0EIk0hYIJ', 77, 1, 'Basia', 'Lartice', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (96, 'acaulfield2n', 'YszldGgn', 23, 1, 'Adelaide', 'Caulfield', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (97, 'ksantorini2o', 'GuC1neZ', 12, 1, 'Kala', 'Santorini', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (98, 'rgiamo2p', 'wiG07or', 26, 1, 'Rabbi', 'Giamo', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (99, 'sseabrocke2q', 'HkMNpwsPxY', 88, 1, 'Selby', 'Seabrocke', 1);
-- insert into users (id, username, password, company_id_id, role_id_id, first_name, last_name, is_active) values (100, 'lfollit2r', 'lLqYlXveZO9q', 0, 1, 'Law', 'Follit', 1);




-- AIRPORT---------------------------------


create table airport (
	id INT,
	name VARCHAR(50),
	city VARCHAR(50),
	country VARCHAR(50),
	is_active INT);
insert into airport (id, name, city, country, is_active) values (1, 'Menomonie', 'Huangmei', 'China', 1);
insert into airport (id, name, city, country, is_active) values (2, 'Wayridge', 'Eiriz', 'Portugal', 1);
insert into airport (id, name, city, country, is_active) values (3, 'Debra', 'Vittel', 'France', 1);
insert into airport (id, name, city, country, is_active) values (4, 'Dottie', 'Gubeikou', 'China', 1);
insert into airport (id, name, city, country, is_active) values (5, 'Westerfield', 'Wuhu', 'China', 1);
insert into airport (id, name, city, country, is_active) values (6, 'High Crossing', 'Khandagayty', 'Russia', 1);
insert into airport (id, name, city, country, is_active) values (7, 'Toban', 'Klatovy', 'Czech Republic', 1);
insert into airport (id, name, city, country, is_active) values (8, 'Russell', 'Georgiyevka', 'Russia', 1);
insert into airport (id, name, city, country, is_active) values (9, 'Schlimgen', 'Brooklyn', 'United States', 1);
insert into airport (id, name, city, country, is_active) values (10, 'Manufacturers', 'Sogamoso', 'Colombia', 1);
-- insert into airport (id, name, city, country, is_active) values (11, 'Mandrake', 'São Pedro', 'Brazil', 1);
-- insert into airport (id, name, city, country, is_active) values (12, 'Evergreen', 'Krasne', 'Ukraine', 1);
-- insert into airport (id, name, city, country, is_active) values (13, 'Kennedy', 'Paris 08', 'France', 1);
-- insert into airport (id, name, city, country, is_active) values (14, 'Sachs', 'Sumberngerjat', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (15, 'Jana', 'Lewolen', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (16, 'Boyd', 'Pergamos', 'Cyprus', 1);
-- insert into airport (id, name, city, country, is_active) values (17, 'Maple Wood', 'Mangunjaya', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (18, 'Gina', 'Tawangrejo', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (19, 'Debs', 'Karlsruhe', 'Germany', 1);
-- insert into airport (id, name, city, country, is_active) values (20, 'Hoard', 'Takāb', 'Iran', 1);
-- insert into airport (id, name, city, country, is_active) values (21, 'Hagan', 'Télimélé', 'Guinea', 1);
-- insert into airport (id, name, city, country, is_active) values (22, 'Westerfield', 'Podolí', 'Czech Republic', 1);
-- insert into airport (id, name, city, country, is_active) values (23, 'Reinke', 'Jabranti', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (24, 'Bellgrove', 'Hongjia', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (25, 'Lawn', 'Cishangang', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (26, 'Green', 'Takamatsu-shi', 'Japan', 1);
-- insert into airport (id, name, city, country, is_active) values (27, 'Morningstar', 'Milton', 'United Kingdom', 1);
-- insert into airport (id, name, city, country, is_active) values (28, 'Dayton', 'Burgeo', 'Canada', 1);
-- insert into airport (id, name, city, country, is_active) values (29, 'Graedel', 'Ilare', 'Nigeria', 1);
-- insert into airport (id, name, city, country, is_active) values (30, 'Gerald', 'Del Pilar', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (31, 'School', 'Tsukuba', 'Japan', 1);
-- insert into airport (id, name, city, country, is_active) values (32, 'Tennessee', 'Ajoyani', 'Peru', 1);
-- insert into airport (id, name, city, country, is_active) values (33, 'Fallview', 'Patong', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (34, 'Dottie', 'Åkersberga', 'Sweden', 1);
-- insert into airport (id, name, city, country, is_active) values (35, 'Fairfield', 'Fujioka', 'Japan', 1);
-- insert into airport (id, name, city, country, is_active) values (36, 'Northfield', 'Kolsh', 'Albania', 1);
-- insert into airport (id, name, city, country, is_active) values (37, 'John Wall', 'Seremban', 'Malaysia', 1);
-- insert into airport (id, name, city, country, is_active) values (38, 'Sloan', 'Huilong', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (39, 'Dorton', 'Cumming', 'United States', 1);
-- insert into airport (id, name, city, country, is_active) values (40, 'Sachtjen', 'Vol’sk', 'Russia', 1);
-- insert into airport (id, name, city, country, is_active) values (41, 'Transport', 'Fada N''gourma', 'Burkina Faso', 1);
-- insert into airport (id, name, city, country, is_active) values (42, 'Hovde', 'Gujiang', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (43, 'Dennis', 'Zouma', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (44, 'Macpherson', 'Mileb', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (45, 'Cambridge', 'Calibutbut', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (46, 'Bowman', 'Staritsa', 'Russia', 1);
-- insert into airport (id, name, city, country, is_active) values (47, 'Milwaukee', 'West End', 'United Kingdom', 1);
-- insert into airport (id, name, city, country, is_active) values (48, 'Northfield', 'Leteki', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (49, 'Mifflin', 'Komorní Lhotka', 'Czech Republic', 1);
-- insert into airport (id, name, city, country, is_active) values (50, 'International', 'Rawannawi Village', 'Kiribati', 1);
-- insert into airport (id, name, city, country, is_active) values (51, 'Autumn Leaf', 'Rasony', 'Belarus', 1);
-- insert into airport (id, name, city, country, is_active) values (52, 'Carpenter', 'Kallíthiron', 'Greece', 1);
-- insert into airport (id, name, city, country, is_active) values (53, 'Golf Course', 'Douz', 'Tunisia', 1);
-- insert into airport (id, name, city, country, is_active) values (54, 'Westport', 'Rengat', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (55, 'Montana', 'Tucson', 'United States', 1);
-- insert into airport (id, name, city, country, is_active) values (56, 'Sauthoff', 'Gevgelija', 'Macedonia', 1);
-- insert into airport (id, name, city, country, is_active) values (57, 'Charing Cross', 'Bakung', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (58, 'Delaware', 'Dubăsari', 'Moldova', 1);
-- insert into airport (id, name, city, country, is_active) values (59, 'Longview', 'Kirkop', 'Malta', 1);
-- insert into airport (id, name, city, country, is_active) values (60, 'Redwing', 'Akune', 'Japan', 1);
-- insert into airport (id, name, city, country, is_active) values (61, 'Annamark', 'Roissy Charles-de-Gaulle', 'France', 1);
-- insert into airport (id, name, city, country, is_active) values (62, 'Tomscot', 'Daugavpils', 'Latvia', 1);
-- insert into airport (id, name, city, country, is_active) values (63, 'Ramsey', 'Jishui', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (64, 'Stuart', 'Krapina', 'Croatia', 1);
-- insert into airport (id, name, city, country, is_active) values (65, 'Bartillon', 'Janowiec', 'Poland', 1);
-- insert into airport (id, name, city, country, is_active) values (66, 'Pierstorff', 'Dafengdui', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (67, 'Kipling', 'Marseille', 'France', 1);
-- insert into airport (id, name, city, country, is_active) values (68, 'Morningstar', 'Greda', 'Croatia', 1);
-- insert into airport (id, name, city, country, is_active) values (69, 'Valley Edge', 'Kuala Lumpur', 'Malaysia', 1);
-- insert into airport (id, name, city, country, is_active) values (70, 'Morning', 'San Pedro One', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (71, 'Dennis', 'Qianshan', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (72, 'Sycamore', 'Tsimkavichy', 'Belarus', 1);
-- insert into airport (id, name, city, country, is_active) values (73, 'Glacier Hill', 'Támara', 'Honduras', 1);
-- insert into airport (id, name, city, country, is_active) values (74, 'Golden Leaf', 'San Simón', 'Venezuela', 1);
-- insert into airport (id, name, city, country, is_active) values (75, 'Moulton', 'Kampene', 'Democratic Republic of the Congo', 1);
-- insert into airport (id, name, city, country, is_active) values (76, 'Northland', 'Cheping', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (77, 'Crest Line', 'Gvardeysk', 'Russia', 1);
-- insert into airport (id, name, city, country, is_active) values (78, 'Oak Valley', 'Kodinsk', 'Russia', 1);
-- insert into airport (id, name, city, country, is_active) values (79, 'Nova', 'Tengah', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (80, 'Carioca', 'Genang', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (81, 'David', 'Oni', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (82, 'Harper', 'Liberia', 'Costa Rica', 1);
-- insert into airport (id, name, city, country, is_active) values (83, 'Clove', 'Portela', 'Portugal', 1);
-- insert into airport (id, name, city, country, is_active) values (84, '2nd', 'Budapest', 'Hungary', 1);
-- insert into airport (id, name, city, country, is_active) values (85, 'Sutteridge', 'Bateria', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (86, 'Haas', 'Kiel', 'Germany', 1);
-- insert into airport (id, name, city, country, is_active) values (87, 'Red Cloud', 'Changjiang', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (88, 'Scoville', 'Sinfra', 'Ivory Coast', 1);
-- insert into airport (id, name, city, country, is_active) values (89, 'Park Meadow', 'Rzhev', 'Russia', 1);
-- insert into airport (id, name, city, country, is_active) values (90, 'Johnson', 'Guilin', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (91, 'Lake View', 'Sutukoba', 'Gambia', 1);
-- insert into airport (id, name, city, country, is_active) values (92, 'Carioca', 'Tignoan', 'Philippines', 1);
-- insert into airport (id, name, city, country, is_active) values (93, 'Pepper Wood', 'Entebbe', 'Uganda', 1);
-- insert into airport (id, name, city, country, is_active) values (94, 'Ridge Oak', 'Tongren', 'China', 1);
-- insert into airport (id, name, city, country, is_active) values (95, 'Granby', 'Kalanchak', 'Ukraine', 1);
-- insert into airport (id, name, city, country, is_active) values (96, 'Hollow Ridge', 'Rancabuaya', 'Indonesia', 1);
-- insert into airport (id, name, city, country, is_active) values (97, 'Thackeray', 'Mateur', 'Tunisia', 1);
-- insert into airport (id, name, city, country, is_active) values (98, 'Rigney', 'Serrinha', 'Brazil', 1);
-- insert into airport (id, name, city, country, is_active) values (99, 'Kedzie', 'Cergy-Pontoise', 'France', 1);
-- insert into airport (id, name, city, country, is_active) values (100, '3rd', 'Sedziszow', 'Poland', 1);
-- -- 



  -- Plane---------------------------------


create table plane (
	id INT,
	model VARCHAR(50),
	registration_id VARCHAR(40),
	company_id_id INT,
	nr_sits INT,
	is_active INT
);


insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (1, '944', 'c0e28513-0a55-48a8-9038-79f145fc4d6e', 1, 1, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (2, 'Aurora', '284b1561-a001-4e9e-9391-6996cacfb135', 2, 2, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (3, 'MDX', '003b1087-0960-4b2e-b269-b12a0cd3f7f0', 3, 3, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (4, 'RSX', 'ca455ec6-ef2f-428d-af5a-2bd910312a0b', 4, 4, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (5, '911', 'db2f0e17-7035-44ad-87e3-842061376c2d', 5, 5, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (6, 'Tacoma', '43cfeb36-085e-4823-a577-b962fc5b19f6', 6, 6, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (7, 'Phantom', '9932d97d-37f0-4747-b1e8-d61042dce40e', 7, 7, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (8, 'Avalanche 2500', '2385c3b3-35f4-4608-9eda-c85f2e5cc517', 8, 8, 1);
insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (9, 'RX-7', '1baa4fb0-dc1d-4747-8dd3-41afeb30cdfd', 9, 9, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (10, '98', '401d8e4e-72f0-4eb8-a3d4-9ac5d7a2f93e', 10, 10, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (11, 'Discovery', 'ab78f748-ccec-495d-9e8d-af20dfb0ccf2', 11, 11, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (12, 'XG300', '3748b0b0-bdee-4ce8-995b-8cc8c45be1b5', 12, 12, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (13, 'XLR', '6a1a9708-db85-4abe-a875-7558fc334857', 13, 13, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (14, 'Sonoma Club Coupe', 'b987711d-5554-45f2-86e7-fca918ffb512', 14, 14, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (15, 'Insight', '5c213baa-be40-478c-b4e0-2e58358034ce', 15, 15, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (16, 'Firebird', '2762a8aa-040a-47f2-b86a-f5d094bdfe82', 16, 16, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (17, 'Sable', '63e5abcb-eeac-49ee-981a-4f02d1345a42', 17, 17, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (18, 'Sienna', '821943d9-1294-4904-b790-aef4024de60a', 18, 18, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (19, 'Grand Caravan', '6519d13d-f3a5-4a53-ae16-41ce50d82135', 19, 19, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (20, 'G-Series G10', '8a4e8fe5-2f5a-4d08-a57d-3e28ffeee6e6', 20, 20, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (21, 'Five Hundred', 'b8a13ed0-686a-4d2a-8629-3646ad34f88a', 21, 21, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (22, 'Celica', '6aa6c791-30b0-4efe-9371-651d88654904', 22, 22, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (23, 'S6', 'e398f19f-489d-4f67-937f-1ec88bf07012', 23, 23, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (24, 'Rodeo', '34ca5132-3f45-40a0-8fa5-35ee16a8ae0b', 24, 24, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (25, 'MDX', 'a3e08a05-7a54-49ec-a887-c282223139b3', 25, 25, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (26, 'Montego', '97f2e1f2-498f-4cf8-9a29-531bad4f3456', 26, 26, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (27, 'Continental Super', 'e44e8c70-02f7-4ee0-87e7-2710ede63c67', 27, 27, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (28, 'Chariot', '8e890281-b913-4a71-b55d-114cb1169cd6', 28, 28, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (29, 'Yukon XL 2500', 'f25e6839-b99e-417d-83cf-055f3d20e57b', 29, 29, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (30, 'CL-Class', '3bf14a26-1962-45d4-a551-9e69b1364bf4', 30, 30, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (31, 'F-Series', '4ed865e4-3042-4231-8516-ef72a520c0cf', 31, 31, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (32, 'Daytona', '80f00fe4-0ece-4605-988c-63f5c0cd2d7f', 32, 32, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (33, 'Corvette', '4f74a9fd-e214-434f-9f4b-ec6b69d55b83', 33, 33, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (34, 'Corolla', '7067fad3-0d0c-4465-bbd9-2c09bb12cdbb', 34, 34, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (35, 'Express 1500', '13251f0d-f3d6-49c4-a076-fe7ce55c943e', 35, 35, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (36, 'M5', 'aadec095-d855-4e75-9b79-81a108fd5353', 36, 36, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (37, 'Escort', '764815fd-7f8c-49df-89fe-85919d85e690', 37, 37, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (38, 'TrailBlazer', 'ee9d879f-04d7-4115-b71e-8188e791e42e', 38, 38, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (39, 'Impala SS', '500dae29-763f-42e4-bfe7-d9f0ed1bbaa2', 39, 39, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (40, 'Golf', 'f28cca3a-b4fa-4a9e-9a0d-d339dbe93311', 40, 40, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (41, 'X6', 'ffb5ece6-7f53-4ae4-a4d6-cdfe7d3f6bb0', 41, 41, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (42, 'Malibu', '8c9cc0c2-108e-494c-9cfc-d3eef5a714c2', 42, 42, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (43, 'Corrado', '76a376cb-0c2a-4bfa-ad97-adcb5d292da8', 43, 43, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (44, 'Chariot', '38ca0fa4-4f02-4570-a888-485db3d81d06', 44, 44, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (45, 'Highlander', 'd7b6dc05-e829-4215-93ed-48269eff167b', 45, 45, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (46, 'Grand Vitara', 'e373f14a-bfda-4352-808f-92cfa73f58bd', 46, 46, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (47, 'V8', '1c62b463-137f-4925-8cac-b5d7e846eb6e', 47, 47, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (48, 'Suburban 1500', '9306d04f-877e-4f98-b21e-70ea97961330', 48, 48, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (49, '300CE', '1477833c-57d2-42b1-ae09-1bfee4205d43', 49, 49, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (50, 'E-Class', '1d3c8c3e-acec-47a7-abae-004a983080db', 50, 50, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (51, 'Aero 8', '74d64d2c-b0b9-4afc-a4e1-1f886dd8caf8', 51, 51, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (52, 'Blazer', '4309678f-ec83-4dbe-8a8f-857f85ba123b', 52, 52, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (53, 'Hombre Space', '5b439779-a8f9-4a85-9021-019dd3b45733', 53, 53, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (54, 'A8', '234140d2-7a75-45d8-8258-f55ac0850958', 54, 54, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (55, 'GTI', 'e7fd9316-cffc-46c8-bb01-1e6e9a766e8f', 55, 55, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (56, 'Biturbo', 'dd342ca1-9c05-4fff-a2c9-d418c9bc698e', 56, 56, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (57, 'F250', '82cbe91a-64b9-4859-ab20-409ea4921d9a', 57, 57, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (58, '350Z Roadster', '37ada20c-8d65-4cf6-8f1d-6fedac3b92d4', 58, 58, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (59, 'Monte Carlo', '29a969ea-799d-45bf-8e39-7fc4544c1553', 59, 59, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (60, 'Miata MX-5', '7a4cc34d-210e-4ea1-b060-d0a384311f46', 60, 60, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (61, 'Elantra', '2e5cbd76-0864-4668-99ca-b01a25c1a680', 61, 61, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (62, 'Accent', '57e99e64-71dd-4935-9835-9a63c0f70c61', 62, 62, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (63, 'Esprit', 'c2f7b099-3981-4a2f-a76e-009590ae4e16', 63, 63, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (64, '3000GT', '3285aeda-a501-4092-ab6e-aca972b0b507', 64, 64, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (65, 'Cavalier', 'ca6d1c00-16fe-43a6-9102-2fb8f30017ce', 65, 65, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (66, 'Santa Fe', '4ebdeb01-268c-40d3-b9fb-325c95d25a0c', 66, 66, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (67, 'Rally Wagon G3500', '1727c8e0-47f4-4c77-98ca-188ba32f8e0d', 67, 67, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (68, 'Mariner', '28d99f05-e585-42cb-8dca-483532e0fe46', 68, 68, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (69, 'CTS', 'bc52cdfe-d1d1-47ef-a53e-642242bca369', 69, 69, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (70, 'Mazda5', '4f605b1b-ed9d-4983-95de-6686e6a75d74', 70, 70, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (71, 'Century', '62e4473b-80fc-405d-afcf-9564f0b77747', 71, 71, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (72, 'Mulsanne', '9d96c994-71cc-4125-b97e-3953a895a6c6', 72, 72, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (73, 'Summit', 'a5b7c8bb-fa44-4631-b962-17466a14d396', 73, 73, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (74, 'DTS', '4c0610c6-b674-479d-a3fb-b36828e73774', 74, 74, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (75, 'Tahoe', 'c721d202-adfa-45ce-9f90-1f232d76649c', 75, 75, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (76, 'Grand Prix', '69ebc317-d5e7-4b93-9c95-1c764a94b4ab', 76, 76, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (77, 'Swift', 'a0dcb5c5-8354-4e5d-abd3-5814758fe3d9', 77, 77, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (78, '240', '3bde87b6-cbbf-418b-96dd-9819500cc940', 78, 78, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (79, 'Kizashi', 'cb3e9747-d10c-4bef-90cd-475f6960d86a', 79, 79, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (80, 'Starion', '3c60a9b8-08ba-4077-bc0c-d43ad9862fc9', 80, 80, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (81, 'Golf', '6006fff8-ddca-4baf-af4a-faca5690bb12', 81, 81, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (82, 'Stratus', '8bdf9a70-a807-425f-83be-4266749452b8', 82, 82, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (83, 'D150', '167c4d13-d439-4b16-afa2-5f9ba96a9dde', 83, 83, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (84, 'Miata MX-5', 'ef1cc62c-a45b-4491-a4df-53c11f7907b2', 84, 84, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (85, 'C70', '99476cd1-5b17-4658-abc5-c25278e82890', 85, 85, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (86, 'Grand Am', 'e79a1ef4-c4a7-41cf-9565-1755ad1f8a3e', 86, 86, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (87, '325', 'fa58c0e1-8a39-49e4-90de-0bd6de4f0868', 87, 87, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (88, 'Dakota', 'fafba076-0e95-45fc-b7dd-bab98c2d0ab3', 88, 88, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (89, '6000', '0e068c5d-c974-45ee-b699-bbdccb1eb5f2', 89, 89, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (90, 'Forester', '4b716fbd-3243-404e-a2f1-deb178f6e79a', 90, 90, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (91, 'V8 Vantage', '5c0e419d-2c6c-43e6-95a8-1e2fd2f9ff50', 91, 91, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (92, 'VUE', 'bf50f8f4-b73d-4af3-810d-871df62a3858', 92, 92, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (93, 'Jetta', 'c2405535-ae27-4d65-9cfa-57e673ca80ec', 93, 93, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (94, 'CC', '8d57fd9e-c8d1-4ebf-a160-a1259fdb88af', 94, 94, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (95, 'FJ Cruiser', '997719f3-6f5a-4f67-ad33-5dd79403e57d', 95, 95, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (96, 'TrailBlazer', '349507ce-7c19-4d10-aef3-5b2d64727617', 96, 96, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (97, 'Sierra 2500', '220e2a27-c8b2-43b3-908c-3aa45575d121', 97, 97, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (98, 'F350', 'f8a7492f-c208-4f4a-94b0-0951350b8923', 98, 98, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (99, 'SRX', '6c144061-2996-472d-94bf-f3fa76b3079e', 99, 99, 1);
-- insert into plane (id, model, registration_id, company_id_id, nr_sits, is_active) values (100, 'Range Rover', '033988e6-3a4f-4551-9ada-e67ffffb7329', 100, 0, 1);


        --   FLIGHT TABLE ------------------------------


create table flight (
	id INT,
	plane_id_id INT,
	departure_airport_id INT,
	arival_airport_id INT,
	departure_time VARCHAR(50),
	arival_time VARCHAR(50),
	pilot_id INT
);

insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (1, 1, 2, 8, '2017-07-11 17:18:56', '2017-05-04 10:42:10', 1);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (2, 2, 8, 2, '2018-01-01 00:18:54', '2018-04-14 00:26:24', 2);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (3, 3, 2, 3, '2017-06-18 14:18:41', '2017-12-20 19:32:25', 3);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (4, 4, 2, 9, '2018-03-09 06:27:43', '2017-05-16 06:27:39', 4);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (5, 5, 4, 9, '2017-12-18 05:27:59', '2017-06-22 03:04:57', 5);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (6, 6, 9, 10, '2018-02-17 00:52:20', '2017-08-26 08:59:54', 6);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (7, 7, 8, 5, '2018-03-20 15:39:54', '2017-06-03 05:40:57', 7);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (8, 8, 8, 6, '2017-12-01 11:57:48', '2017-10-01 15:52:21', 8);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (9, 9, 2, 3, '2017-08-23 21:22:30', '2017-07-28 10:04:15', 3);
insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (10, 10, 10, 8, '2017-09-15 10:43:15', '2018-04-11 01:04:34', 2);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (13, 13, 13, 13, '23:17', '20:36', 13);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (14, 14, 14, 14, '18:46', '15:10', 14);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (15, 15, 15, 15, '11:21', '22:35', 15);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (16, 16, 16, 16, '3:22', '8:21', 16);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (17, 17, 17, 17, '13:46', '20:56', 17);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (18, 18, 18, 18, '11:20', '4:14', 18);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (19, 19, 19, 19, '16:34', '0:35', 19);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (20, 20, 20, 20, '17:43', '7:02', 20);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (21, 21, 21, 21, '8:54', '15:38', 21);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (22, 22, 22, 22, '13:26', '0:07', 22);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (23, 23, 23, 23, '5:46', '5:27', 23);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (24, 24, 24, 24, '1:34', '9:26', 24);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (25, 25, 25, 25, '11:24', '14:22', 25);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (26, 26, 26, 26, '4:27', '21:29', 26);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (27, 27, 27, 27, '23:02', '16:15', 27);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (28, 28, 28, 28, '6:29', '5:42', 28);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (29, 29, 29, 29, '19:56', '0:38', 29);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (30, 30, 30, 30, '2:21', '10:00', 30);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (31, 31, 31, 31, '20:43', '10:37', 31);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (32, 32, 32, 32, '14:59', '22:44', 32);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (33, 33, 33, 33, '17:46', '9:31', 33);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (34, 34, 34, 34, '12:25', '1:14', 34);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (35, 35, 35, 35, '17:52', '16:34', 35);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (36, 36, 36, 36, '21:33', '7:40', 36);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (37, 37, 37, 37, '0:38', '19:49', 37);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (38, 38, 38, 38, '11:17', '12:04', 38);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (39, 39, 39, 39, '4:00', '19:01', 39);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (40, 40, 40, 40, '6:08', '14:54', 40);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (41, 41, 41, 41, '5:54', '9:13', 41);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (42, 42, 42, 42, '4:43', '18:48', 42);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (43, 43, 43, 43, '20:35', '12:13', 43);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (44, 44, 44, 44, '16:11', '11:55', 44);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (45, 45, 45, 45, '19:02', '0:46', 45);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (46, 46, 46, 46, '3:51', '6:15', 46);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (47, 47, 47, 47, '13:36', '10:09', 47);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (48, 48, 48, 48, '18:09', '7:16', 48);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (49, 49, 49, 49, '1:17', '12:44', 49);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (50, 50, 50, 50, '17:23', '0:19', 50);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (51, 51, 51, 51, '16:24', '4:35', 51);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (52, 52, 52, 52, '7:07', '0:28', 52);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (53, 53, 53, 53, '16:31', '13:42', 53);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (54, 54, 54, 54, '5:59', '13:54', 54);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (55, 55, 55, 55, '21:54', '20:20', 55);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (56, 56, 56, 56, '13:12', '3:03', 56);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (57, 57, 57, 57, '18:36', '11:00', 57);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (58, 58, 58, 58, '8:24', '14:01', 58);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (59, 59, 59, 59, '14:03', '10:02', 59);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (60, 60, 60, 60, '16:18', '6:27', 60);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (61, 61, 61, 61, '6:29', '15:55', 61);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (62, 62, 62, 62, '23:42', '0:50', 62);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (63, 63, 63, 63, '9:09', '19:21', 63);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (64, 64, 64, 64, '20:57', '10:07', 64);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (65, 65, 65, 65, '2:17', '17:56', 65);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (66, 66, 66, 66, '15:10', '4:24', 66);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (67, 67, 67, 67, '5:53', '4:22', 67);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (68, 68, 68, 68, '14:57', '23:29', 68);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (69, 69, 69, 69, '19:02', '12:05', 69);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (70, 70, 70, 70, '13:11', '6:02', 70);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (71, 71, 71, 71, '1:54', '22:45', 71);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (72, 72, 72, 72, '5:19', '23:29', 72);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (73, 73, 73, 73, '10:13', '12:47', 73);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (74, 74, 74, 74, '23:43', '10:55', 74);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (75, 75, 75, 75, '20:37', '20:43', 75);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (76, 76, 76, 76, '11:09', '3:14', 76);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (77, 77, 77, 77, '21:38', '12:46', 77);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (78, 78, 78, 78, '13:14', '5:40', 78);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (79, 79, 79, 79, '3:49', '11:17', 79);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (80, 80, 80, 80, '18:41', '12:36', 80);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (81, 81, 81, 81, '1:33', '5:16', 81);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (82, 82, 82, 82, '19:48', '23:36', 82);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (83, 83, 83, 83, '9:34', '7:15', 83);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (84, 84, 84, 84, '13:41', '1:24', 84);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (85, 85, 85, 85, '12:05', '8:49', 85);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (86, 86, 86, 86, '9:50', '18:32', 86);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (87, 87, 87, 87, '10:18', '5:36', 87);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (88, 88, 88, 88, '18:32', '18:15', 88);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (89, 89, 89, 89, '10:42', '20:32', 89);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (90, 90, 90, 90, '6:13', '19:49', 90);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (91, 91, 91, 91, '1:38', '3:32', 91);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (92, 92, 92, 92, '18:16', '15:21', 92);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (93, 93, 93, 93, '3:01', '4:53', 93);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (94, 94, 94, 94, '11:13', '3:26', 94);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (95, 95, 95, 95, '12:47', '14:24', 95);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (96, 96, 96, 96, '21:30', '7:02', 96);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (97, 97, 97, 97, '22:32', '17:00', 97);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (98, 98, 98, 98, '10:31', '9:15', 98);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (99, 99, 99, 99, '2:10', '4:16', 99);
-- insert into flight (id, plane_id_id, departure_airport_id, arival_airport_id, departure_time, arival_time, pilot_id) values (100, 0, 0, 0, '14:30', '10:54', 0);




    -- Itinerary -----------------------------




create table itinerary (
	id INT,
	name VARCHAR(50)
);

insert into itinerary (id, name) values (1, 'Moca');
insert into itinerary (id, name) values (2, 'Xincheng Chengguanzhen');
insert into itinerary (id, name) values (3, 'Tvrdonice');
insert into itinerary (id, name) values (4, 'Aleksotas');
insert into itinerary (id, name) values (5, 'Berlin');
insert into itinerary (id, name) values (6, 'Malakwāl');
insert into itinerary (id, name) values (7, 'Nerópolis');
insert into itinerary (id, name) values (8, 'Longvic');
insert into itinerary (id, name) values (9, 'Bragança');
insert into itinerary (id, name) values (10, 'Kertorejo');
insert into itinerary (id, name) values (11, 'Lacroix-Saint-Ouen');
-- insert into itinerary (id, name) values (12, 'Qiping');
-- insert into itinerary (id, name) values (13, 'Tenja');
-- insert into itinerary (id, name) values (14, 'Weiyanggong');
-- insert into itinerary (id, name) values (15, 'Dubrava');
-- insert into itinerary (id, name) values (16, 'Nioro');
-- insert into itinerary (id, name) values (17, 'Loma Bonita');
-- insert into itinerary (id, name) values (18, 'North Little Rock');
-- insert into itinerary (id, name) values (19, 'Patarrá');
-- insert into itinerary (id, name) values (20, 'Rajapeni');
-- insert into itinerary (id, name) values (21, 'Baoshan');
-- insert into itinerary (id, name) values (22, 'Mādārīpur');
-- insert into itinerary (id, name) values (23, 'Zakliczyn');
-- insert into itinerary (id, name) values (24, 'Del Rosario');
-- insert into itinerary (id, name) values (25, 'Sanzhang');
-- insert into itinerary (id, name) values (26, 'Yaroslavl');
-- insert into itinerary (id, name) values (27, 'Qal‘ah-ye Kūf');
-- insert into itinerary (id, name) values (28, 'Marićka');
-- insert into itinerary (id, name) values (29, 'Woodstock');
-- insert into itinerary (id, name) values (30, 'Krzęcin');
-- insert into itinerary (id, name) values (31, 'Meijiang');
-- insert into itinerary (id, name) values (32, 'Keboncau');
-- insert into itinerary (id, name) values (33, 'Sośnie');
-- insert into itinerary (id, name) values (34, 'Mó');
-- insert into itinerary (id, name) values (35, 'Krajan Gebangan');
-- insert into itinerary (id, name) values (36, 'Belén de los Andaquíes');
-- insert into itinerary (id, name) values (37, 'Guogan');
-- insert into itinerary (id, name) values (38, 'Zabrat');
-- insert into itinerary (id, name) values (39, 'Riti');
-- insert into itinerary (id, name) values (40, 'Szemud');
-- insert into itinerary (id, name) values (41, 'Al Ḩammāmāt');
-- insert into itinerary (id, name) values (42, 'San Basilio');
-- insert into itinerary (id, name) values (43, 'Granada');
-- insert into itinerary (id, name) values (44, 'Xiaodukou');
-- insert into itinerary (id, name) values (45, 'La Foa');
-- insert into itinerary (id, name) values (46, 'Saint-Denis');
-- insert into itinerary (id, name) values (47, 'Chenji');
-- insert into itinerary (id, name) values (48, 'Kangping');
-- insert into itinerary (id, name) values (49, 'Jaboticabal');
-- insert into itinerary (id, name) values (50, 'Kudang');
-- insert into itinerary (id, name) values (51, 'Biñan');
-- insert into itinerary (id, name) values (52, 'Soca');
-- insert into itinerary (id, name) values (53, 'Nachalovo');
-- insert into itinerary (id, name) values (54, 'Venëv');
-- insert into itinerary (id, name) values (55, 'Borkowice');
-- insert into itinerary (id, name) values (56, 'Paltashaco');
-- insert into itinerary (id, name) values (57, 'Ica');
-- insert into itinerary (id, name) values (58, 'Salto');
-- insert into itinerary (id, name) values (59, 'Tumu’ertai');
-- insert into itinerary (id, name) values (60, 'Xiaoshi');
-- insert into itinerary (id, name) values (61, 'Weda');
-- insert into itinerary (id, name) values (62, 'Dolní Sloupnice');
-- insert into itinerary (id, name) values (63, 'Łapsze Niżne');
-- insert into itinerary (id, name) values (64, 'Mandal');
-- insert into itinerary (id, name) values (65, 'Yishi');
-- insert into itinerary (id, name) values (66, 'Yong’an');
-- insert into itinerary (id, name) values (67, 'Gus’-Khrustal’nyy');
-- insert into itinerary (id, name) values (68, 'Butou');
-- insert into itinerary (id, name) values (69, 'Severobaykal’sk');
-- insert into itinerary (id, name) values (70, 'Ducheng');
-- insert into itinerary (id, name) values (71, 'Tubigan');
-- insert into itinerary (id, name) values (72, 'Bitung');
-- insert into itinerary (id, name) values (73, 'Janowiec');
-- insert into itinerary (id, name) values (74, 'Wangjiaping');
-- insert into itinerary (id, name) values (75, 'Antimácheia');
-- insert into itinerary (id, name) values (76, 'Amphoe Sikhiu');
-- insert into itinerary (id, name) values (77, 'Maishi');
-- insert into itinerary (id, name) values (78, 'Sabanalarga');
-- insert into itinerary (id, name) values (79, 'Kyaikkami');
-- insert into itinerary (id, name) values (80, 'Konārak');
-- insert into itinerary (id, name) values (81, 'Xiawa');
-- insert into itinerary (id, name) values (82, 'Nawá');
-- insert into itinerary (id, name) values (83, 'Yuanmou');
-- insert into itinerary (id, name) values (84, 'Tanggungrejo');
-- insert into itinerary (id, name) values (85, 'Ljubovija');
-- insert into itinerary (id, name) values (86, 'Saint-Marcellin');
-- insert into itinerary (id, name) values (87, 'Kalatongke');
-- insert into itinerary (id, name) values (88, 'La Tinguiña');
-- insert into itinerary (id, name) values (89, 'Cibojong');
-- insert into itinerary (id, name) values (90, 'Kohtla-Järve');
-- insert into itinerary (id, name) values (91, 'Sukarame');
-- insert into itinerary (id, name) values (92, 'Tānk');
-- insert into itinerary (id, name) values (93, 'Dolega District');
-- insert into itinerary (id, name) values (94, 'Ferreiras');
-- insert into itinerary (id, name) values (95, 'Yuza');
-- insert into itinerary (id, name) values (96, 'Jocotenango');
-- insert into itinerary (id, name) values (97, 'Suicheng');
-- insert into itinerary (id, name) values (98, 'Tai Po');
-- insert into itinerary (id, name) values (99, 'Quintã');
-- insert into itinerary (id, name) values (100, 'Cavalões');