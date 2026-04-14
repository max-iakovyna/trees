-- ========================================
-- PostgreSQL Database: Trees & Fields
-- Simplified Version: 3 Fields, 10-12 Trees Each
-- Dates within April 2026
-- ========================================

-- Drop tables if exist
DROP TABLE IF EXISTS Trees;
DROP TABLE IF EXISTS Fields;

-- =====================
-- Create Tables
-- =====================
CREATE TABLE Fields (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Trees (
    id SERIAL PRIMARY KEY,
    location_x REAL NOT NULL,
    location_y REAL NOT NULL,
    crop_type TEXT CHECK(crop_type IN ('Apple','Cherry','Lemon','Mandarine','Orange','Peach','Plum','Pear')) NOT NULL,
    status TEXT CHECK(status IN ('Healthy','Young','Stressed','Diseased','Dead')) NOT NULL,
    field_id INTEGER REFERENCES Fields(id),
    date DATE NOT NULL
);

-- =====================
-- Insert Fields
-- =====================
INSERT INTO Fields (id, name) VALUES
(1, 'North Field'),
(2, 'East Orchard'),
(3, 'South Grove');

-- =====================
-- Insert Trees
-- North Field: 12 trees
-- =====================
INSERT INTO Trees (location_x, location_y, crop_type, status, field_id, date) VALUES
(1.0, 2.0, 'Apple', 'Healthy', 1, '2026-04-01'),
(1.5, 2.5, 'Apple', 'Stressed', 1, '2026-04-03'),
(2.0, 1.5, 'Pear', 'Healthy', 1, '2026-04-05'),
(2.5, 2.2, 'Cherry', 'Young', 1, '2026-04-06'),
(3.0, 3.0, 'Lemon', 'Diseased', 1, '2026-04-07'),
(3.5, 2.5, 'Apple', 'Healthy', 1, '2026-04-08'),
(4.0, 3.5, 'Peach', 'Stressed', 1, '2026-04-10'),
(4.5, 1.8, 'Plum', 'Healthy', 1, '2026-04-12'),
(5.0, 2.5, 'Pear', 'Young', 1, '2026-04-15'),
(5.5, 3.0, 'Apple', 'Dead', 1, '2026-04-18'),
(6.0, 2.2, 'Orange', 'Healthy', 1, '2026-04-20'),
(6.5, 3.5, 'Mandarine', 'Healthy', 1, '2026-04-25');

-- =====================
-- East Orchard: 11 trees
-- =====================
INSERT INTO Trees (location_x, location_y, crop_type, status, field_id, date) VALUES
(0.5, 1.5, 'Cherry', 'Healthy', 2, '2026-04-02'),
(1.0, 2.0, 'Apple', 'Stressed', 2, '2026-04-03'),
(1.5, 1.8, 'Pear', 'Young', 2, '2026-04-05'),
(2.0, 2.5, 'Lemon', 'Healthy', 2, '2026-04-07'),
(2.5, 3.0, 'Peach', 'Diseased', 2, '2026-04-08'),
(3.0, 2.2, 'Plum', 'Healthy', 2, '2026-04-10'),
(3.5, 3.5, 'Apple', 'Stressed', 2, '2026-04-12'),
(4.0, 2.5, 'Mandarine', 'Healthy', 2, '2026-04-15'),
(4.5, 3.0, 'Cherry', 'Dead', 2, '2026-04-18'),
(5.0, 2.2, 'Orange', 'Healthy', 2, '2026-04-20'),
(5.5, 3.5, 'Pear', 'Young', 2, '2026-04-25');

-- =====================
-- South Grove: 10 trees
-- =====================
INSERT INTO Trees (location_x, location_y, crop_type, status, field_id, date) VALUES
(1.0, 1.0, 'Lemon', 'Healthy', 3, '2026-04-01'),
(1.5, 1.5, 'Orange', 'Stressed', 3, '2026-04-03'),
(2.0, 2.0, 'Mandarine', 'Healthy', 3, '2026-04-05'),
(2.5, 2.5, 'Apple', 'Young', 3, '2026-04-07'),
(3.0, 3.0, 'Peach', 'Diseased', 3, '2026-04-08'),
(3.5, 3.5, 'Plum', 'Healthy', 3, '2026-04-10'),
(4.0, 4.0, 'Pear', 'Stressed', 3, '2026-04-12'),
(4.5, 4.5, 'Cherry', 'Healthy', 3, '2026-04-15'),
(5.0, 5.0, 'Apple', 'Dead', 3, '2026-04-18'),
(5.5, 5.5, 'Lemon', 'Healthy', 3, '2026-04-20');
