hive -e "
set mapred.map.tasks = 20;
set mapred.tasktracker.map.tasks.maximum=4;
set hive.merge.mapfiles=false;
set hive.execution.engine=mr;
set hive.vectorized.execution.enabled = true;
set hive.vectorized.execution.reduce.enabled = true;
set hive.cbo.enable=true;
select
rowid,
s_startdt,
s_starttime,
s_enddt,
s_endtime,
c_journaltime,
c_transactionid,
c_operationtype,
c_userid,
cust_id,
pymt_ref,
country_code,
city_code,
pymt_type,
proc_mode,
status_code,
batch_ref,
sbatch_no,
service_type,
cust_ref,
pymt_date,
proc_date,
dr_ac_country_code,
dr_ac_city_code,
dr_ac_no,
dr_ccy,
dr_amt,
dr_date,
payee_name1,
payee_name2,
payee_address1,
payee_address2,
payee_address3,
payee_address4,
payee_name_bo,
payee_address1_bo,
payee_address2_bo,
payee_address3_bo,
payee_fax_no,
last_modi,
payee_bank_code,
payee_branch_code,
payee_branch_scode,
payee_bank_address1,
payee_bank_address2,
is_in_currency,
payee_ac_no,
pymt_details1,
pymt_details2,
pymt_details_bo1,
pymt_details_bo2,
vat_amt,
wht_print_loc,
wht_form_id,
wht_tax_id,
wht_ref_no,
wht_seq_no,
wht_type1,
wht_desc1,
wht_gross_amt1,
wht_amt1,
wht_type2,
wht_desc2,
wht_gross_amt2,
wht_amt2,
discount_amt,
fx_calc_meth,
fx_type,
fx_contract,
fx_rate,
fx_valid_from,
fx_valid_till,
dealer_name,
inv_format,
pymt_ccy,
remit_ccy,
inv_amt,
pymt_amt,
payee_amt,
payee_lcy_amt,
payee_remit_amt,
payee_charge_status,
payee_charge_amt,
payee_charge_remit_amt,
local_charge_to,
oversea_charge_to,
adv_status,
inter_bank_code,
clr_for_tt,
clr_zone_code,
drawee_bank_code,
dlv_meth,
dlv_to,
payr_ind,
pickup_loc_code,
chq_no,
chq_cleared_date,
boi_filename,
last_modify,
bo_ref,
rejected_reason,
cws_status,
cws_status_date,
mac_key,
dr_amt_bce,
pymt_amt_bce,
payee_amt_bce,
payee_adv_no_of_page,
straight_through,
chq_batch_ref,
stopped_date,
adv_type,
no_of_chq_page,
user_id,
smart_card_sn,
limited_chq,
chq_range_ref,
stopped_manually,
chq_reprint_count,
adv_reprint_count,
exception_closed,
dr_status,
random_no,
nostro_ac_no,
local_payment,
channel_id,
channel_pymt_ref,
pymt_priority,
fisc_status,
fisc_filename,
cbc_payment,
fisc_fee,
service_fee,
usr_def_inv_col1_width,
usr_def_inv_col1_align,
usr_def_inv_col2_width,
usr_def_inv_col2_align,
usr_def_inv_col3_width,
usr_def_inv_col3_align,
usr_def_inv_col4_width,
usr_def_inv_col4_align,
usr_def_inv_col5_width,
usr_def_inv_col5_align,
usr_def_inv_col6_width,
usr_def_inv_col6_align,
usr_def_inv_col7_width,
usr_def_inv_col7_align,
usr_def_inv_col8_width,
usr_def_inv_col8_align,
usr_def_inv_col9_width,
usr_def_inv_col9_align,
usr_def_inv_col10_width,
usr_def_inv_col10_align,
usr_def_inv_col11_width,
usr_def_inv_col11_align,
usr_def_inv_col12_width,
usr_def_inv_col12_align,
usr_def_inv_col13_width,
usr_def_inv_col13_align,
usr_def_inv_col14_width,
usr_def_inv_col14_align,
usr_def_inv_col15_width,
usr_def_inv_col15_align,
crossed_cheque,
intra_filename,
bshare_pymt,
is_exported,
payee_id,
org_fx_rate,
org_dr_amt,
payee_charge_amt_bce,
status_mismatch,
proc_method,
email_id,
fax_status,
mail_address1,
mail_address2,
mail_address3,
mail_address4,
trans_type,
reg_code,
reg_country,
reg_info1,
reg_info2,
reg_info3,
instr_code1,
instr_code2,
instr_code3,
instr_code4,
instr_info1,
instr_info2,
instr_info3,
instr_info4,
email_status,
cust_inv_details,
adv_status_email,
tt_type,
rcvr_corr_bank_code,
remit_info_code1,
remit_info_code2,
remit_info_code3,
remit_info_code4,
remit_info_det1,
remit_info_det2,
remit_info_det3,
remit_info_det4,
spl_instr_code1,
spl_instr_code2,
spl_instr_code3,
spl_instr_code4,
spl_instr_code5,
spl_instr_code6,
spl_instr_det1,
spl_instr_det2,
spl_instr_det3,
spl_instr_det4,
spl_instr_det5,
spl_instr_det6,
mcp_leg,
mcp_orgstsid,
mcp_orgbref,
mcp_pref,
mcp_ptyp,
mcp_custname,
mcp_custadd1,
mcp_custadd2,
mcp_custadd3,
mcp_custadd4,
mcp_custadd5,
mcp_orgctrycd,
mcp_orgcitycd,
mcp_orgdrac,
mcp_orgdracname,
mcp_orgdracadd1,
mcp_orgdracadd2,
mcp_orgdracadd3,
mcp_dracboname,
mcp_oboacno,
mcp_oboacname,
mcp_oboacadd1,
mcp_oboacadd2,
mcp_oboacadd3,
transaction_id,
receiver_id_type,
receiver_id,
customer_no,
listed_company_code,
mcp_oboacnamell,
mcp_oboacadd1ll,
mcp_oboacadd2ll,
mcp_oboacadd3ll,
ws_retry,
fx_status,
sub_pymt_type,
cnaps_ind,
original_pymt_type,
original_proc_mode,
sub_ac_no,
cr_sbatch_no,
sts_order_id,
fixing_client_id,
itemized_dr,
converted_or_original,
debit_tax_exemption,
obo_type,
obo_party_id,
original_bank_code,
pp_matched,
pp_filename,
overseas_charge_amt,
overseas_charge_amt_bce,
overseas_charge_remit_amt,
xb_pymt_ref,
aoc_ref,
cr_date,
stp_sbatch_no,
stp_enrich_flag,
stp_candidate_after,
stp_candidate_before,
stp_txn_ref_no,
settlement_request,
settlement_method,
original_fx_type,
ctc_flag,
payee_name_bo_ctc,
payee_address1_bo_ctc,
payee_address2_bo_ctc,
payee_address3_bo_ctc,
pymt_details_bo1_ctc,
pymt_details_bo2_ctc,
ctc_api_response_code,
bene_bank_priority,
fm_error_code,
fx_tenor,
fx_roll_ref,
sender_bic,
bo_status_code,
cust_charge_amt,
cust_charge_ccy,
purpose_code_1,
purpose_code_2,
purpose_code_3,
purpose_code_4,
purpose_code_5,
scan_id,
pymt_flow,
imp_ref,
date_priority,
fxdeliverytype,
fxratetype,
debit_bankid,
debit_ac_curr,
qlcustid,
amt_priority,
funding_aval,
destination_country,
destination_city,
funding_country,
funding_city,
returned_amt,
inbound_reg_report_sent,
outbound_reg_report_sent,
original_dest_city,
group_id,
reprocess_type,
thsd_rollup_ref_id,
thsd_subbatch_id,
sellback_aval,
qlgrpid,
funding_ccy,
dr_operational_ac,
cr_operational_ac,
funding_dr_ac_no,
funding_cr_ac_no,
funding_system,
fx_delivery_date,
fx_del_rpt_sent_flag,
updated_tenor,
return_amount,
auto_leg_status,
instr_dr_amt,
adj_err_code,
funding_date,
dr_system,
cr_system,
cr_custid,
funding_custid,
repair_type,
pymt_fully_rejected,
sellback_dr_ac_no,
sellback_payee_ac_no,
orig_payee_ac_no,
orig_payee_amt,
orig_payee_remit_amt,
orig_pymt_amt,
orig_pymt_ccy,
sellback_status,
sellback_dr_amt,
re_effect_orig_ccy,
dr_acc_entity,
payee_acc_entity,
dracct_entity_status,
pymtacct_entity_status,
edmp_partitiondate
from
prd_sri_open.stsprd_ae_tlpymtdetails where edmp_partitiondate = '${edmp_partitiondate}';" > ${rrpextract}/stsprd_ae_tlpymtdetails.${edmp_partitiondate}.dat





hive -e "
set mapred.map.tasks = 20;
set mapred.tasktracker.map.tasks.maximum=4;
set hive.merge.mapfiles=false;
set hive.execution.engine=mr;
set hive.vectorized.execution.enabled = true;
set hive.vectorized.execution.reduce.enabled = true;
set hive.cbo.enable=true;
select
rowid,
s_startdt,
s_starttime,
s_enddt,
s_endtime,
c_journaltime,
c_transactionid,
c_operationtype,
c_userid,
cust_id,
pymt_ref,
country_code,
city_code,
pymt_type,
proc_mode,
status_code,
batch_ref,
sbatch_no,
service_type,
cust_ref,
pymt_date,
proc_date,
dr_ac_country_code,
dr_ac_city_code,
dr_ac_no,
dr_ccy,
dr_amt,
dr_date,
payee_name1,
payee_name2,
payee_address1,
payee_address2,
payee_address3,
payee_address4,
payee_name_bo,
payee_address1_bo,
payee_address2_bo,
payee_address3_bo,
payee_fax_no,
last_modi,
payee_bank_code,
payee_branch_code,
payee_branch_scode,
payee_bank_address1,
payee_bank_address2,
is_in_currency,
payee_ac_no,
pymt_details1,
pymt_details2,
pymt_details_bo1,
pymt_details_bo2,
vat_amt,
wht_print_loc,
wht_form_id,
wht_tax_id,
wht_ref_no,
wht_seq_no,
wht_type1,
wht_desc1,
wht_gross_amt1,
wht_amt1,
wht_type2,
wht_desc2,
wht_gross_amt2,
wht_amt2,
discount_amt,
fx_calc_meth,
fx_type,
fx_contract,
fx_rate,
fx_valid_from,
fx_valid_till,
dealer_name,
inv_format,
pymt_ccy,
remit_ccy,
inv_amt,
pymt_amt,
payee_amt,
payee_lcy_amt,
payee_remit_amt,
payee_charge_status,
payee_charge_amt,
payee_charge_remit_amt,
local_charge_to,
oversea_charge_to,
adv_status,
inter_bank_code,
clr_for_tt,
clr_zone_code,
drawee_bank_code,
dlv_meth,
dlv_to,
payr_ind,
pickup_loc_code,
chq_no,
chq_cleared_date,
boi_filename,
last_modify,
bo_ref,
rejected_reason,
cws_status,
cws_status_date,
mac_key,
dr_amt_bce,
pymt_amt_bce,
payee_amt_bce,
payee_adv_no_of_page,
straight_through,
chq_batch_ref,
stopped_date,
adv_type,
no_of_chq_page,
user_id,
smart_card_sn,
limited_chq,
chq_range_ref,
stopped_manually,
chq_reprint_count,
adv_reprint_count,
exception_closed,
dr_status,
random_no,
nostro_ac_no,
local_payment,
channel_id,
channel_pymt_ref,
pymt_priority,
fisc_status,
fisc_filename,
cbc_payment,
fisc_fee,
service_fee,
usr_def_inv_col1_width,
usr_def_inv_col1_align,
usr_def_inv_col2_width,
usr_def_inv_col2_align,
usr_def_inv_col3_width,
usr_def_inv_col3_align,
usr_def_inv_col4_width,
usr_def_inv_col4_align,
usr_def_inv_col5_width,
usr_def_inv_col5_align,
usr_def_inv_col6_width,
usr_def_inv_col6_align,
usr_def_inv_col7_width,
usr_def_inv_col7_align,
usr_def_inv_col8_width,
usr_def_inv_col8_align,
usr_def_inv_col9_width,
usr_def_inv_col9_align,
usr_def_inv_col10_width,
usr_def_inv_col10_align,
usr_def_inv_col11_width,
usr_def_inv_col11_align,
usr_def_inv_col12_width,
usr_def_inv_col12_align,
usr_def_inv_col13_width,
usr_def_inv_col13_align,
usr_def_inv_col14_width,
usr_def_inv_col14_align,
usr_def_inv_col15_width,
usr_def_inv_col15_align,
crossed_cheque,
intra_filename,
bshare_pymt,
is_exported,
payee_id,
org_fx_rate,
org_dr_amt,
payee_charge_amt_bce,
status_mismatch,
proc_method,
email_id,
fax_status,
mail_address1,
mail_address2,
mail_address3,
mail_address4,
trans_type,
reg_code,
reg_country,
reg_info1,
reg_info2,
reg_info3,
instr_code1,
instr_code2,
instr_code3,
instr_code4,
instr_info1,
instr_info2,
instr_info3,
instr_info4,
email_status,
cust_inv_details,
adv_status_email,
tt_type,
rcvr_corr_bank_code,
remit_info_code1,
remit_info_code2,
remit_info_code3,
remit_info_code4,
remit_info_det1,
remit_info_det2,
remit_info_det3,
remit_info_det4,
spl_instr_code1,
spl_instr_code2,
spl_instr_code3,
spl_instr_code4,
spl_instr_code5,
spl_instr_code6,
spl_instr_det1,
spl_instr_det2,
spl_instr_det3,
spl_instr_det4,
spl_instr_det5,
spl_instr_det6,
mcp_leg,
mcp_orgstsid,
mcp_orgbref,
mcp_pref,
mcp_ptyp,
mcp_custname,
mcp_custadd1,
mcp_custadd2,
mcp_custadd3,
mcp_custadd4,
mcp_custadd5,
mcp_orgctrycd,
mcp_orgcitycd,
mcp_orgdrac,
mcp_orgdracname,
mcp_orgdracadd1,
mcp_orgdracadd2,
mcp_orgdracadd3,
mcp_dracboname,
mcp_oboacno,
mcp_oboacname,
mcp_oboacadd1,
mcp_oboacadd2,
mcp_oboacadd3,
transaction_id,
receiver_id_type,
receiver_id,
customer_no,
listed_company_code,
mcp_oboacnamell,
mcp_oboacadd1ll,
mcp_oboacadd2ll,
mcp_oboacadd3ll,
ws_retry,
fx_status,
sub_pymt_type,
cnaps_ind,
original_pymt_type,
original_proc_mode,
sub_ac_no,
cr_sbatch_no,
sts_order_id,
fixing_client_id,
itemized_dr,
converted_or_original,
debit_tax_exemption,
obo_type,
obo_party_id,
original_bank_code,
pp_matched,
pp_filename,
overseas_charge_amt,
overseas_charge_amt_bce,
overseas_charge_remit_amt,
xb_pymt_ref,
aoc_ref,
cr_date,
stp_sbatch_no,
stp_enrich_flag,
stp_candidate_after,
stp_candidate_before,
stp_txn_ref_no,
settlement_request,
settlement_method,
original_fx_type,
ctc_flag,
payee_name_bo_ctc,
payee_address1_bo_ctc,
payee_address2_bo_ctc,
payee_address3_bo_ctc,
pymt_details_bo1_ctc,
pymt_details_bo2_ctc,
ctc_api_response_code,
bene_bank_priority,
fm_error_code,
fx_tenor,
fx_roll_ref,
sender_bic,
bo_status_code,
cust_charge_amt,
cust_charge_ccy,
purpose_code_1,
purpose_code_2,
purpose_code_3,
purpose_code_4,
purpose_code_5,
scan_id,
pymt_flow,
imp_ref,
date_priority,
fxdeliverytype,
fxratetype,
debit_bankid,
debit_ac_curr,
qlcustid,
amt_priority,
funding_aval,
destination_country,
destination_city,
funding_country,
funding_city,
returned_amt,
inbound_reg_report_sent,
outbound_reg_report_sent,
original_dest_city,
group_id,
reprocess_type,
thsd_rollup_ref_id,
thsd_subbatch_id,
sellback_aval,
qlgrpid,
funding_ccy,
dr_operational_ac,
cr_operational_ac,
funding_dr_ac_no,
funding_cr_ac_no,
funding_system,
fx_delivery_date,
fx_del_rpt_sent_flag,
updated_tenor,
return_amount,
auto_leg_status,
instr_dr_amt,
adj_err_code,
funding_date,
dr_system,
cr_system,
cr_custid,
funding_custid,
repair_type,
pymt_fully_rejected,
sellback_dr_ac_no,
sellback_payee_ac_no,
orig_payee_ac_no,
orig_payee_amt,
orig_payee_remit_amt,
orig_pymt_amt,
orig_pymt_ccy,
sellback_status,
sellback_dr_amt,
re_effect_orig_ccy,
dr_acc_entity,
payee_acc_entity,
dracct_entity_status,
pymtacct_entity_status,
edmp_partitiondate
from
prd_sri_open.stsprd_sg_tlpymtdetails where edmp_partitiondate = '${edmp_partitiondate}';" > ${rrpextract}/stsprd_sg_tlpymtdetails.${edmp_partitiondate}.dat



hive -e "
set mapred.map.tasks = 20;
set mapred.tasktracker.map.tasks.maximum=4;
set hive.merge.mapfiles=false;
set hive.execution.engine=mr;
set hive.vectorized.execution.enabled = true;
set hive.vectorized.execution.reduce.enabled = true;
set hive.cbo.enable=true;
select
rowid,
s_startdt,
s_starttime,
s_enddt,
s_endtime,
c_journaltime,
c_transactionid,
c_operationtype,
c_userid,
cust_id,
pymt_ref,
country_code,
city_code,
pymt_type,
proc_mode,
status_code,
batch_ref,
sbatch_no,
service_type,
cust_ref,
pymt_date,
proc_date,
dr_ac_country_code,
dr_ac_city_code,
dr_ac_no,
dr_ccy,
dr_amt,
dr_date,
payee_name1,
payee_name2,
payee_address1,
payee_address2,
payee_address3,
payee_address4,
payee_name_bo,
payee_address1_bo,
payee_address2_bo,
payee_address3_bo,
payee_fax_no,
last_modi,
payee_bank_code,
payee_branch_code,
payee_branch_scode,
payee_bank_address1,
payee_bank_address2,
is_in_currency,
payee_ac_no,
pymt_details1,
pymt_details2,
pymt_details_bo1,
pymt_details_bo2,
vat_amt,
wht_print_loc,
wht_form_id,
wht_tax_id,
wht_ref_no,
wht_seq_no,
wht_type1,
wht_desc1,
wht_gross_amt1,
wht_amt1,
wht_type2,
wht_desc2,
wht_gross_amt2,
wht_amt2,
discount_amt,
fx_calc_meth,
fx_type,
fx_contract,
fx_rate,
fx_valid_from,
fx_valid_till,
dealer_name,
inv_format,
pymt_ccy,
remit_ccy,
inv_amt,
pymt_amt,
payee_amt,
payee_lcy_amt,
payee_remit_amt,
payee_charge_status,
payee_charge_amt,
payee_charge_remit_amt,
local_charge_to,
oversea_charge_to,
adv_status,
inter_bank_code,
clr_for_tt,
clr_zone_code,
drawee_bank_code,
dlv_meth,
dlv_to,
payr_ind,
pickup_loc_code,
chq_no,
chq_cleared_date,
boi_filename,
last_modify,
bo_ref,
rejected_reason,
cws_status,
cws_status_date,
mac_key,
dr_amt_bce,
pymt_amt_bce,
payee_amt_bce,
payee_adv_no_of_page,
straight_through,
chq_batch_ref,
stopped_date,
adv_type,
no_of_chq_page,
user_id,
smart_card_sn,
limited_chq,
chq_range_ref,
stopped_manually,
chq_reprint_count,
adv_reprint_count,
exception_closed,
dr_status,
random_no,
nostro_ac_no,
local_payment,
channel_id,
channel_pymt_ref,
pymt_priority,
fisc_status,
fisc_filename,
cbc_payment,
fisc_fee,
service_fee,
usr_def_inv_col1_width,
usr_def_inv_col1_align,
usr_def_inv_col2_width,
usr_def_inv_col2_align,
usr_def_inv_col3_width,
usr_def_inv_col3_align,
usr_def_inv_col4_width,
usr_def_inv_col4_align,
usr_def_inv_col5_width,
usr_def_inv_col5_align,
usr_def_inv_col6_width,
usr_def_inv_col6_align,
usr_def_inv_col7_width,
usr_def_inv_col7_align,
usr_def_inv_col8_width,
usr_def_inv_col8_align,
usr_def_inv_col9_width,
usr_def_inv_col9_align,
usr_def_inv_col10_width,
usr_def_inv_col10_align,
usr_def_inv_col11_width,
usr_def_inv_col11_align,
usr_def_inv_col12_width,
usr_def_inv_col12_align,
usr_def_inv_col13_width,
usr_def_inv_col13_align,
usr_def_inv_col14_width,
usr_def_inv_col14_align,
usr_def_inv_col15_width,
usr_def_inv_col15_align,
crossed_cheque,
intra_filename,
bshare_pymt,
is_exported,
payee_id,
org_fx_rate,
org_dr_amt,
payee_charge_amt_bce,
status_mismatch,
proc_method,
email_id,
fax_status,
mail_address1,
mail_address2,
mail_address3,
mail_address4,
trans_type,
reg_code,
reg_country,
reg_info1,
reg_info2,
reg_info3,
instr_code1,
instr_code2,
instr_code3,
instr_code4,
instr_info1,
instr_info2,
instr_info3,
instr_info4,
email_status,
cust_inv_details,
adv_status_email,
tt_type,
rcvr_corr_bank_code,
remit_info_code1,
remit_info_code2,
remit_info_code3,
remit_info_code4,
remit_info_det1,
remit_info_det2,
remit_info_det3,
remit_info_det4,
spl_instr_code1,
spl_instr_code2,
spl_instr_code3,
spl_instr_code4,
spl_instr_code5,
spl_instr_code6,
spl_instr_det1,
spl_instr_det2,
spl_instr_det3,
spl_instr_det4,
spl_instr_det5,
spl_instr_det6,
mcp_leg,
mcp_orgstsid,
mcp_orgbref,
mcp_pref,
mcp_ptyp,
mcp_custname,
mcp_custadd1,
mcp_custadd2,
mcp_custadd3,
mcp_custadd4,
mcp_custadd5,
mcp_orgctrycd,
mcp_orgcitycd,
mcp_orgdrac,
mcp_orgdracname,
mcp_orgdracadd1,
mcp_orgdracadd2,
mcp_orgdracadd3,
mcp_dracboname,
mcp_oboacno,
mcp_oboacname,
mcp_oboacadd1,
mcp_oboacadd2,
mcp_oboacadd3,
transaction_id,
receiver_id_type,
receiver_id,
customer_no,
listed_company_code,
mcp_oboacnamell,
mcp_oboacadd1ll,
mcp_oboacadd2ll,
mcp_oboacadd3ll,
ws_retry,
fx_status,
sub_pymt_type,
cnaps_ind,
original_pymt_type,
original_proc_mode,
sub_ac_no,
cr_sbatch_no,
sts_order_id,
fixing_client_id,
itemized_dr,
converted_or_original,
debit_tax_exemption,
obo_type,
obo_party_id,
original_bank_code,
pp_matched,
pp_filename,
overseas_charge_amt,
overseas_charge_amt_bce,
overseas_charge_remit_amt,
xb_pymt_ref,
aoc_ref,
cr_date,
stp_sbatch_no,
stp_enrich_flag,
stp_candidate_after,
stp_candidate_before,
stp_txn_ref_no,
settlement_request,
settlement_method,
original_fx_type,
ctc_flag,
payee_name_bo_ctc,
payee_address1_bo_ctc,
payee_address2_bo_ctc,
payee_address3_bo_ctc,
pymt_details_bo1_ctc,
pymt_details_bo2_ctc,
ctc_api_response_code,
bene_bank_priority,
fm_error_code,
fx_tenor,
fx_roll_ref,
sender_bic,
bo_status_code,
cust_charge_amt,
cust_charge_ccy,
purpose_code_1,
purpose_code_2,
purpose_code_3,
purpose_code_4,
purpose_code_5,
scan_id,
pymt_flow,
imp_ref,
date_priority,
fxdeliverytype,
fxratetype,
debit_bankid,
debit_ac_curr,
qlcustid,
amt_priority,
funding_aval,
destination_country,
destination_city,
funding_country,
funding_city,
returned_amt,
inbound_reg_report_sent,
outbound_reg_report_sent,
original_dest_city,
group_id,
reprocess_type,
thsd_rollup_ref_id,
thsd_subbatch_id,
sellback_aval,
qlgrpid,
funding_ccy,
dr_operational_ac,
cr_operational_ac,
funding_dr_ac_no,
funding_cr_ac_no,
funding_system,
fx_delivery_date,
fx_del_rpt_sent_flag,
updated_tenor,
return_amount,
auto_leg_status,
instr_dr_amt,
adj_err_code,
funding_date,
dr_system,
cr_system,
cr_custid,
funding_custid,
repair_type,
pymt_fully_rejected,
sellback_dr_ac_no,
sellback_payee_ac_no,
orig_payee_ac_no,
orig_payee_amt,
orig_payee_remit_amt,
orig_pymt_amt,
orig_pymt_ccy,
sellback_status,
sellback_dr_amt,
re_effect_orig_ccy,
dr_acc_entity,
payee_acc_entity,
dracct_entity_status,
pymtacct_entity_status,
edmp_partitiondate
from
prd_sri_open.stsprd_qa_tlpymtdetails where edmp_partitiondate = '${edmp_partitiondate}';" > ${rrpextract}/stsprd_qa_tlpymtdetails.${edmp_partitiondate}.dat


hive -e "
set mapred.map.tasks = 20;
set mapred.tasktracker.map.tasks.maximum=4;
set hive.merge.mapfiles=false;
set hive.execution.engine=mr;
set hive.vectorized.execution.enabled = true;
set hive.vectorized.execution.reduce.enabled = true;
set hive.cbo.enable=true;
select
rowid,
s_startdt,
s_starttime,
s_enddt,
s_endtime,
c_journaltime,
c_transactionid,
c_operationtype,
c_userid,
cust_id,
pymt_ref,
country_code,
city_code,
pymt_type,
proc_mode,
status_code,
batch_ref,
sbatch_no,
service_type,
cust_ref,
pymt_date,
proc_date,
dr_ac_country_code,
dr_ac_city_code,
dr_ac_no,
dr_ccy,
dr_amt,
dr_date,
payee_name1,
payee_name2,
payee_address1,
payee_address2,
payee_address3,
payee_address4,
payee_name_bo,
payee_address1_bo,
payee_address2_bo,
payee_address3_bo,
payee_fax_no,
last_modi,
payee_bank_code,
payee_branch_code,
payee_branch_scode,
payee_bank_address1,
payee_bank_address2,
is_in_currency,
payee_ac_no,
pymt_details1,
pymt_details2,
pymt_details_bo1,
pymt_details_bo2,
vat_amt,
wht_print_loc,
wht_form_id,
wht_tax_id,
wht_ref_no,
wht_seq_no,
wht_type1,
wht_desc1,
wht_gross_amt1,
wht_amt1,
wht_type2,
wht_desc2,
wht_gross_amt2,
wht_amt2,
discount_amt,
fx_calc_meth,
fx_type,
fx_contract,
fx_rate,
fx_valid_from,
fx_valid_till,
dealer_name,
inv_format,
pymt_ccy,
remit_ccy,
inv_amt,
pymt_amt,
payee_amt,
payee_lcy_amt,
payee_remit_amt,
payee_charge_status,
payee_charge_amt,
payee_charge_remit_amt,
local_charge_to,
oversea_charge_to,
adv_status,
inter_bank_code,
clr_for_tt,
clr_zone_code,
drawee_bank_code,
dlv_meth,
dlv_to,
payr_ind,
pickup_loc_code,
chq_no,
chq_cleared_date,
boi_filename,
last_modify,
bo_ref,
rejected_reason,
cws_status,
cws_status_date,
mac_key,
dr_amt_bce,
pymt_amt_bce,
payee_amt_bce,
payee_adv_no_of_page,
straight_through,
chq_batch_ref,
stopped_date,
adv_type,
no_of_chq_page,
user_id,
smart_card_sn,
limited_chq,
chq_range_ref,
stopped_manually,
chq_reprint_count,
adv_reprint_count,
exception_closed,
dr_status,
random_no,
nostro_ac_no,
local_payment,
channel_id,
channel_pymt_ref,
pymt_priority,
fisc_status,
fisc_filename,
cbc_payment,
fisc_fee,
service_fee,
usr_def_inv_col1_width,
usr_def_inv_col1_align,
usr_def_inv_col2_width,
usr_def_inv_col2_align,
usr_def_inv_col3_width,
usr_def_inv_col3_align,
usr_def_inv_col4_width,
usr_def_inv_col4_align,
usr_def_inv_col5_width,
usr_def_inv_col5_align,
usr_def_inv_col6_width,
usr_def_inv_col6_align,
usr_def_inv_col7_width,
usr_def_inv_col7_align,
usr_def_inv_col8_width,
usr_def_inv_col8_align,
usr_def_inv_col9_width,
usr_def_inv_col9_align,
usr_def_inv_col10_width,
usr_def_inv_col10_align,
usr_def_inv_col11_width,
usr_def_inv_col11_align,
usr_def_inv_col12_width,
usr_def_inv_col12_align,
usr_def_inv_col13_width,
usr_def_inv_col13_align,
usr_def_inv_col14_width,
usr_def_inv_col14_align,
usr_def_inv_col15_width,
usr_def_inv_col15_align,
crossed_cheque,
intra_filename,
bshare_pymt,
is_exported,
payee_id,
org_fx_rate,
org_dr_amt,
payee_charge_amt_bce,
status_mismatch,
proc_method,
email_id,
fax_status,
mail_address1,
mail_address2,
mail_address3,
mail_address4,
trans_type,
reg_code,
reg_country,
reg_info1,
reg_info2,
reg_info3,
instr_code1,
instr_code2,
instr_code3,
instr_code4,
instr_info1,
instr_info2,
instr_info3,
instr_info4,
email_status,
cust_inv_details,
adv_status_email,
tt_type,
rcvr_corr_bank_code,
remit_info_code1,
remit_info_code2,
remit_info_code3,
remit_info_code4,
remit_info_det1,
remit_info_det2,
remit_info_det3,
remit_info_det4,
spl_instr_code1,
spl_instr_code2,
spl_instr_code3,
spl_instr_code4,
spl_instr_code5,
spl_instr_code6,
spl_instr_det1,
spl_instr_det2,
spl_instr_det3,
spl_instr_det4,
spl_instr_det5,
spl_instr_det6,
mcp_leg,
mcp_orgstsid,
mcp_orgbref,
mcp_pref,
mcp_ptyp,
mcp_custname,
mcp_custadd1,
mcp_custadd2,
mcp_custadd3,
mcp_custadd4,
mcp_custadd5,
mcp_orgctrycd,
mcp_orgcitycd,
mcp_orgdrac,
mcp_orgdracname,
mcp_orgdracadd1,
mcp_orgdracadd2,
mcp_orgdracadd3,
mcp_dracboname,
mcp_oboacno,
mcp_oboacname,
mcp_oboacadd1,
mcp_oboacadd2,
mcp_oboacadd3,
transaction_id,
receiver_id_type,
receiver_id,
customer_no,
listed_company_code,
mcp_oboacnamell,
mcp_oboacadd1ll,
mcp_oboacadd2ll,
mcp_oboacadd3ll,
ws_retry,
fx_status,
sub_pymt_type,
cnaps_ind,
original_pymt_type,
original_proc_mode,
sub_ac_no,
cr_sbatch_no,
sts_order_id,
fixing_client_id,
itemized_dr,
converted_or_original,
debit_tax_exemption,
obo_type,
obo_party_id,
original_bank_code,
pp_matched,
pp_filename,
overseas_charge_amt,
overseas_charge_amt_bce,
overseas_charge_remit_amt,
xb_pymt_ref,
aoc_ref,
cr_date,
stp_sbatch_no,
stp_enrich_flag,
stp_candidate_after,
stp_candidate_before,
stp_txn_ref_no,
settlement_request,
settlement_method,
original_fx_type,
ctc_flag,
payee_name_bo_ctc,
payee_address1_bo_ctc,
payee_address2_bo_ctc,
payee_address3_bo_ctc,
pymt_details_bo1_ctc,
pymt_details_bo2_ctc,
ctc_api_response_code,
bene_bank_priority,
fm_error_code,
fx_tenor,
fx_roll_ref,
sender_bic,
bo_status_code,
cust_charge_amt,
cust_charge_ccy,
purpose_code_1,
purpose_code_2,
purpose_code_3,
purpose_code_4,
purpose_code_5,
scan_id,
pymt_flow,
imp_ref,
date_priority,
fxdeliverytype,
fxratetype,
debit_bankid,
debit_ac_curr,
qlcustid,
amt_priority,
funding_aval,
destination_country,
destination_city,
funding_country,
funding_city,
returned_amt,
inbound_reg_report_sent,
outbound_reg_report_sent,
original_dest_city,
group_id,
reprocess_type,
thsd_rollup_ref_id,
thsd_subbatch_id,
sellback_aval,
qlgrpid,
funding_ccy,
dr_operational_ac,
cr_operational_ac,
funding_dr_ac_no,
funding_cr_ac_no,
funding_system,
fx_delivery_date,
fx_del_rpt_sent_flag,
updated_tenor,
return_amount,
auto_leg_status,
instr_dr_amt,
adj_err_code,
funding_date,
dr_system,
cr_system,
cr_custid,
funding_custid,
repair_type,
pymt_fully_rejected,
sellback_dr_ac_no,
sellback_payee_ac_no,
orig_payee_ac_no,
orig_payee_amt,
orig_payee_remit_amt,
orig_pymt_amt,
orig_pymt_ccy,
sellback_status,
sellback_dr_amt,
re_effect_orig_ccy,
dr_acc_entity,
payee_acc_entity,
dracct_entity_status,
pymtacct_entity_status,
edmp_partitiondate
from
prd_sri_open.stsprd_my_tlpymtdetails where edmp_partitiondate = '${edmp_partitiondate}';" > ${rrpextract}/stsprd_my_tlpymtdetails.${edmp_partitiondate}.dat


hive -e "
set mapred.map.tasks = 20;
set mapred.tasktracker.map.tasks.maximum=4;
set hive.merge.mapfiles=false;
set hive.execution.engine=mr;
set hive.vectorized.execution.enabled = true;
set hive.vectorized.execution.reduce.enabled = true;
set hive.cbo.enable=true;
select
rowid,
s_startdt,
s_starttime,
s_enddt,
s_endtime,
c_journaltime,
c_transactionid,
c_operationtype,
c_userid,
cust_id,
pymt_ref,
country_code,
city_code,
pymt_type,
proc_mode,
status_code,
batch_ref,
sbatch_no,
service_type,
cust_ref,
pymt_date,
proc_date,
dr_ac_country_code,
dr_ac_city_code,
dr_ac_no,
dr_ccy,
dr_amt,
dr_date,
payee_name1,
payee_name2,
payee_address1,
payee_address2,
payee_address3,
payee_address4,
payee_name_bo,
payee_address1_bo,
payee_address2_bo,
payee_address3_bo,
payee_fax_no,
last_modi,
payee_bank_code,
payee_branch_code,
payee_branch_scode,
payee_bank_address1,
payee_bank_address2,
is_in_currency,
payee_ac_no,
pymt_details1,
pymt_details2,
pymt_details_bo1,
pymt_details_bo2,
vat_amt,
wht_print_loc,
wht_form_id,
wht_tax_id,
wht_ref_no,
wht_seq_no,
wht_type1,
wht_desc1,
wht_gross_amt1,
wht_amt1,
wht_type2,
wht_desc2,
wht_gross_amt2,
wht_amt2,
discount_amt,
fx_calc_meth,
fx_type,
fx_contract,
fx_rate,
fx_valid_from,
fx_valid_till,
dealer_name,
inv_format,
pymt_ccy,
remit_ccy,
inv_amt,
pymt_amt,
payee_amt,
payee_lcy_amt,
payee_remit_amt,
payee_charge_status,
payee_charge_amt,
payee_charge_remit_amt,
local_charge_to,
oversea_charge_to,
adv_status,
inter_bank_code,
clr_for_tt,
clr_zone_code,
drawee_bank_code,
dlv_meth,
dlv_to,
payr_ind,
pickup_loc_code,
chq_no,
chq_cleared_date,
boi_filename,
last_modify,
bo_ref,
rejected_reason,
cws_status,
cws_status_date,
mac_key,
dr_amt_bce,
pymt_amt_bce,
payee_amt_bce,
payee_adv_no_of_page,
straight_through,
chq_batch_ref,
stopped_date,
adv_type,
no_of_chq_page,
user_id,
smart_card_sn,
limited_chq,
chq_range_ref,
stopped_manually,
chq_reprint_count,
adv_reprint_count,
exception_closed,
dr_status,
random_no,
nostro_ac_no,
local_payment,
channel_id,
channel_pymt_ref,
pymt_priority,
fisc_status,
fisc_filename,
cbc_payment,
fisc_fee,
service_fee,
usr_def_inv_col1_width,
usr_def_inv_col1_align,
usr_def_inv_col2_width,
usr_def_inv_col2_align,
usr_def_inv_col3_width,
usr_def_inv_col3_align,
usr_def_inv_col4_width,
usr_def_inv_col4_align,
usr_def_inv_col5_width,
usr_def_inv_col5_align,
usr_def_inv_col6_width,
usr_def_inv_col6_align,
usr_def_inv_col7_width,
usr_def_inv_col7_align,
usr_def_inv_col8_width,
usr_def_inv_col8_align,
usr_def_inv_col9_width,
usr_def_inv_col9_align,
usr_def_inv_col10_width,
usr_def_inv_col10_align,
usr_def_inv_col11_width,
usr_def_inv_col11_align,
usr_def_inv_col12_width,
usr_def_inv_col12_align,
usr_def_inv_col13_width,
usr_def_inv_col13_align,
usr_def_inv_col14_width,
usr_def_inv_col14_align,
usr_def_inv_col15_width,
usr_def_inv_col15_align,
crossed_cheque,
intra_filename,
bshare_pymt,
is_exported,
payee_id,
org_fx_rate,
org_dr_amt,
payee_charge_amt_bce,
status_mismatch,
proc_method,
email_id,
fax_status,
mail_address1,
mail_address2,
mail_address3,
mail_address4,
trans_type,
reg_code,
reg_country,
reg_info1,
reg_info2,
reg_info3,
instr_code1,
instr_code2,
instr_code3,
instr_code4,
instr_info1,
instr_info2,
instr_info3,
instr_info4,
email_status,
cust_inv_details,
adv_status_email,
tt_type,
rcvr_corr_bank_code,
remit_info_code1,
remit_info_code2,
remit_info_code3,
remit_info_code4,
remit_info_det1,
remit_info_det2,
remit_info_det3,
remit_info_det4,
spl_instr_code1,
spl_instr_code2,
spl_instr_code3,
spl_instr_code4,
spl_instr_code5,
spl_instr_code6,
spl_instr_det1,
spl_instr_det2,
spl_instr_det3,
spl_instr_det4,
spl_instr_det5,
spl_instr_det6,
mcp_leg,
mcp_orgstsid,
mcp_orgbref,
mcp_pref,
mcp_ptyp,
mcp_custname,
mcp_custadd1,
mcp_custadd2,
mcp_custadd3,
mcp_custadd4,
mcp_custadd5,
mcp_orgctrycd,
mcp_orgcitycd,
mcp_orgdrac,
mcp_orgdracname,
mcp_orgdracadd1,
mcp_orgdracadd2,
mcp_orgdracadd3,
mcp_dracboname,
mcp_oboacno,
mcp_oboacname,
mcp_oboacadd1,
mcp_oboacadd2,
mcp_oboacadd3,
transaction_id,
receiver_id_type,
receiver_id,
customer_no,
listed_company_code,
mcp_oboacnamell,
mcp_oboacadd1ll,
mcp_oboacadd2ll,
mcp_oboacadd3ll,
ws_retry,
fx_status,
sub_pymt_type,
cnaps_ind,
original_pymt_type,
original_proc_mode,
sub_ac_no,
cr_sbatch_no,
sts_order_id,
fixing_client_id,
itemized_dr,
converted_or_original,
debit_tax_exemption,
obo_type,
obo_party_id,
original_bank_code,
pp_matched,
pp_filename,
overseas_charge_amt,
overseas_charge_amt_bce,
overseas_charge_remit_amt,
xb_pymt_ref,
aoc_ref,
cr_date,
stp_sbatch_no,
stp_enrich_flag,
stp_candidate_after,
stp_candidate_before,
stp_txn_ref_no,
settlement_request,
settlement_method,
original_fx_type,
ctc_flag,
payee_name_bo_ctc,
payee_address1_bo_ctc,
payee_address2_bo_ctc,
payee_address3_bo_ctc,
pymt_details_bo1_ctc,
pymt_details_bo2_ctc,
ctc_api_response_code,
bene_bank_priority,
fm_error_code,
fx_tenor,
fx_roll_ref,
sender_bic,
bo_status_code,
cust_charge_amt,
cust_charge_ccy,
purpose_code_1,
purpose_code_2,
purpose_code_3,
purpose_code_4,
purpose_code_5,
scan_id,
pymt_flow,
imp_ref,
date_priority,
fxdeliverytype,
fxratetype,
debit_bankid,
debit_ac_curr,
qlcustid,
amt_priority,
funding_aval,
destination_country,
destination_city,
funding_country,
funding_city,
returned_amt,
inbound_reg_report_sent,
outbound_reg_report_sent,
original_dest_city,
group_id,
reprocess_type,
thsd_rollup_ref_id,
thsd_subbatch_id,
sellback_aval,
qlgrpid,
funding_ccy,
dr_operational_ac,
cr_operational_ac,
funding_dr_ac_no,
funding_cr_ac_no,
funding_system,
fx_delivery_date,
fx_del_rpt_sent_flag,
updated_tenor,
return_amount,
auto_leg_status,
instr_dr_amt,
adj_err_code,
funding_date,
dr_system,
cr_system,
cr_custid,
funding_custid,
repair_type,
pymt_fully_rejected,
sellback_dr_ac_no,
sellback_payee_ac_no,
orig_payee_ac_no,
orig_payee_amt,
orig_payee_remit_amt,
orig_pymt_amt,
orig_pymt_ccy,
sellback_status,
sellback_dr_amt,
re_effect_orig_ccy,
dr_acc_entity,
payee_acc_entity,
dracct_entity_status,
pymtacct_entity_status,
edmp_partitiondate
from
prd_sri_open.stsprd_ke_tlpymtdetails where edmp_partitiondate = '${edmp_partitiondate}';" > ${rrpextract}/stsprd_ke_tlpymtdetails.${edmp_partitiondate}.dat


