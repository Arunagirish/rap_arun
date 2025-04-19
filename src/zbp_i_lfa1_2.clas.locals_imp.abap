CLASS lsc_zi_lfa1_2 DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.


ENDCLASS.

CLASS lsc_zi_lfa1_2 IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_ZI_lfa1_2 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_lfa1_2 RESULT result.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_lfa1_2 RESULT result.

    METHODS date FOR VALIDATE ON SAVE
      IMPORTING keys FOR zi_lfa1_2~date.
    METHODS ins_non_factory FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~ins_non_factory RESULT result.
    METHODS precheck_update FOR PRECHECK
      IMPORTING entities FOR UPDATE zi_lfa1_2.
    METHODS static_non_factory FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~static_non_factory.
    METHODS ins_factory FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~ins_factory.

    METHODS static_factory FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~static_factory.
    METHODS save_action FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~save_action.
    METHODS ins_function FOR READ
      IMPORTING keys FOR FUNCTION zi_lfa1_2~ins_function RESULT result.

    METHODS static_function FOR READ
      IMPORTING keys FOR FUNCTION zi_lfa1_2~static_function RESULT result.
    METHODS precheck_ins_non_factory FOR PRECHECK
      IMPORTING keys FOR ACTION zi_lfa1_2~ins_non_factory.
    METHODS getdefaultsforcreate FOR READ
      IMPORTING keys FOR FUNCTION zi_lfa1_2~getdefaultsforcreate RESULT result.
    METHODS modify_determination FOR DETERMINE ON MODIFY
      IMPORTING keys FOR zi_lfa1_2~modify_determination.
    METHODS save_determination FOR DETERMINE ON SAVE
      IMPORTING keys FOR zi_lfa1_2~save_determination.
    METHODS edit FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~edit.



ENDCLASS.

CLASS lhc_ZI_lfa1_2 IMPLEMENTATION.

  METHOD get_instance_authorizations.

*    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
*    ENTITY ZI_lfa1_2
*    FIELDS ( Lifnr Land1 )
*    WITH CORRESPONDING #( keys )
*    RESULT DATA(ls_lfa1)
*    FAILED failed.
*
*    IF requested_authorizations-%update EQ '01'.
*      AUTHORITY-CHECK OBJECT 'ZAUTH_ARUN' ID 'Land1' FIELD 'IN' ID 'ACTVT' FIELD '02'.
*
*      IF sy-subrc EQ 0.
*        APPEND INITIAL LINE TO result.
*        result[ 1 ]-%update = if_abap_behv=>auth-allowed.
*      ELSE.
*        APPEND INITIAL LINE TO result.
**        result[ 1 ]-%update = if_abap_behv=>auth-unauthorized.
*        result[ 1 ]-%key-Lifnr = ls_lfa1[ 1 ]-Lifnr.
*      ENDIF.
*    ENDIF.

  ENDMETHOD.


  METHOD get_global_authorizations.

*    IF requested_authorizations-%update EQ '01'.
*      AUTHORITY-CHECK OBJECT '/DMO/TRVL' ID 'ACTVT' FIELD '02'.
*
*      IF sy-subrc EQ 0.
*        result-%update = if_abap_behv=>auth-allowed.
*      ELSE.
*        result-%update = if_abap_behv=>auth-unauthorized.
*        result-%action-approve = if_abap_behv=>auth-unauthorized.
*      ENDIF.
*    ENDIF.

  ENDMETHOD.

  METHOD date.
  ENDMETHOD.

  METHOD precheck_update.

  loop at entities into data(wa_entities).

  if wa_entities-Land1 cs 'US'.
  APPEND value #( lifnr = entities[ 1 ]-Lifnr
*                  %tky = VALUE #( %is_draft = if_abap_behv=>mk-on
*                      %key-Lifnr = entities[ 1 ]-%tky-%key-Lifnr )
                  %msg = new_message_with_text(
                  severity = if_abap_behv_message=>severity-warning
                  text = 'Us country code is not allowed'
                  ) ) to reported-zi_lfa1_2.
  ENDIF.

  ENDLOOP.


  ENDMETHOD.

  METHOD ins_non_factory.

    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
  ENTITY ZI_lfa1_2 UPDATE FROM VALUE #( FOR key IN keys ( Lifnr = key-Lifnr
                                                                Land1 = key-%param-user_param
                                                                %control-Lifnr = if_abap_behv=>mk-on
                                                                %control-Land1 = if_abap_behv=>mk-on ) )
                                                                MAPPED mapped
                                                                FAILED failed
                                                                REPORTED reported.
    APPEND VALUE #( lifnr = keys[ 1 ]-Lifnr
                    %param-lifnr = keys[ 1 ]-Lifnr
                    %param-land1 = keys[ 1 ]-%param-user_param   ) TO result.


  ENDMETHOD.


  METHOD static_non_factory.


    SELECT lifnr,land1 FROM zlfa1 WHERE land1 = 'IN' INTO TABLE @DATA(lt_lfa1).
    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
    ENTITY ZI_lfa1_2 UPDATE FROM VALUE #( FOR wa_lfa1 IN lt_lfa1 (
                                                                  Lifnr = wa_lfa1-lifnr
                                                                  Land1 = 'GE'
                                                                  %control-Lifnr = if_abap_behv=>mk-on
                                                                  %control-Land1 = if_abap_behv=>mk-on ) )
                                                                  MAPPED mapped
                                                                  FAILED failed
                                                                  REPORTED reported.

  ENDMETHOD.

  METHOD ins_factory.

    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
  ENTITY ZI_lfa1_2 FIELDS ( lifnr Land1 Name1 ) WITH CORRESPONDING #( keys )
  RESULT DATA(lt_lfa1).

    DATA(lv_lifnr) = cl_uuid_factory=>create_system_uuid(  )->create_uuid_x16(  ).

    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
  ENTITY ZI_lfa1_2 CREATE SET FIELDS WITH VALUE #( (
  %cid = keys[ 1 ]-%cid
  Lifnr = lv_lifnr
  Land1 = lt_lfa1[ 1 ]-Land1
  Name1 = lt_lfa1[ 1 ]-Name1
  ) )
                   MAPPED mapped
                   FAILED failed
                   REPORTED reported.

  ENDMETHOD.

  METHOD static_factory.

    DATA(lv_lifnr) = cl_uuid_factory=>create_system_uuid(  )->create_uuid_x16(  ).

    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
  ENTITY ZI_lfa1_2 CREATE SET FIELDS WITH VALUE #( (
  %cid = keys[ 1 ]-%cid
  Lifnr = lv_lifnr
  Land1 = 'IN'
  Name1 = 'Arunagirish'
  ) )
                   MAPPED mapped
                   FAILED failed
                   REPORTED reported.

  ENDMETHOD.

  METHOD save_action.
  ENDMETHOD.

  METHOD ins_function.

    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
    ENTITY ZI_lfa1_2 FIELDS ( Lifnr Land1 Name1 ) WITH CORRESPONDING #( keys )
    RESULT DATA(result1)
    REPORTED reported
    FAILED failed.

    APPEND VALUE #( lifnr = keys[ 1 ]-Lifnr
                    %param-lifnr = keys[ 1 ]-Lifnr
                    %param-land1 = 'GE'  ) TO result.


  ENDMETHOD.

  METHOD static_function.
  ENDMETHOD.

  METHOD precheck_ins_non_factory.


  ENDMETHOD.

  METHOD GetDefaultsForCreate.

*  append VALUE #( %cid = keys[ 1 ]-%cid  %param-land1 = 'DE' %param-name1 = 'default') to result.
  ENDMETHOD.

  METHOD modify_determination.

    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
        ENTITY ZI_lfa1_2 FIELDS ( Lifnr Land1 Name1 ) WITH CORRESPONDING #( keys )
        RESULT DATA(result1).

    IF result1[ 1 ]-Name1 = 'Test1'.
      MODIFY  ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
      ENTITY ZI_lfa1_2 UPDATE SET FIELDS WITH VALUE #(
      ( %key = keys[ 1 ]-%key Land1 = 'IN' %control-Land1 = if_abap_behv=>mk-on ) )
      REPORTED DATA(reported1).

      APPEND VALUE #(
                    %msg = new_message_with_text(
                    severity = if_abap_behv_message=>severity-success
                    text = 'land is updated'
                    ) ) TO reported-zi_lfa1_2.
    ENDIF.
  ENDMETHOD.



  METHOD save_determination.
  ENDMETHOD.

  METHOD edit.
  ENDMETHOD.

ENDCLASS.
