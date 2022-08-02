# -- 테스트 계정
# -- TODO: 테스트용이지만 비밀번호가 노출된 데이터 세팅. 개선하는 것이 좋을 지 고민해 보자.
# insert into user_account (user_id, user_password, nickname, email, memo, created_at, created_by, modified_at, modified_by) values
#     ('uno', 'asdf1234', 'Uno', 'uno@mail.com', 'I am Uno.', now(), 'uno', now(), 'uno')
# ;

insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values
    (1, 'Quisque ut erat.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Donec vitae nisi.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Mauv', 'Neilla', '2021-09-28 06:46:09', 'Marthena', '2021-11-19 16:25:17');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Praesent lectus.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Aquamarine', 'Cleve', '2021-07-23 16:15:18', 'Hersh', '2022-01-23 19:31:05');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Aenean sit amet justo.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', null, 'Thayne', '2022-04-18 12:15:35', 'Lynn', '2021-12-30 06:40:38');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Indigo', 'Pearce', '2021-07-26 16:19:24', 'Kissie', '2022-06-27 23:35:02');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Aliquam erat volutpat.', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Yellow', 'Saree', '2022-06-19 15:30:43', 'Alyda', '2021-10-12 08:07:49');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Blue', 'Willi', '2022-01-05 09:35:02', 'Bourke', '2021-08-08 14:28:21');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Indigo', 'Demott', '2021-10-21 08:03:27', 'Marion', '2022-04-16 07:33:55');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Orange', 'Drew', '2022-07-12 20:43:49', 'Keely', '2022-03-23 11:02:35');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Duis bibendum.', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', null, 'Ellene', '2021-11-20 19:26:38', 'Berry', '2021-09-06 02:04:36');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Vivamus in felis eu sapien cursus vestibulum.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Violet', 'Penni', '2022-05-26 14:35:46', 'Byram', '2022-07-03 10:06:11');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Mauris lacinia sapien quis libero.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Violet', 'Troy', '2021-09-28 16:01:08', 'Quintina', '2022-01-16 02:42:03');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Integer ac leo.', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Aquamarine', 'Gabby', '2021-10-09 19:22:36', 'Tammy', '2022-05-11 23:16:19');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Integer ac neque.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Indigo', 'Hendrika', '2021-11-26 15:37:55', 'Gwyn', '2021-10-14 17:25:10');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 'Blue', 'Kath', '2022-03-28 12:49:12', 'Killy', '2021-07-29 18:42:22');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Blue', 'Stanwood', '2021-12-23 07:01:10', 'Chrisy', '2022-07-16 08:55:20');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Teal', 'Filmore', '2022-04-24 09:14:15', 'Marcile', '2021-08-30 13:33:41');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Pellentesque eget nunc.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Turquoise', 'Alyse', '2022-07-08 09:51:39', 'Nicholas', '2021-11-22 16:50:23');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('In blandit ultrices enim.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Fuscia', 'Tasha', '2021-09-23 14:00:13', 'Andrew', '2022-01-28 12:19:18');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('In congue.', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Orange', 'Irena', '2021-11-18 19:27:45', 'Jilly', '2021-12-30 04:07:15');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Cras pellentesque volutpat dui.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Aquamarine', 'Mufi', '2022-07-01 07:01:28', 'Alick', '2021-12-28 12:13:46');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Nullam varius.', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Red', 'Helli', '2021-08-09 01:06:15', 'Ranice', '2021-10-09 21:46:08');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('In sagittis dui vel nisl.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Teal', 'Mamie', '2021-08-02 18:33:26', 'Arch', '2022-06-14 06:22:35');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Green', 'Diego', '2022-04-15 08:10:52', 'Ronalda', '2022-03-07 05:35:33');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Etiam pretium iaculis justo.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Goldenrod', 'Toma', '2022-07-14 03:27:32', 'Eve', '2021-12-03 20:08:05');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Fuscia', 'Niall', '2021-10-19 22:30:57', 'Gabriella', '2021-12-29 00:14:44');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Proin risus.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Pink', 'Sylas', '2022-06-13 15:01:24', 'Weider', '2022-03-07 18:25:39');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Ut at dolor quis odio consequat varius.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Maroon', 'Virgie', '2022-01-24 00:59:39', 'Jimmy', '2021-12-11 22:55:47');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', null, 'Pammie', '2022-07-07 04:40:27', 'Hodge', '2021-11-25 18:40:14');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Curabitur in libero ut massa volutpat convallis.', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', null, 'Hasty', '2021-12-30 16:32:41', 'Morna', '2021-09-19 16:19:49');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Integer non velit.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', null, 'Creight', '2022-04-19 22:48:29', 'Cassie', '2021-11-29 01:53:02');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Vestibulum rutrum rutrum neque.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Aquamarine', 'Charlton', '2021-08-16 03:56:14', 'Levy', '2021-09-11 21:07:42');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Sed sagittis.', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Teal', 'Gus', '2022-06-12 14:58:42', 'Janela', '2022-01-13 18:48:29');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Curabitur at ipsum ac tellus semper interdum.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Pink', 'Kerr', '2021-12-17 07:40:39', 'Con', '2021-08-12 12:16:34');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Blue', 'Ciro', '2022-03-04 19:54:16', 'Harlin', '2021-10-06 15:44:35');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Fusce posuere felis sed lacus.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 'Turquoise', 'Paxton', '2021-08-20 22:12:41', 'Clemente', '2021-10-10 09:17:57');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('In sagittis dui vel nisl.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Turquoise', 'Prisca', '2021-11-23 09:30:31', 'Tann', '2022-02-23 07:36:08');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Quisque ut erat.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Khaki', 'Vivienne', '2022-02-24 08:14:05', 'Darryl', '2022-06-04 06:02:19');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Mauris sit amet eros.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', null, 'Geordie', '2022-06-10 08:02:42', 'Errol', '2021-09-28 03:08:40');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Aliquam erat volutpat.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'Puce', 'Blaine', '2022-01-27 14:53:59', 'Zora', '2021-09-21 23:27:36');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Maecenas rhoncus aliquam lacus.', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Mauv', 'Giacopo', '2021-09-29 04:09:45', 'Carlie', '2022-01-23 07:19:25');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('In hac habitasse platea dictumst.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'Indigo', 'Godfrey', '2021-12-01 12:57:15', 'Townie', '2022-01-30 16:27:40');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Khaki', 'Kirsten', '2022-01-14 14:28:12', 'Rosaline', '2022-01-08 08:17:23');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Crimson', 'Silvio', '2022-02-28 01:19:36', 'Boot', '2022-03-05 23:44:51');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Nulla facilisi.', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Turquoise', 'Sheila', '2022-04-01 02:49:22', 'Hermon', '2021-08-23 19:58:40');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Morbi non lectus.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', null, 'Fidelia', '2021-08-04 11:48:27', 'Tamas', '2021-08-02 10:11:06');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Integer ac neque.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Puce', 'Jeanne', '2022-04-10 09:57:19', 'Noble', '2022-03-27 02:01:50');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Praesent lectus.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Turquoise', 'Alexandra', '2022-02-18 10:03:35', 'Burlie', '2022-03-17 20:48:33');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Nulla ut erat id mauris vulputate elementum.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Yellow', 'Muire', '2021-11-16 05:44:31', 'Justine', '2022-04-28 10:56:56');
insert into article (title, content, hashtag, created_by, created_at, modified_by, modified_at) values ('Nulla mollis molestie lorem.', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Yellow', 'Benoit', '2021-08-27 06:45:34', 'Cynthie', '2022-06-09 20:50:36');

insert into article_comment (article_id, content, created_at, modified_at, created_by, modified_by) values
(49, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2021-03-02 22:40:04', '2021-04-27 15:38:09', 'Lind', 'Orv'),
(1,  'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2021-06-08 04:36:02', '2022-01-25 15:35:42', 'Trstram', 'Loy'),
(2, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2021-04-10 00:47:10', '2021-02-06 20:58:04', 'Duff', 'Early'),
(3,  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '2021-08-21 08:39:39', '2021-11-17 22:47:35', 'Sydney', 'Boony'),
(4, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2021-06-17 10:57:29', '2021-05-13 12:28:47', 'Burk', 'Markus'),
(5,  'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2022-01-15 11:37:12', '2021-02-19 17:42:22', 'Calvin', 'Garreth'),
(6,  'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2021-11-23 18:29:30', '2021-03-09 00:57:27', 'Kain', 'Bruno'),
(7,  'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2021-03-19 18:39:02', '2021-03-16 17:47:17', 'Kippie', 'Alexio');