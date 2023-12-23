USE ${ENVIRONMENT}_database;

CREATE TABLE IF NOT EXISTS wishlist (
  id INT AUTO_INCREMENT PRIMARY KEY,
  item_name VARCHAR(255) NOT NULL,
  description TEXT
);

-- Add initial data if in the test environment
SET @environment = '${ENVIRONMENT}';
IF @environment = 'test' THEN
  INSERT INTO wishlist (item_name, description) VALUES
    ('Item 1', 'Description for Item 1'),
    ('Item 2', 'Description for Item 2'),
    ('Item 3', 'Description for Item 3');
END IF;
