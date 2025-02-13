-- Active: 1739156989671@@127.0.0.1@5432@appsenindb

select * from public.at_sys_msuser;
INSERT INTO
    at_sys_msdays (
        days_name,
        created_by,
        modified_by,
        is_active
    )
VALUES ('Senin', 1, 1, TRUE),
    ('Selasa', 1, 1, TRUE),
    ('Rabu', 1, 1, TRUE),
    ('Kamis', 1, 1, TRUE),
    ('Jumat', 1, 1, TRUE),
    ('Sabtu', 1, 1, TRUE),
    ('Minggu', 1, 1, TRUE);

INSERT INTO
    at_sys_msrole (
        role_name,
        created_by,
        modified_by,
        is_active
    )
VALUES ('Administrator', 1, 1, TRUE);

INSERT INTO
    at_sys_msrole (
        role_name,
        created_by,
        modified_by,
        is_active
    )
VALUES ('Team_Leader', 1, 1, TRUE),
    ('Tech_Writer', 1, 1, TRUE),
    ('Tech_Support', 1, 1, TRUE);

select * from at_sys_msrole;

INSERT INTO
    at_sys_msposition (
        position_name,
        created_by,
        modified_by,
        is_active
    )
VALUES (
        'Appsenin_Position',
        1,
        1,
        TRUE
    ),
    ('Team Leader', 1, 1, TRUE),
    ('Technical Support',1,1,TRUE),
    ('Technical Writer',1,1,TRUE);

select * from at_sys_msposition;

INSERT INTO
    at_sys_msdepartment (
        department_name,
        created_by,
        modified_by,
        is_active
    )
VALUES ('Appsenin', 1, 1, TRUE),
    ('Korporat-1', 1, 1, TRUE);


--set foreign key

select * from at_sys_msdepartment;
INSERT INTO
    at_sys_msuserdepartment (
        user_id,
        position_id,
        department_id,
        created_by,
        modified_by,
        is_active
    )
VALUES (1, 1, 1, 1, 1, TRUE)
    , (2, 2, 1, 1, 1, TRUE),
    (3, 3, 1, 1, 1, TRUE),
    (4, 4, 1, 1, 1, TRUE);

select * from at_sys_msuserdepartment;

insert into
    at_sys_msuserrole 
    (user_id,role_id,created_by,created_at,modified_by,modified_at,is_active)
VALUES 
    (1, 1, 1,'now()', 1,'now()', TRUE),
    (2, 3, 1,'now()', 1,'now()', TRUE),
    (3, 4, 1,'now()', 1,'now()', TRUE),
    (4, 5, 1,'now()', 1,'now()', TRUE)
    ;

select * from at_sys_msuserrole;

select * from at_sys_msuserdepartment;

insert into
    at_sys_msuserrole (
        user_id,
        role_id,
        created_by,
        modified_by,
        is_active
    )
    -- values (1, 1, 2, 2, TRUE);
VALUES (6, 2, 2, 2, TRUE),
    (7, 3, 2, 2, TRUE),
    (8, 4, 2, 2, TRUE);

SELECT * FROM at_sys_msuserrole