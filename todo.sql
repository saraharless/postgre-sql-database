CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(2000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);


INSERT into todos (title, details, priority, created_at) VALUES ('do laundry', 'separate into categories first', 2, '2017-08-28 2:31:50.180922');

INSERT into todos (title, details, priority, created_at) VALUES ('wash dishes', 'by hand then in dishwasher because gross', 1, '2017-08-28 2:31:50.180922');

INSERT into todos (title, details, priority, created_at, completed_at) VALUES ('wash dogs', 'take to Tomlinsons to pet washing station then bribe with a treat', 3, '2017-08-28 2:31:50.180922', '2017-08-29 2:31:50.180922');

INSERT into todos (title, details, priority, created_at) VALUES ('mop kitchen', 'mix cleaning agent with water in bucket', 4, '2017-08-28 2:31:50.180922');

INSERT into todos (title, details, priority, created_at) VALUES ('buy groceries', 'eggs, milk, bread, butter, flour, sugar, gummie bears', 5, '2017-08-28 2:31:50.180922');

SELECT title FROM todos WHERE completed_at IS NULL;

SELECT title FROM todos WHERE priority >= 1;

UPDATE todos SET completed_at = '2017-08-29 2:31:50.180922' WHERE id = 3;

DELETE FROM todos WHERE completed_at is NOT NULL;
