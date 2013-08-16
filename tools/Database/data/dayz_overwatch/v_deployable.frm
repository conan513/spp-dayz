TYPE=VIEW
query=select `id`.`id` AS `instance_deployable_id`,`d`.`id` AS `vehicle_id`,`d`.`class_name` AS `class_name`,`s`.`id` AS `owner_id`,`p`.`name` AS `owner_name`,`p`.`unique_id` AS `owner_unique_id`,`s`.`is_dead` AS `is_owner_dead`,`id`.`worldspace` AS `worldspace`,`id`.`inventory` AS `inventory` from (((`dayz_overwatch`.`instance_deployable` `id` join `dayz_overwatch`.`deployable` `d` on((`id`.`deployable_id` = `d`.`id`))) join `dayz_overwatch`.`survivor` `s` on((`id`.`owner_id` = `s`.`id`))) join `dayz_overwatch`.`profile` `p` on((`s`.`unique_id` = `p`.`unique_id`)))
md5=e344e2f13379056843b5b0b4012e0554
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2013-08-14 14:19:51
create-version=1
source=select `id`.`id` AS `instance_deployable_id`,`d`.`id` AS `vehicle_id`,`d`.`class_name` AS `class_name`,`s`.`id` AS `owner_id`,`p`.`name` AS `owner_name`,`p`.`unique_id` AS `owner_unique_id`,`s`.`is_dead` AS `is_owner_dead`,`id`.`worldspace` AS `worldspace`,`id`.`inventory` AS `inventory` from (((`instance_deployable` `id` join `deployable` `d` on((`id`.`deployable_id` = `d`.`id`))) join `survivor` `s` on((`id`.`owner_id` = `s`.`id`))) join `profile` `p` on((`s`.`unique_id` = `p`.`unique_id`))) ;
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `id`.`id` AS `instance_deployable_id`,`d`.`id` AS `vehicle_id`,`d`.`class_name` AS `class_name`,`s`.`id` AS `owner_id`,`p`.`name` AS `owner_name`,`p`.`unique_id` AS `owner_unique_id`,`s`.`is_dead` AS `is_owner_dead`,`id`.`worldspace` AS `worldspace`,`id`.`inventory` AS `inventory` from (((`dayz_overwatch`.`instance_deployable` `id` join `dayz_overwatch`.`deployable` `d` on((`id`.`deployable_id` = `d`.`id`))) join `dayz_overwatch`.`survivor` `s` on((`id`.`owner_id` = `s`.`id`))) join `dayz_overwatch`.`profile` `p` on((`s`.`unique_id` = `p`.`unique_id`)))
