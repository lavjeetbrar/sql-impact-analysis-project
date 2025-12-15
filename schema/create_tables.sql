CREATE TABLE assignments (
    assignment_id INT PRIMARY KEY,
    assignment_name TEXT,
    region TEXT,
    impact_score NUMERIC
);

CREATE TABLE donors (
    donor_id INT PRIMARY KEY,
    donor_type TEXT
);

CREATE TABLE donations (
    donation_id INT PRIMARY KEY,
    assignment_id INT,
    donor_id INT,
    amount NUMERIC,
    FOREIGN KEY (assignment_id) REFERENCES assignments(assignment_id),
    FOREIGN KEY (donor_id) REFERENCES donors(donor_id)
);
