<!-- "file": "dose-to-product-step1.sql" -->
SELECT vmp.vmpid, vmp.name, vmp.udfs_dose_uomcd, vpi.strnt_dnmtr_uomcd
FROM vtm
INNER JOIN vmp ON vtm.vtmid = vmp.vtmid
INNER JOIN vmpform ON vmp.vmpid = vmpform.vmpid
INNER JOIN vmproute ON vmp.vmpid = vmproute.vmpid
INNER JOIN vpi ON vmp.vmpid = vpi.vmpid
WHERE vtm.vtmid = {insert_vtm_id}
AND ( vmpform.formid = IN_form_id OR IsNull(IN_form_id) )
AND ( vmproute.routeid = IN_route_id OR IsNull(IN_route_id) );