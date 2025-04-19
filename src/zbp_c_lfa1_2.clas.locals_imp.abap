CLASS lhc_ZC_lfa1_2 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS augment_create FOR MODIFY
      IMPORTING entities FOR CREATE ZC_lfa1_2.
    METHODS augment_update FOR MODIFY
      IMPORTING entities FOR UPDATE ZC_lfa1_2.

ENDCLASS.

CLASS lhc_ZC_lfa1_2 IMPLEMENTATION.

  METHOD augment_create.
  ENDMETHOD.

  METHOD augment_update.

*  data: relates_update  TYPE abp_behv_relating_tab,
*        variable_update TYPE TABLE FOR UPDATE ZI_lfa1_2.
*
*  loop at entities into data(wa_entities).
*  APPEND value #( %key = CORRESPONDING #( wa_entities-%key )
*                                         Name1 = 'Test'
*                                         %control = value #( Name1 = if_abap_behv=>mk-on ) )
*                                         TO variable_update.
*  ENDLOOP.
*
*  MODIFY augmenting ENTITIES OF ZI_lfa1_2
*  ENTITY ZI_lfa1_2
*  UPDATE FROM variable_update
*  RELATING TO entities by relates_update.

  ENDMETHOD.

ENDCLASS.
