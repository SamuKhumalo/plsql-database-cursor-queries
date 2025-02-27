DECLARE 
	v_staffnr s_staff.staffnr%TYPE;
	v_initials s_staff.initials%TYPE;
	v_surname s_staff.surname%TYPE;
	v_job s_staff.job%TYPE;
	v_fac_code s_faculty.fac_code%TYPE;
	v_fac_name s_faculty.fac_name%TYPE;
	v_dip_code s_diploma.dip_code%TYPE;
	v_dip_name s_diploma.dip_name%TYPE;
	

	
	CURSOR dean_cur IS
	SELECT a.staffnr ,a.initials ,a.surname,INITCAP(a.job) ,b.fac_code , b.fac_name 
	FROM s_staff a, s_faculty b
	WHERE a.staffnr = b.fac_head;


	CURSOR dip_cur(p_fac_code VARCHAR2) IS
	SELECT c.dip_code , c.dip_name
	FROM s_diploma c WHERE
	p_fac_code =c.fac_code;

	
	
BEGIN

	IF NOT dean_cur%ISOPEN THEN
	OPEN dean_cur;
	END IF;
	
	LOOP
	FETCH dean_cur INTO v_staffnr ,v_initials, v_surname,v_job,v_fac_code,v_fac_name;
	EXIT when dean_cur%NOTFOUND;
	DBMS_OUTPUT.PUT_LINE(v_job||' '||v_initials||' - '||v_surname);
	dbms_output.put_line('heads the faculty of: '||v_fac_code);
	dbms_output.put_line('having the following diplomas');
	
	
	IF NOT dip_cur%ISOPEN THEN
	OPEN dip_cur(v_fac_code);
	END IF;
	
	LOOP
	FETCH dip_cur INTO v_dip_code ,v_dip_name;
	EXIT when dip_cur%NOTFOUND;
	DBMS_OUTPUT.PUT_LINE(v_dip_code||' - '||v_dip_name);
	
	END LOOP;
	
	
	CLOSE dip_cur;
	
	
	END LOOP;
	CLOSE dean_cur;
	
	
	
END;
/