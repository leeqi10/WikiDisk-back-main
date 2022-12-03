/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : security

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 03/12/2022 17:17:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for img_all
-- ----------------------------
DROP TABLE IF EXISTS `img_all`;
CREATE TABLE `img_all`  (
  `img_route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`img_route`) USING BTREE,
  INDEX `img_route`(`img_route`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of img_all
-- ----------------------------
INSERT INTO `img_all` VALUES ('/016089b3-47f5-46c3-8bb0-54d5fd200544.png');
INSERT INTO `img_all` VALUES ('/017f9fed-a696-4eff-8713-2acb628d3e92.png');
INSERT INTO `img_all` VALUES ('/020b3ca1-f869-43bc-920f-7a255684921b.png');
INSERT INTO `img_all` VALUES ('/025aa9de-4c40-4e5b-9c0c-ccae693bdc181597585966281.jpg');
INSERT INTO `img_all` VALUES ('/039170b1-1e54-4ea8-9d18-5fc462b0fae9.png');
INSERT INTO `img_all` VALUES ('/04b956cb-2729-4d72-a29e-e3cbeb9de490.png');
INSERT INTO `img_all` VALUES ('/05c82b07-a87a-4ebd-93ec-172730ff7140.png');
INSERT INTO `img_all` VALUES ('/061d55c5-8845-4e15-b185-1522e48f026d.jpg');
INSERT INTO `img_all` VALUES ('/0755e0da-b2e1-4cbc-a800-98a575d1b59e.png');
INSERT INTO `img_all` VALUES ('/075c8692-e638-432f-8f00-ae1fedafc382.jpg');
INSERT INTO `img_all` VALUES ('/076d7615-d026-47d7-92a3-8fc5087f4ffa.jpg');
INSERT INTO `img_all` VALUES ('/07b9bc94-67db-4b9c-91e3-514182829082.png');
INSERT INTO `img_all` VALUES ('/08708082-d5fa-41c7-bec8-0f5d7a74e59d.png');
INSERT INTO `img_all` VALUES ('/08dd5fa2-882b-47a6-b980-4613a721ecc4.png');
INSERT INTO `img_all` VALUES ('/0a7380e4-dd97-4051-91ed-5faf286e3339.png');
INSERT INTO `img_all` VALUES ('/0b0bbc3b-6b59-4e9c-a025-6b555032848d.png');
INSERT INTO `img_all` VALUES ('/0c77b916-d64f-4176-835d-2be3312276d6.png');
INSERT INTO `img_all` VALUES ('/0fdc891a-534c-4b53-859e-78fa40719c48jpg');
INSERT INTO `img_all` VALUES ('/10fc9620-e36f-488c-9c3b-641bbdb84126.png');
INSERT INTO `img_all` VALUES ('/11cdbad8-ca82-4707-8d89-026adf5cd158.jpg');
INSERT INTO `img_all` VALUES ('/12534264-e89c-490d-b47e-a0e0bd497524.png');
INSERT INTO `img_all` VALUES ('/1450b7af-2313-44e6-804e-2bf34d2244dd.jpg');
INSERT INTO `img_all` VALUES ('/14611069-adc9-4d59-bae3-4f880c9bf5dc.png');
INSERT INTO `img_all` VALUES ('/14ba2916-8c09-4019-9e43-5636beb3b75f.jpg');
INSERT INTO `img_all` VALUES ('/172a1263-1e3e-479f-8bc5-fc81edd54a53.png');
INSERT INTO `img_all` VALUES ('/17a03408-b402-4a4b-b857-97d1be95d08e.jpg');
INSERT INTO `img_all` VALUES ('/18e5dd46-da68-4f21-8819-7ed080323439.jpg');
INSERT INTO `img_all` VALUES ('/1b1d620d-9b2d-4024-a9d7-e098cb4fc93d.png');
INSERT INTO `img_all` VALUES ('/1bd10eba-99ad-412a-8a32-a27295afb6d2.png');
INSERT INTO `img_all` VALUES ('/1ccb30b0-c7bf-4b4c-98c3-d798677aa4b6.png');
INSERT INTO `img_all` VALUES ('/1d45f771-542a-480e-883a-e2ee8a8877c6.png');
INSERT INTO `img_all` VALUES ('/1f87f741-5976-4fe3-a9f8-83f9a17d8491.jpg');
INSERT INTO `img_all` VALUES ('/20d65564-c647-4ee6-bc41-b01fff247919.png');
INSERT INTO `img_all` VALUES ('/2590a104-9bbf-4227-a66d-871a2365a7d0.png');
INSERT INTO `img_all` VALUES ('/25fbcb89-25c1-4ec0-91c9-479d824ea4bd.png');
INSERT INTO `img_all` VALUES ('/27c5434b-69f9-4d36-a224-880afb18879b.png');
INSERT INTO `img_all` VALUES ('/2c429308-5acb-4334-8d23-cd7761459dc0.png');
INSERT INTO `img_all` VALUES ('/2ed5d3db-0596-4a36-ab4a-bd3be3f4b447.png');
INSERT INTO `img_all` VALUES ('/2f3fdebe-3dd2-47be-bb11-17eb3726bcc1.jpg');
INSERT INTO `img_all` VALUES ('/319069f0-5b91-4296-890a-b1abf2d6f0ed.png');
INSERT INTO `img_all` VALUES ('/32193402-2eaf-4548-884e-1398ddddb293.jpg');
INSERT INTO `img_all` VALUES ('/3314f351-dfd3-4392-9e11-aea048d28f0c.jpg');
INSERT INTO `img_all` VALUES ('/35f2fdcc-5d82-4b05-9ad4-3d7a6c52a595.png');
INSERT INTO `img_all` VALUES ('/363b847e-52e5-4668-a461-51cb63ad7f6c.png');
INSERT INTO `img_all` VALUES ('/3a4da8fc-9045-4303-8cc3-c8c01cfd1f20.jpg');
INSERT INTO `img_all` VALUES ('/3a4ea091-051f-42bf-9c1d-c3bc8da5f658.png');
INSERT INTO `img_all` VALUES ('/3aef5ae6-ed10-43af-9ce4-e249cdda9daf.png');
INSERT INTO `img_all` VALUES ('/3c06b3cd-7f33-4326-adf4-9236faa6314d.png');
INSERT INTO `img_all` VALUES ('/415e72a0-fe17-4e7f-96c5-75e6b1fc6c35.png');
INSERT INTO `img_all` VALUES ('/42e9f6aa-13fc-42c7-a081-b7ac80edf116.png');
INSERT INTO `img_all` VALUES ('/42f5ff2b-f6c0-42ef-93c8-86db540ef036.png');
INSERT INTO `img_all` VALUES ('/4595c430-7278-471b-ac13-03b98d67d597.png');
INSERT INTO `img_all` VALUES ('/48cc7627-734d-43b4-a49c-e7eeb83dd7fd.png');
INSERT INTO `img_all` VALUES ('/4cda720f-fb87-4150-80f7-e4adef68eb5a.jpg');
INSERT INTO `img_all` VALUES ('/4d1a270d-1ae2-407c-958b-0fdc8fbc871e.jpg');
INSERT INTO `img_all` VALUES ('/4d85ab9c-537b-4e01-94f0-11679177a148.jpg');
INSERT INTO `img_all` VALUES ('/4e33d914-b0f9-4d40-9666-b6c25ab7f127.png');
INSERT INTO `img_all` VALUES ('/5868794c-c52d-46d3-9caa-e0e014f597c4.jpg');
INSERT INTO `img_all` VALUES ('/597fc7a1-da7e-42fc-bc7a-57950c2c7937.png');
INSERT INTO `img_all` VALUES ('/5b43f2ae-0d07-48e5-905e-78e860117153.png');
INSERT INTO `img_all` VALUES ('/5c2c2570-f4b1-4c93-9d3f-b7be10808036.jpg');
INSERT INTO `img_all` VALUES ('/5fb50601-631d-4af0-90c4-098ae9dc1b07.jpg');
INSERT INTO `img_all` VALUES ('/5fc84e0e-1a6e-4d12-9408-1d7ec03f3170.png');
INSERT INTO `img_all` VALUES ('/61ceef1f-1ea5-4afc-966f-8feb07b4288c.png');
INSERT INTO `img_all` VALUES ('/63691f61-f866-4685-8b8c-16fcf3b1f1eb.jpg');
INSERT INTO `img_all` VALUES ('/651ad155-6f15-432b-8bcb-ae40c463e15e.jpg');
INSERT INTO `img_all` VALUES ('/65e58508-857a-4b54-848f-d99f0583666a.jpg');
INSERT INTO `img_all` VALUES ('/6717feb8-967e-4f9c-9bfb-c92c11110ba6.jpg');
INSERT INTO `img_all` VALUES ('/67821c5c-a7df-42cd-862e-133079dd501b.png');
INSERT INTO `img_all` VALUES ('/67ff56e2-2173-4929-992b-93477175d15e.png');
INSERT INTO `img_all` VALUES ('/6869c264-0db8-4650-b4a5-905358c6b857.jpg');
INSERT INTO `img_all` VALUES ('/689006a8-eba4-45b3-813d-31c0dab0bc4c.png');
INSERT INTO `img_all` VALUES ('/6b03ec33-17e2-41ca-868b-d4538d91cc98.png');
INSERT INTO `img_all` VALUES ('/6d3534fe-9a16-4420-adad-e2cfc4d8a5c7.png');
INSERT INTO `img_all` VALUES ('/6fa5dd24-a1db-46dc-9cbc-7fcc30d47114.png');
INSERT INTO `img_all` VALUES ('/7163d3f2-3bde-43f0-aec6-c76a6a8f2bad.png');
INSERT INTO `img_all` VALUES ('/747d5f3f-c6d3-4f68-a6c0-25bae6e8c583.png');
INSERT INTO `img_all` VALUES ('/7546a581-0420-4b19-8de4-5d839de5e7fc.png');
INSERT INTO `img_all` VALUES ('/771ccf23-aa19-4f55-b3e7-d1bfe4c9b82a.png');
INSERT INTO `img_all` VALUES ('/7a8ac7c2-08ef-4794-a69f-9cc8f6658368.png');
INSERT INTO `img_all` VALUES ('/7afd122e-3e4f-45de-8105-21a2caf25b18.png');
INSERT INTO `img_all` VALUES ('/7b581132-1f9a-4c4a-addf-f496ff5fe7c7.png');
INSERT INTO `img_all` VALUES ('/7c407a7b-e855-4418-ac3c-5417a26b2fb7.png');
INSERT INTO `img_all` VALUES ('/7e2d8b89-d1ff-4449-aebd-e9d98bd3961a.png');
INSERT INTO `img_all` VALUES ('/7e52e67d-b4f8-458c-bd74-4a03eb8ac170.jpg');
INSERT INTO `img_all` VALUES ('/7e8d7b91-aab4-4618-bde8-a9bb19f9e810.jpg');
INSERT INTO `img_all` VALUES ('/814c3e6d-ec30-4ea4-adf8-7e8168d99561.jpg');
INSERT INTO `img_all` VALUES ('/82585661-70a6-4441-ad59-26835fb6649a.jpg');
INSERT INTO `img_all` VALUES ('/82aa9ee3-144d-4561-ab09-4a438834f80b.jpg');
INSERT INTO `img_all` VALUES ('/82ad8cf0-cb23-4a91-a307-d61d3a63b87c.png');
INSERT INTO `img_all` VALUES ('/8446e7b5-707b-4517-92b9-2155203a0761.jpg');
INSERT INTO `img_all` VALUES ('/8647c603-076b-4510-b59a-4c558281301b.png');
INSERT INTO `img_all` VALUES ('/879c4f5b-a7b0-43b7-bff2-c029900485fc.png');
INSERT INTO `img_all` VALUES ('/8cfe3596-924c-4861-87dc-b555fa6502d7.png');
INSERT INTO `img_all` VALUES ('/8f63dea7-1815-42c3-877c-42c7fa3a5495.png');
INSERT INTO `img_all` VALUES ('/92a1380d-9cfa-42f1-8081-dc8bf87f28d0.jpg');
INSERT INTO `img_all` VALUES ('/94f140d4-3f3e-4014-93df-9852a2380fb7.jpg');
INSERT INTO `img_all` VALUES ('/97b66d2a-6d1e-48b7-a662-f302cb22aebb.jpg');
INSERT INTO `img_all` VALUES ('/98a5733a-1d38-4188-8209-0f27582ec55c.png');
INSERT INTO `img_all` VALUES ('/9b87f88f-7ee0-42a2-8905-a503207796e6.jpg');
INSERT INTO `img_all` VALUES ('/9ba06847-fc08-4934-ab31-41c7bded135f.png');
INSERT INTO `img_all` VALUES ('/9ba53715-506b-497a-8641-6bdcec325cf4.png');
INSERT INTO `img_all` VALUES ('/9bca5868-1046-4afd-92f6-f8f700d4b8d4.png');
INSERT INTO `img_all` VALUES ('/9bdf9537-8c43-48ef-9d4a-b6aaa83594fb.png');
INSERT INTO `img_all` VALUES ('/9c394bab-4ea7-4fce-b963-313860e0d175.png');
INSERT INTO `img_all` VALUES ('/9c7d30b9-8f32-4f28-b8df-c1c4e5f7da21.jpg');
INSERT INTO `img_all` VALUES ('/9facbfe9-2557-47b2-9f9d-2493e4db1ee4.png');
INSERT INTO `img_all` VALUES ('/9fd3c36e-f8a5-4732-9cad-6d2590e98c41.png');
INSERT INTO `img_all` VALUES ('/a19f18ab-1777-439f-b5bf-4c96d634af56.png');
INSERT INTO `img_all` VALUES ('/a2ee62a2-70b5-47c6-b1fd-05059c41dc21.jpg');
INSERT INTO `img_all` VALUES ('/a35b2d1d-7a2e-4b21-acc0-d8e31d0ab2ec.jpg');
INSERT INTO `img_all` VALUES ('/a3895c13-e740-4dfd-8590-b288c32279ee.png');
INSERT INTO `img_all` VALUES ('/a540791b-ea57-4c15-9863-fba79a94688a.png');
INSERT INTO `img_all` VALUES ('/a5ec91dd-ff62-4334-8e40-d2588bc3a759.jpg');
INSERT INTO `img_all` VALUES ('/a925979e-e085-4102-b127-4a44d1237321.jpg');
INSERT INTO `img_all` VALUES ('/a95613f0-4215-4f0d-b779-4895b2fc6773.jpg');
INSERT INTO `img_all` VALUES ('/a9f9ed11-da94-4be9-b999-97915db85ae9.jpg');
INSERT INTO `img_all` VALUES ('/aaa86bba-16c4-4d02-b3c6-2659f5a27581.png');
INSERT INTO `img_all` VALUES ('/af66098a-9730-4949-b8c8-8e12a07dc06a.png');
INSERT INTO `img_all` VALUES ('/b3c1139a-6276-41f5-85d6-a630a60da3e3.png');
INSERT INTO `img_all` VALUES ('/b4037486-3d75-446a-9ca1-a4388b323e19.png');
INSERT INTO `img_all` VALUES ('/b4a04a84-247a-4f28-8e09-7039d5f5c029.png');
INSERT INTO `img_all` VALUES ('/b4bc41c1-3a54-4120-9c81-b9f3442ce3ff.png');
INSERT INTO `img_all` VALUES ('/b7eaf181-03f3-4d29-844b-0578beab6783.png');
INSERT INTO `img_all` VALUES ('/b823cc98-8794-4c1b-9937-ae6f4b762fb1.png');
INSERT INTO `img_all` VALUES ('/bb3d44bc-2ae0-4785-81ef-e285b5f3f923.png');
INSERT INTO `img_all` VALUES ('/bf916367-7104-4459-a907-0369a5f7510f.png');
INSERT INTO `img_all` VALUES ('/c30d29c1-2bb6-4715-bf34-eb87b53851c9.png');
INSERT INTO `img_all` VALUES ('/c34c87b6-830e-4685-8ef2-60fbc119175c.png');
INSERT INTO `img_all` VALUES ('/c44d7f9b-5617-4a87-9e51-2270b87d1903.png');
INSERT INTO `img_all` VALUES ('/c6f0fbda-23df-4914-a257-8649e7b92bbc.jpg');
INSERT INTO `img_all` VALUES ('/c75b8737-6795-4198-8e26-a2c86035b369.png');
INSERT INTO `img_all` VALUES ('/c8d5bab1-2b7a-472b-a790-fac4875eca6e.png');
INSERT INTO `img_all` VALUES ('/c9cc3c94-0a93-4ed9-8471-573f8e219a88.png');
INSERT INTO `img_all` VALUES ('/cd9d8119-d383-4322-b135-ab7853dbce8d.png');
INSERT INTO `img_all` VALUES ('/cf0e7a1d-b61d-4811-b729-c0f829d1455b.jpg');
INSERT INTO `img_all` VALUES ('/cfe0c61b-211d-404e-9b80-16f8fe364804.png');
INSERT INTO `img_all` VALUES ('/d1021463-9942-4f6a-a735-c5f761548e17.png');
INSERT INTO `img_all` VALUES ('/d16be9da-7998-46be-bb36-53f112be6b62.jpg');
INSERT INTO `img_all` VALUES ('/d32d9818-b3df-4da0-8b0a-a4e43fc8b58e.png');
INSERT INTO `img_all` VALUES ('/d37411ae-8368-40d5-97e1-27bcb8b6bf85.png');
INSERT INTO `img_all` VALUES ('/d4e5329d-468f-4c1a-8132-ae82f2d9d2c4.png');
INSERT INTO `img_all` VALUES ('/d4f03a6f-7128-411f-a79a-70594806b652.jpg');
INSERT INTO `img_all` VALUES ('/d5b21825-1db2-4c3c-a3a1-938632041a1d.png');
INSERT INTO `img_all` VALUES ('/d6cf6a98-5867-4493-908a-4e51578563b7.png');
INSERT INTO `img_all` VALUES ('/d83793e3-e1d8-4829-8e9f-fd13fc0e88a9.jpg');
INSERT INTO `img_all` VALUES ('/db9b181e-2cd8-4192-9863-a68866b4d023.png');
INSERT INTO `img_all` VALUES ('/dc8fb22d-7613-4bd8-ab89-28bfd6ee9479.jpg');
INSERT INTO `img_all` VALUES ('/dc9bb219-5d88-4f0d-b859-f361e0b804a2.png');
INSERT INTO `img_all` VALUES ('/de135923-aaa9-4d70-910e-2755a15b1c4f.jpg');
INSERT INTO `img_all` VALUES ('/e2f5b3df-e011-429e-820e-76a97c81d597.jpg');
INSERT INTO `img_all` VALUES ('/e3470899-65d2-4ddc-9999-439ed231409e.jpg');
INSERT INTO `img_all` VALUES ('/e3b14c88-e228-4610-b7d1-f3a33a19d884.png');
INSERT INTO `img_all` VALUES ('/e68114b0-3593-456c-8da2-9386b15f415f.png');
INSERT INTO `img_all` VALUES ('/e722035e-cf41-472b-99ca-ec06c05f2da7.png');
INSERT INTO `img_all` VALUES ('/e88642a1-91a7-41d7-a411-7512d835374f.jpg');
INSERT INTO `img_all` VALUES ('/ea964df3-a2e3-433e-a2b1-35851f5e87ff.jpg');
INSERT INTO `img_all` VALUES ('/eaede0ac-bd11-4196-9bf3-2c36de7eee6d.png');
INSERT INTO `img_all` VALUES ('/eda6284d-9693-4cb2-bd5f-a4affb078660.png');
INSERT INTO `img_all` VALUES ('/ef2437aa-a874-4d12-8b19-e9c62b5eb711.png');
INSERT INTO `img_all` VALUES ('/f0509be6-f1a2-4399-bcd3-5fd07183f35a.png');
INSERT INTO `img_all` VALUES ('/f258e191-d062-40e3-8b37-15980bfde7c4.jpg');
INSERT INTO `img_all` VALUES ('/f3dc58fc-3e70-4beb-a9d9-e71594964851.png');
INSERT INTO `img_all` VALUES ('/f56abcae-545d-46c2-9d95-39cdd7b18c50.jpg');
INSERT INTO `img_all` VALUES ('/f82bd206-2608-43f4-8ba2-c40e4d0648de.png');
INSERT INTO `img_all` VALUES ('/f9ab8e5f-31e9-440e-a8c8-468f1ccae70a.jpg');
INSERT INTO `img_all` VALUES ('/fb3b2e40-c7cb-4ad0-9bbb-ec307a76febb.jpg');
INSERT INTO `img_all` VALUES ('/fef0a1e2-9769-4269-9c9b-b9d081e52695.png');

-- ----------------------------
-- Table structure for img_free_test
-- ----------------------------
DROP TABLE IF EXISTS `img_free_test`;
CREATE TABLE `img_free_test`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `free_test_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of img_free_test
-- ----------------------------
INSERT INTO `img_free_test` VALUES (1, '/075c8692-e638-432f-8f00-ae1fedafc382.jpg', 1504433556118364162);
INSERT INTO `img_free_test` VALUES (2, '/9d6f09f7-2349-4529-afbd-296f0c64f2d2zrQJ0gL51PFu3490856dac7e51ff13c7e6eac35a9479.jpg', 1504433556118364162);
INSERT INTO `img_free_test` VALUES (3, '/b4037486-3d75-446a-9ca1-a4388b323e19.png', 1504433556118364162);
INSERT INTO `img_free_test` VALUES (4, '/9ba53715-506b-497a-8641-6bdcec325cf4.png', 1507960669557993474);
INSERT INTO `img_free_test` VALUES (5, '/6869c264-0db8-4650-b4a5-905358c6b857.jpg', 2);
INSERT INTO `img_free_test` VALUES (6, '/3a4da8fc-9045-4303-8cc3-c8c01cfd1f20.jpg', 2);
INSERT INTO `img_free_test` VALUES (7, '/651ad155-6f15-432b-8bcb-ae40c463e15e.jpg', 2);
INSERT INTO `img_free_test` VALUES (8, '/8446e7b5-707b-4517-92b9-2155203a0761.jpg', 1508638650485497857);
INSERT INTO `img_free_test` VALUES (9, '/8446e7b5-707b-4517-92b9-2155203a0761.jpg', 1508638650485497857);
INSERT INTO `img_free_test` VALUES (10, '/8446e7b5-707b-4517-92b9-2155203a0761.jpg', 1508639765767667713);
INSERT INTO `img_free_test` VALUES (11, '/8446e7b5-707b-4517-92b9-2155203a0761.jpg', 1508639765767667713);
INSERT INTO `img_free_test` VALUES (12, '/7c407a7b-e855-4418-ac3c-5417a26b2fb7.png', 1512411339577065473);
INSERT INTO `img_free_test` VALUES (13, '/a19f18ab-1777-439f-b5bf-4c96d634af56.png', 1512422173325791233);
INSERT INTO `img_free_test` VALUES (14, '/67ff56e2-2173-4929-992b-93477175d15e.png', 1512423717613998082);
INSERT INTO `img_free_test` VALUES (15, '/48cc7627-734d-43b4-a49c-e7eeb83dd7fd.png', 1512423717613998082);
INSERT INTO `img_free_test` VALUES (16, '/f258e191-d062-40e3-8b37-15980bfde7c4.jpg', 1512424151074344961);
INSERT INTO `img_free_test` VALUES (17, '/fb3b2e40-c7cb-4ad0-9bbb-ec307a76febb.jpg', 1512425084919353345);
INSERT INTO `img_free_test` VALUES (18, '/f56abcae-545d-46c2-9d95-39cdd7b18c50.jpg', 1512425397323698178);
INSERT INTO `img_free_test` VALUES (19, '/97b66d2a-6d1e-48b7-a662-f302cb22aebb.jpg', 1512426859713925121);
INSERT INTO `img_free_test` VALUES (20, '/1bd10eba-99ad-412a-8a32-a27295afb6d2.png', 1513138678069858306);
INSERT INTO `img_free_test` VALUES (21, '/d32d9818-b3df-4da0-8b0a-a4e43fc8b58e.png', 1514231056633565185);
INSERT INTO `img_free_test` VALUES (22, '/5fc84e0e-1a6e-4d12-9408-1d7ec03f3170.png', 1514231208068911106);
INSERT INTO `img_free_test` VALUES (23, '/e3b14c88-e228-4610-b7d1-f3a33a19d884.png', 1514232132959080449);
INSERT INTO `img_free_test` VALUES (24, '/b3c1139a-6276-41f5-85d6-a630a60da3e3.png', 1514234567945490433);
INSERT INTO `img_free_test` VALUES (25, 'http://tmp/ECPY9RxxX9xr8ef62de541d2c43db3d1cea585d900d0.png', 1514949070580486146);
INSERT INTO `img_free_test` VALUES (26, '/017f9fed-a696-4eff-8713-2acb628d3e92.png', 1514950303068327938);
INSERT INTO `img_free_test` VALUES (27, '/eaede0ac-bd11-4196-9bf3-2c36de7eee6d.png', 1514953381528088577);
INSERT INTO `img_free_test` VALUES (28, '/dc8fb22d-7613-4bd8-ab89-28bfd6ee9479.jpg', 1514953616677548034);
INSERT INTO `img_free_test` VALUES (29, '/5c2c2570-f4b1-4c93-9d3f-b7be10808036.jpg', 1514954773131046913);
INSERT INTO `img_free_test` VALUES (30, '/f9ab8e5f-31e9-440e-a8c8-468f1ccae70a.jpg', 1514955142858944513);
INSERT INTO `img_free_test` VALUES (31, '/a95613f0-4215-4f0d-b779-4895b2fc6773.jpg', 1514961275766054914);
INSERT INTO `img_free_test` VALUES (32, '/5868794c-c52d-46d3-9caa-e0e014f597c4.jpg', 1514961621297012738);
INSERT INTO `img_free_test` VALUES (33, '/c6f0fbda-23df-4914-a257-8649e7b92bbc.jpg', 1515607836464508930);
INSERT INTO `img_free_test` VALUES (34, '/aaaa.jpg', 1517103600233115650);
INSERT INTO `img_free_test` VALUES (35, '/bbbb.jpg', 1517103600233115650);
INSERT INTO `img_free_test` VALUES (36, '/35f2fdcc-5d82-4b05-9ad4-3d7a6c52a595.png', 1517117001829670913);
INSERT INTO `img_free_test` VALUES (37, '/35f2fdcc-5d82-4b05-9ad4-3d7a6c52a595.png', 1517117089771642882);
INSERT INTO `img_free_test` VALUES (38, '/9ba06847-fc08-4934-ab31-41c7bded135f.png', 1518213999605563394);
INSERT INTO `img_free_test` VALUES (39, '/2f3fdebe-3dd2-47be-bb11-17eb3726bcc1.jpg', 1518213999605563394);
INSERT INTO `img_free_test` VALUES (40, '/d83793e3-e1d8-4829-8e9f-fd13fc0e88a9.jpg', 1518214898939838466);
INSERT INTO `img_free_test` VALUES (41, '/3314f351-dfd3-4392-9e11-aea048d28f0c.jpg', 1518214898939838466);
INSERT INTO `img_free_test` VALUES (42, '/c75b8737-6795-4198-8e26-a2c86035b369.png', 1518214898939838466);
INSERT INTO `img_free_test` VALUES (43, '/de135923-aaa9-4d70-910e-2755a15b1c4f.jpg', 1518215222039658498);
INSERT INTO `img_free_test` VALUES (44, '/689006a8-eba4-45b3-813d-31c0dab0bc4c.png', 1518215222039658498);
INSERT INTO `img_free_test` VALUES (45, '/a35b2d1d-7a2e-4b21-acc0-d8e31d0ab2ec.jpg', 1518215222039658498);
INSERT INTO `img_free_test` VALUES (46, '/4cda720f-fb87-4150-80f7-e4adef68eb5a.jpg', 1518215558712246274);
INSERT INTO `img_free_test` VALUES (47, '/a540791b-ea57-4c15-9863-fba79a94688a.png', 1518215558712246274);
INSERT INTO `img_free_test` VALUES (48, '/d16be9da-7998-46be-bb36-53f112be6b62.jpg', 1518215558712246274);
INSERT INTO `img_free_test` VALUES (49, '/a925979e-e085-4102-b127-4a44d1237321.jpg', 1518217089029226497);
INSERT INTO `img_free_test` VALUES (50, '/82585661-70a6-4441-ad59-26835fb6649a.jpg', 1518217618870484994);
INSERT INTO `img_free_test` VALUES (51, '/a2ee62a2-70b5-47c6-b1fd-05059c41dc21.jpg', 1518218184463990786);
INSERT INTO `img_free_test` VALUES (52, '/aaaa.jpg', 1518218618943553539);
INSERT INTO `img_free_test` VALUES (53, '/bbbb.jpg', 1518218618943553539);
INSERT INTO `img_free_test` VALUES (54, '/aaaa.jpg', 1518218618943553540);
INSERT INTO `img_free_test` VALUES (55, '/bbbb.jpg', 1518218618943553540);
INSERT INTO `img_free_test` VALUES (56, '/aaaa.jpg', 1518218618943553541);
INSERT INTO `img_free_test` VALUES (57, '/bbbb.jpg', 1518218618943553541);

-- ----------------------------
-- Table structure for student_free_test
-- ----------------------------
DROP TABLE IF EXISTS `student_free_test`;
CREATE TABLE `student_free_test`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_pass` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `audit_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `audit_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_read` int NULL DEFAULT NULL,
  `handler` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT 0 COMMENT '0为普通1为其他',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specialty_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nationality` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_card` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_name`) USING BTREE,
  INDEX `student_free_test_ibfk_2`(`semester`) USING BTREE,
  CONSTRAINT `student_free_test_ibfk_2` FOREIGN KEY (`semester`) REFERENCES `studetn_semester` (`semester_name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_free_test
-- ----------------------------
INSERT INTO `student_free_test` VALUES (1518218618943553539, '123123', '2022学年第一学期', '啊啊啊', '1', '2022-05-12', '通过把', NULL, '管理员2', 1, '参军', '张三', '男', '2020级', '视觉一班', '汉', '1231231231231231231', '12345678901', '2020-01-11');

-- ----------------------------
-- Table structure for student_test
-- ----------------------------
DROP TABLE IF EXISTS `student_test`;
CREATE TABLE `student_test`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `specialty_class` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`specialty_class`) USING BTREE,
  INDEX `test_id`(`test_id`) USING BTREE,
  INDEX `student_test_ibfk_3`(`semester`) USING BTREE,
  INDEX `user_id_2`(`user_id`) USING BTREE,
  CONSTRAINT `student_test_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `student_test_info` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `student_test_ibfk_3` FOREIGN KEY (`semester`) REFERENCES `studetn_semester` (`semester_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `student_test_ibfk_4` FOREIGN KEY (`specialty_class`) REFERENCES `sys_user` (`specialty_class`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `student_test_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1518230171889680386 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_test
-- ----------------------------
INSERT INTO `student_test` VALUES (1518210092418449409, NULL, NULL, NULL, NULL);
INSERT INTO `student_test` VALUES (1518213267791790082, NULL, NULL, NULL, NULL);
INSERT INTO `student_test` VALUES (1518230171889680386, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for student_test_info
-- ----------------------------
DROP TABLE IF EXISTS `student_test_info`;
CREATE TABLE `student_test_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hour` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `store` int NULL DEFAULT NULL,
  `order_num` int NULL DEFAULT 0,
  `version` int NULL DEFAULT 0,
  `semester` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `headId` bigint NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_test_info_ibfk_1`(`semester`) USING BTREE,
  INDEX `student_test_info_ibfk_2`(`headId`) USING BTREE,
  CONSTRAINT `student_test_info_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `studetn_semester` (`semester_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `student_test_info_ibfk_2` FOREIGN KEY (`headId`) REFERENCES `sys_user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1524687082457550850 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student_test_info
-- ----------------------------
INSERT INTO `student_test_info` VALUES (1524687082457550850, '2021级体测', '高坪小区', '2022-06-03', '17:44:22-18:44:22', 6, 0, 0, '2022学年第一学期', 2, '0', '');

-- ----------------------------
-- Table structure for studetn_semester
-- ----------------------------
DROP TABLE IF EXISTS `studetn_semester`;
CREATE TABLE `studetn_semester`  (
  `semester_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `semester_name`(`semester_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of studetn_semester
-- ----------------------------
INSERT INTO `studetn_semester` VALUES ('2022学年第一学期');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
  PRIMARY KEY (`name`, `role_key`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('学生', 'student', '0');
INSERT INTO `sys_role` VALUES ('班长', 'monitor', '0');
INSERT INTO `sys_role` VALUES ('管理员', 'admin', '0');
INSERT INTO `sys_role` VALUES ('老师', 'teacher', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `identity` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grade` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `specialty_class` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nationality` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '\r\n\r\n名族',
  `birth` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `identity`(`identity`) USING BTREE,
  INDEX `specialty_class`(`specialty_class`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1524688490779004929 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (2, 'aa', '管理员1', '$2a$10$0She0eksknh8v.x.Rk52xuULK46Ktl8Vedhy4nRyknUzI6j9U37uW', '管理员', '男', '', '12345678901', '', '110', '2020-08-09', '510788822457574834');
INSERT INTO `sys_user` VALUES (5, '123123', '管理员2', '$2a$10$7sus.Yief2L.pB.pTErxzexpcClttg1VThVmw31gSpTAVro64JPa.', '管理员', '男', '', '12345678901', '', '110', '2020-08-09', '510788822457574834');
INSERT INTO `sys_user` VALUES (1518576439321149441, '1135', '彭波', '$2a$10$qlMs51Z23F0i7U06YxjJRePYubRyRU937mGP/q/SZXiZcyUQvl70i', '老师', '男', NULL, '13990892135', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (1518576645857067010, '1120', '李昊', '$2a$10$l5Fv70HGFhtdy9lThEfkpukUVSW4s1bOiizoslFhtkl.Nq7KHlqFy', '老师', '男', NULL, '13990892133', NULL, NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (1518578357388951554, '202120030908', '彭曜耀', '$2a$10$pYy7AU3n5B1C9WcAHiyT3OG6Psve9/ISJYs8030RRlvtnxmxKLdaq', '班长', '男', '2021', '13905671283', '医本1', '1', '2003-09-08', '511302200309086617');
INSERT INTO `sys_user` VALUES (1524688490779004929, '3120200971106', '张某', '$2a$10$1ieYTGS9/u0kxxR7/tZP9.UkHVFx8kUz//HJylJ8imnelZYV2eExy', '班长', '男', '2020级', '15700683887', '10班', '100051131', '2022-05-01', '510164613161651513');

SET FOREIGN_KEY_CHECKS = 1;
