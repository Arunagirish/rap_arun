@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumptional view for lfa1'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@VDM.viewType: #CONSUMPTION
@AbapCatalog.extensibility.allowNewCompositions: true
define root view entity ZC_lfa1_2
  provider contract transactional_query as projection on ZI_lfa1_2
{
    key Lifnr,
    Land1,
    Name1,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    Changed_on,
    /* Associations */
      _lfb1 :redirected to composition child ZC_LFB1_2
}
