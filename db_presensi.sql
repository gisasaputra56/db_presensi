
CREATE DATABASE IF NOT EXISTS db_presensi;
USE db_presensi;

CREATE TABLE karyawan (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE absensi (
  id INT AUTO_INCREMENT PRIMARY KEY,
  karyawan_id INT NOT NULL,
  tanggal DATE NOT NULL,
  jam_masuk TIME,
  jam_pulang TIME,
  FOREIGN KEY (karyawan_id) REFERENCES karyawan(id)
);

INSERT INTO karyawan (nama, username, password) VALUES ('Administrator', 'admin', 'admin123');
