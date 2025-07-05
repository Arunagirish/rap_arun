@EndUserText.label: '.'
@VDM.viewType: #BASIC
define table function ztf
returns {
key client:mandt;
key lifnr:lifnr;
  
}
implemented by method ZCLS12345=>add;