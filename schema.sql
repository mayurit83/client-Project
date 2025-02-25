CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    contact VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    deadline DATE,
    client_id INT,
    status ENUM('Planned', 'In Progress', 'Completed') DEFAULT 'Planned',
    FOREIGN KEY (client_id) REFERENCES clients(id)
);
