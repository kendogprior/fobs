DROP TABLE IF EXISTS "ckeditor_assets";
CREATE TABLE "ckeditor_assets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "data_file_name" varchar(255) NOT NULL, "data_content_type" varchar(255), "data_file_size" integer, "assetable_id" integer, "assetable_type" varchar(30), "type" varchar(25), "guid" varchar(10), "locale" integer(1) DEFAULT 0, "user_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "ckeditor_assets" VALUES(1,'be5f0cb5f55da010d80e6a7067008b18.jpg','image/jpeg',122104,NULL,NULL,'Ckeditor::Picture',NULL,0,1,'2010-10-23 10:56:31.454896','2010-10-23 10:56:31.454896');
INSERT INTO "ckeditor_assets" VALUES(2,'bigmog1.JPG','image/jpeg',677366,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-23 14:11:03.670984','2010-10-23 14:11:03.670984');
INSERT INTO "ckeditor_assets" VALUES(3,'draft3rev.png','image/png',168383,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-29 10:02:15.044979','2010-10-29 10:02:15.044979');
DROP TABLE IF EXISTS "contacts";
CREATE TABLE "contacts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "telephone" varchar(255), "message" text, "created_at" datetime, "updated_at" datetime);
INSERT INTO "contacts" VALUES(14,'Brian Prior','brian@kendog.freeserve.co.uk','','Waht the fuck is happening?','2010-11-09 16:15:55.911570','2010-11-09 16:15:55.911570');
INSERT INTO "contacts" VALUES(15,'Brian Prior','brian@kendog.freeserve.co.uk','','Lots of words ....','2010-11-09 16:26:54.763501','2010-11-09 16:26:54.763501');
INSERT INTO "contacts" VALUES(16,'Brian Prior','brian@kendog.freeserve.co.uk','','Another try ...','2010-11-09 16:38:59.492143','2010-11-09 16:38:59.492143');
INSERT INTO "contacts" VALUES(17,'Brian Prior','brian@kendog.freeserve.co.uk','','dsvdsdsdsdsf','2010-11-09 16:40:42.488023','2010-11-09 16:40:42.488023');
INSERT INTO "contacts" VALUES(18,'Brian Prior','brian@kendog.freeserve.co.uk','','dsvsddsf','2010-11-09 16:41:40.308458','2010-11-09 16:41:40.308458');
INSERT INTO "contacts" VALUES(19,'Brian Prior','brian@kendog.freeserve.co.uk','','df sdf sdf sds f','2010-11-09 16:46:17.969184','2010-11-09 16:46:17.969184');
INSERT INTO "contacts" VALUES(20,'Brian Prior','brian@kendog.freeserve.co.uk','01983 527136','This is a test message for the FOBS site.
If you receive this with a ''fancy page'' would you let me know. 

It''s all rather confusing really!','2010-11-09 16:51:59.524865','2010-11-09 16:51:59.524865');
DROP TABLE IF EXISTS "galleries";
CREATE TABLE "galleries" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "page_id" integer, "title" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "galleries" VALUES(2,19,'Shipping gallery','2010-11-02 17:54:55.147693','2010-11-02 20:03:11.731458');
DROP TABLE IF EXISTS "images";
CREATE TABLE "images" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "page_id" integer, "gallery_id" integer, "title" varchar(255), "description" varchar(255), "created_at" datetime, "updated_at" datetime, "photo_file_name" varchar(255), "photo_content_type" varchar(255), "photo_file_size" integer, "photo_updated_at" datetime);
INSERT INTO "images" VALUES(26,NULL,2,'Blyskawica at anchor','Blyskawica at anchor somewhere','2010-11-02 20:12:01.790175','2010-11-04 14:55:17.635658','100_1320.jpg','image/jpeg',547296,'2010-11-04 14:52:53.028641');
INSERT INTO "images" VALUES(27,NULL,2,'Snow in Jan','Gordon Road, WInter 2010','2010-11-02 20:13:12.206685','2010-11-04 14:56:40.593640','IMG_3167.JPG','image/jpeg',2582190,'2010-11-04 14:56:38.523476');
DROP TABLE IF EXISTS "pages";
CREATE TABLE "pages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "parent_id" integer, "name" varchar(255), "content" text, "created_at" datetime, "updated_at" datetime, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime, "redirect" boolean, "action_name" varchar(255), "controller_name" varchar(255), "pageorder" integer);
INSERT INTO "pages" VALUES(1,NULL,'Home','<div id="oneortwo">
	<p>
		<img src="/ckeditor_assets/pictures/3/content_draft3rev.png" style="margin-right: 10px; float: left; width: 100px; height: 100px;" /></p>
	<h2>
		The SHIP herself</h2>
	<p>
		Right click the image place-holder and select image properties to add an image or delete this one if you do not need the image. Replace this and other text as you wish. If you type the RETURN key you will automatically create a new paragraph. If all you need is a new-line then type SHIFT + RETURN .<br />
		<br />
		It will help you a lot if you click the &quot;Show blocks&quot; button in the penultimate section and last row of the toolbar, next to the question mark button.<br />
		<br />
		Highlight all of this text to delete or replacce with your own</p>
</div>
<div id="sidebar">
	<p>
		Sidebar content</p>
</div>
','2010-10-10 16:29:26.828511','2010-11-10 11:34:05.803940',NULL,NULL,NULL,NULL,'f','','',1);
INSERT INTO "pages" VALUES(2,NULL,'History','<div id="oneortwo">
	<p>
		<img src="/ckeditor_assets/pictures/2/content_bigmog1.JPG" style="margin-right: 10px; float: left; width: 100px; height: 100px;" />Type the title here</p>
	<p>
		Right click the image place-holder and select image properties to add an image or delete this one if you do not need the image. Replace this and other text as you wish. If you type the RETURN key you will automatically create a new paragraph. If all you need is a new-line then type SHIFT + RETURN .<br />
		<br />
		It will help you a lot if you click the &quot;Show blocks&quot; button in the penultimate section and last row of the toolbar, next to the question mark button.<br />
		<br />
		Highlight all of this text to delete or replacce with your own</p>
</div>
<div id="sidebar">
	<p>
		Sidebar content</p>
</div>
','2010-10-10 16:29:52.655933','2010-11-10 11:30:45.904156',NULL,NULL,NULL,NULL,'f','','',10);
INSERT INTO "pages" VALUES(3,NULL,'Events','<div id="content">
	<h2>
		<img align="center" src="/ckeditor_assets/pictures/1/content_be5f0cb5f55da010d80e6a7067008b18.jpg" style="margin-right: 10px; width: 120px; height: 100px;" /><span style="font-size: 16px;"><strong>Launch of Soyez</strong></span></h2>
	<p>
		Right click the image place-holder and select image properties to add an image or delete this one if you do not need the image. Replace this and other text as you wish. If you type the return key you will automatically create a new paragraph. If all you need is a new-line then type SHIFT + RETURN .<br />
		<br />
		It will help you a lot if you click the &quot;Show blocks&quot; button in the penultimate section and last row of the toolbar, next to the question mark button.<br />
		<br />
		Highlight all of this text to delete or replacce with your own</p>
</div>
','2010-10-10 16:30:07.300076','2010-11-07 10:00:22.404772',NULL,NULL,NULL,NULL,'f','','',5);
INSERT INTO "pages" VALUES(14,NULL,'Site map','','2010-10-29 13:01:02.120030','2010-11-02 16:17:23.457469',NULL,NULL,NULL,NULL,'t','sitemap','',8);
INSERT INTO "pages" VALUES(19,2,'Test1','<br />
','2010-11-01 16:37:18.265474','2010-11-01 16:38:07.971249',NULL,NULL,NULL,NULL,'f','','',1);
INSERT INTO "pages" VALUES(20,2,'Test2','<br />
','2010-11-01 16:37:39.522817','2010-11-01 16:37:39.522817',NULL,NULL,NULL,NULL,'f','','',2);
INSERT INTO "pages" VALUES(21,NULL,'Slides','','2010-11-01 21:47:15.787143','2010-11-01 21:47:15.787143',NULL,NULL,NULL,NULL,'t','slideshow','viewer',40);
INSERT INTO "pages" VALUES(22,NULL,'Contact Friends','<br />
','2010-11-08 14:57:27.500604','2010-11-08 14:59:12.109170',NULL,NULL,NULL,NULL,'t','contacts',NULL,45);
DROP TABLE IF EXISTS "schema_migrations";
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20101010162620');
INSERT INTO "schema_migrations" VALUES('20101015134406');
INSERT INTO "schema_migrations" VALUES('20101016105557');
INSERT INTO "schema_migrations" VALUES('20101016111652');
INSERT INTO "schema_migrations" VALUES('20101018093110');
INSERT INTO "schema_migrations" VALUES('20101018100602');
INSERT INTO "schema_migrations" VALUES('20101018194001');
INSERT INTO "schema_migrations" VALUES('20101023115142');
INSERT INTO "schema_migrations" VALUES('20101101113004');
INSERT INTO "schema_migrations" VALUES('20101108141327');
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(128) DEFAULT '' NOT NULL, "password_salt" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "remember_token" varchar(255), "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "users" VALUES(1,'brian@kendog.freeserve.co.uk','$2a$10$GrPwCkQZNvv.E2n0KT37uOJTeyqFQwdq2qhm77sh5dpLyCbmf/GE6','$2a$10$GrPwCkQZNvv.E2n0KT37uO','2QEf9RUXGHpNsjJL0Q_m',NULL,NULL,16,'2010-11-07 12:11:27.377846','2010-11-06 19:18:07.805289','127.0.0.1','127.0.0.1','2010-10-15 13:57:11.025305','2010-11-07 12:11:27.378378');
CREATE INDEX "fk_assetable" ON "ckeditor_assets" ("assetable_type", "assetable_id");
CREATE INDEX "fk_user" ON "ckeditor_assets" ("user_id");
CREATE INDEX "idx_assetable_type" ON "ckeditor_assets" ("assetable_type", "type", "assetable_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
