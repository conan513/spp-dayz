TYPE=VIEW
query=select `iv`.`id` AS `instance_vehicle_id`,`v`.`id` AS `vehicle_id`,`iv`.`instance_id` AS `instance_id`,`i`.`world_id` AS `world_id`,`v`.`class_name` AS `class_name`,`iv`.`worldspace` AS `worldspace`,`iv`.`inventory` AS `inventory`,`iv`.`parts` AS `parts`,`iv`.`damage` AS `damage`,`iv`.`fuel` AS `fuel` from (((`dayz_overwatch`.`instance_vehicle` `iv` join `dayz_overwatch`.`world_vehicle` `wv` on((`iv`.`world_vehicle_id` = `wv`.`id`))) join `dayz_overwatch`.`vehicle` `v` on((`wv`.`vehicle_id` = `v`.`id`))) join `dayz_overwatch`.`instance` `i` on((`iv`.`instance_id` = `i`.`id`)))
md5=5c58b8577add3729e804c3e031b2677c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2013-08-14 14:19:51
create-version=1
source=select `iv`.`id` AS `instance_vehicle_id`,`v`.`id` AS `vehicle_id`,`iv`.`instance_id` AS `instance_id`,`i`.`world_id` AS `world_id`,`v`.`class_name` AS `class_name`,`iv`.`worldspace` AS `worldspace`,`iv`.`inventory` AS `inventory`,`iv`.`parts` AS `parts`,`iv`.`damage` AS `damage`,`iv`.`fuel` AS `fuel` from (((`instance_vehicle` `iv` join `world_vehicle` `wv` on((`iv`.`world_vehicle_id` = `wv`.`id`))) join `vehicle` `v` on((`wv`.`vehicle_id` = `v`.`id`))) join `instance` `i` on((`iv`.`instance_id` = `i`.`id`))) ;
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `iv`.`id` AS `instance_vehicle_id`,`v`.`id` AS `vehicle_id`,`iv`.`instance_id` AS `instance_id`,`i`.`world_id` AS `world_id`,`v`.`class_name` AS `class_name`,`iv`.`worldspace` AS `worldspace`,`iv`.`inventory` AS `inventory`,`iv`.`parts` AS `parts`,`iv`.`damage` AS `damage`,`iv`.`fuel` AS `fuel` from (((`dayz_overwatch`.`instance_vehicle` `iv` join `dayz_overwatch`.`world_vehicle` `wv` on((`iv`.`world_vehicle_id` = `wv`.`id`))) join `dayz_overwatch`.`vehicle` `v` on((`wv`.`vehicle_id` = `v`.`id`))) join `dayz_overwatch`.`instance` `i` on((`iv`.`instance_id` = `i`.`id`)))
