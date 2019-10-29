<!-- "file": "dose-to-product-storedproc.sql" -->
PROCEDURE sp_VTMtoVMP(
IN IN_vtm_id BIGINT UNSIGNED, 
IN IN_dose_qty DECIMAL, 
IN IN_dose_uom_cd BIGINT UNSIGNED, 
IN IN_form_id BIGINT UNSIGNED, 
IN IN_route_id BIGINT UNSIGNED)
BEGIN
	SELECT DISTINCT
	vmp.vmpid, 
	vmp.name,
	calc_qty(IN_dose_qty,convert_units(vpi.strnt_nmrtr_val,vpi.strnt_nmrtr_uomcd,IN_dose_uom_cd),vpi.strnt_dnmtr_val,vmp.udfs) AS qty,
	vmp.udfs_dose_uomcd,
	vpi.strnt_dnmtr_uomcd,
  calc_rank(IN_dose_qty,convert_units(vpi.strnt_nmrtr_val,vpi.strnt_nmrtr_uomcd,IN_dose_uom_cd),vpi.strnt_dnmtr_val,vmp.udfs,vmpform.formid) AS rank
	FROM vtm 
	INNER JOIN vmp ON vtm.vtmid = vmp.vtmid 
	INNER JOIN vmpform ON vmp.vmpid = vmpform.vmpid 
	INNER JOIN vmproute ON vmp.vmpid = vmproute.vmpid 
	INNER JOIN vpi ON vmp.vmpid = vpi.vmpid
	INNER JOIN lookup ON vpi.strnt_nmrtr_uomcd = lookup.id
	WHERE vtm.vtmid = IN_vtm_id 
	AND ( vmpform.formid = IN_form_id OR IsNull(IN_form_id) )
	AND ( vmproute.routeid = IN_route_id OR IsNull(IN_route_id) )
	ORDER BY rank, qty;
END