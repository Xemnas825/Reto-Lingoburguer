CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price NUMBER(10,2),
    availability BOOLEAN,
    image_url VARCHAR(255),
    category_id1 INT,
    FOREIGN KEY (category_id1) REFERENCES categories (category_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS allergens (
    allergern_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE IF NOT EXISTS products_allergens (
    allergern_id1 INT,
    product_id1 INT,
    FOREIGN KEY (allergern_id1) REFERENCES allergens (allergern_id) ON DELETE SET NULL,
    FOREIGN KEY (product_id1) REFERENCES products (product_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telephone VARCHAR(20), 
    address VARCHAR(100),
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS establishments (
    establishment_id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     address VARCHAR(100),
     telephone VARCHAR(20), 
     opening_hours VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS jobs (
    job_id INT AUTO_INCREMENT PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    min_salary NUMBER(10,2),
    max_salary NUMBER(10,2)
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telephone VARCHAR(20), 
    address VARCHAR(100),
    password_hash VARCHAR(255) NOT NULL,
    hire_date DATE,
    salary NUMBER(10,2),
    job_id1 INT,
    establishment_id1 INT,
    FOREIGN KEY (job_id1) REFERENCES jobs (job_id) ON DELETE SET NULL,
    FOREIGN KEY (establishment_id1) REFERENCES establishments (establishment_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS payment_methods(
    payment_method_id INT AUTO_INCREMENT PRIMARY KEY,
    name_method VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    date_order DATE,
    type_order ENUM('online', 'physical'),
    status ENUM('local', 'online', 'take_away'),
    total_price NUMBER(10,2),
    establishment_id2 INT,
    employee_id1 INT,
    client_id1 INT,
    payment_method_id1 INT,
    FOREIGN KEY (establishment_id2) REFERENCES establishments (establishment_id) ON DELETE SET NULL,
    FOREIGN KEY (employee_id1) REFERENCES employees (employee_id) ON DELETE SET NULL,
    FOREIGN KEY (client_id1) REFERENCES clients (client_id) ON DELETE SET NULL,
    FOREIGN KEY (payment_method_id1) REFERENCES payment_methods (payment_method_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS order_details (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT,
    unit price NUMBER(5,2),
    notes TEXT,
    order_id1 INT,
    product_id2 INT,
    FOREIGN KEY (order_id1) REFERENCES orders (order_id) ON DELETE SET NULL,
    FOREIGN KEY (product_id2) REFERENCES products (product_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    score INT CHECK (puntuacion BETWEEN 1 AND 5),
    comment TEXT,
    date_rating DATE,
    order_id2 INT,
    client_id2 INT,
    FOREIGN KEY (order_id2) REFERENCES orders (order_id) ON DELETE SET NULL;
    FOREIGN KEY (client_id2) REFERENCES clients (client_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS job_offers (
    job_offer_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50),
    description TEXT,
    min_salary NUMBER(10,2),
    max_salary NUMBER(10,2),
    status BOOLEAN,
    publication_date DATE, 
    end_date DATE,
    journal ENUM('full', 'partial', 'weekends'),
    experience_required VARCHAR(100),
    education_required VARCHAR(100),
    establishment_id3 INT,
    FOREIGN KEY (establishment_id3) REFERENCES establishments (establishment_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS candidates (
    candidate_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telephone VARCHAR(20), 
    cv_url VARCHAR(255),
    letter_presentation TEXT,
    application_date DATE,
    status ENUM('received', 'en_revision', 'interview', 'rejected', 'accepted') NOT NULL DEFAULT 'received',
    notes TEXT,
    availability VARCHAR(255),
    job_offer_id1 INT,
    FOREIGN KEY (job_offer_id1) REFERENCES job_offers (job_offer_id) ON DELETE SET NULL
)