CREATE TRIGGER auto_insert_total_bgf
AFTER INSERT ON bgf_locality_area
FOR EACH ROW
BEGIN
    INSERT INTO pbe_bgf_calculation (ID_study_area)
    VALUES (NEW.fid);
END;