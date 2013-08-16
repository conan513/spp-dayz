TYPE=VIEW
query=select `id`.`id` AS `instance_deployable_id`,`d`.`id` AS `vehicle_id`,`d`.`class_name` AS `class_name`,`s`.`id` AS `owner_id`,`p`.`name` AS `owner_name`,`p`.`unique_id` AS `owner_unique_id`,`s`.`is_dead` AS `is_owner_dead`,`id`.`worldspace` AS `worldspace`,`id`.`inventory` AS `inventory` from (((`dayz`.`instance_deployable` `id` join `dayz`.`deployable` `d` on((`id`.`deployable_id` = `d`.`id`))) join `dayz`.`survivor` `s` on((`id`.`owner_id` = `s`.`id`))) join `dayz`.`profile` `p` on((`s`.`unique_id` = `p`.`unique_id`)))
md5=b3f458a0987c87cd3bcb5e15adc835ab
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2013-08-14 14:18:58
create-version=1
source=select `id`.`id` AS `instance_deployable_id`,`d`.`id` AS `vehicle_id`,`d`.`class_name` AS `class_name`,`s`.`id` AS `owner_id`,`p`.`name` AS `owner_name`,`p`.`unique_id` AS `owner_unique_id`,`s`.`is_dead` AS `is_owner_dead`,`id`.`worldspace` AS `worldspace`,`id`.`inventory` AS `inventory` from (((`instance_deployable` `id` join `deployable` `d` on((`id`.`deployable_id` = `d`.`id`))) join `survivor` `s` on((`id`.`owner_id` = `s`.`id`))) join `profile` `p` on((`s`.`unique_id` = `p`.`unique_id`))) ;
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `id`.`id` AS `instance_deployable_id`,`d`.`id` AS `vehicle_id`,`d`.`class_name` AS `class_name`,`s`.`id` AS `owner_id`,`p`.`name` AS `owner_name`,`p`.`unique_id` AS `owner_unique_id`,`s`.`is_dead` AS `is_owner_dead`,`id`.`worldspace` AS `worldspace`,`id`.`inventory` AS `inventory` from (((`dayz`.`instance_deployable` `id` join `dayz`.`deployable` `d` on((`id`.`deployable_id` = `d`.`id`))) join `dayz`.`survivor` `s` on((`id`.`owner_id` = `s`.`id`))) join `dayz`.`profile` `p` on((`s`.`unique_id` = `p`.`unique_id`)))
