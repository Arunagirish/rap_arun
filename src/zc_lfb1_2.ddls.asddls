@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'c view for lfb1'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_LFB1_2 as projection on ZI_lfb1_2
{
    key Lifnr,
    key Bukrs,
    /* Associations */
    _lfa1 : redirected to parent ZC_lfa1_2
}
