
delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$XwoLlzM/XVFR0d1Lr0OfO.7Y6RLDxiv1N5AQPB1VdrAaBSWP9L8RS', admin),
(2, true, '', testUser2);

insert into user_role (user_id, roles) values
(1,'USER'), (1,'ADMIN'),
(2,'USER');