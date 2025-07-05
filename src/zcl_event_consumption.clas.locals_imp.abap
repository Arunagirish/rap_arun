CLASS lhe_zi_lfa1_2 DEFINITION INHERITING FROM cl_abap_behavior_event_handler.
  PRIVATE SECTION.
    METHODS bpCreate FOR ENTITY EVENT zi_d_abstract FOR zi_lfa1_2~CreateBP.
ENDCLASS.


CLASS lhe_zi_lfa1_2 IMPLEMENTATION.

  METHOD bpCreate.

    MODIFY ENTITY ZI_lfa1_2
    CREATE FROM VALUE #( (  %cid = 'i001' %key-lifnr = zi_d_abstract[ 1 ]-Lifnr
    Land1 = zi_d_abstract[ 1 ]-user_param ) ).

  ENDMETHOD.

ENDCLASS.
