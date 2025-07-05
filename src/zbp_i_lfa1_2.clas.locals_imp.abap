CLASS lsc_zi_lfa1_2 DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.
*METHODS adjust_numbers REDEFINITION.
*
ENDCLASS.

CLASS lsc_zi_lfa1_2 IMPLEMENTATION.

  METHOD save_modified.
    DATA lo_operation TYPE REF TO if_bgmc_op_single.
    DATA: lt_changed_on   TYPE TABLE OF zi_lfa1_2.
    DATA:lo_process TYPE REF TO if_bgmc_process_single_op.
    LOOP AT create-zi_lfa1_2 INTO DATA(wa_lfa1).
      lt_changed_on = VALUE #( FOR ls_changed_on IN create-zi_lfa1_2
      ( lifnr = ls_changed_on-Lifnr changed_on = ls_changed_on-changed_on ) ).
      lo_operation = NEW zbgpf_class( lt_changed_on[ 1 ] ).

      TRY.
          lo_process = cl_bgmc_process_factory=>get_default(
                                                  )->create( ).
          lo_process->set_name( 'My process'
              )->set_operation( lo_operation ).
          lo_process->save_for_execution( ).
        CATCH cx_bgmc INTO DATA(lx_bgmc).
      ENDTRY.
    ENDLOOP.

    IF update-zi_lfa1_2 IS NOT INITIAL.
      RAISE ENTITY EVENT ZI_lfa1_2~CreateBP
      FROM VALUE #( ( %key = update-zi_lfa1_2[ 1 ]-%key user_param = 'In') ).
    ENDIF.
  ENDMETHOD.

*  METHOD adjust_numbers.
*
*  ENDMETHOD.

ENDCLASS.
class ltc_lfa1_validation DEFINITION DEFERRED for testing.
CLASS lhc_ZI_lfa1_2 DEFINITION INHERITING FROM cl_abap_behavior_handler FRIENDS ltc_lfa1_validation.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_lfa1_2 RESULT result.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_lfa1_2 RESULT result.

    METHODS check_country FOR VALIDATE ON SAVE
      IMPORTING keys FOR zi_lfa1_2~check_country.
*    METHODS ins_non_factory FOR MODIFY
*      IMPORTING keys FOR ACTION zi_lfa1_2~ins_non_factory RESULT result.
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
*    METHODS precheck_ins_non_factory FOR PRECHECK
*      IMPORTING keys FOR ACTION zi_lfa1_2~ins_non_factory.
    METHODS getdefaultsforcreate FOR READ
      IMPORTING keys FOR FUNCTION zi_lfa1_2~getdefaultsforcreate RESULT result.

    METHODS modify_determination FOR DETERMINE ON MODIFY
      IMPORTING keys FOR zi_lfa1_2~modify_determination.
    METHODS save_determination FOR DETERMINE ON SAVE
      IMPORTING keys FOR zi_lfa1_2~save_determination.
    METHODS edit FOR MODIFY
      IMPORTING keys FOR ACTION zi_lfa1_2~edit.
*    METHODS earlynumbering_create FOR NUMBERING
*      IMPORTING entities FOR CREATE zi_lfa1_2.



ENDCLASS.

CLASS lhc_ZI_lfa1_2 IMPLEMENTATION.

  METHOD get_instance_authorizations.

    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
    ENTITY ZI_lfa1_2
    FIELDS ( Lifnr Land1 )
    WITH CORRESPONDING #( keys )
    RESULT DATA(ls_lfa1)
    FAILED failed.

    IF requested_authorizations-%update EQ '01'.
      LOOP AT ls_lfa1 INTO DATA(wa_auth).
*      AUTHORITY-CHECK OBJECT 'ZAUTH_ARUN' ID 'Land1' FIELD 'IN' ID 'ACTVT' FIELD '02'.
        IF wa_auth-Land1 = 'IN'.
*      IF sy-subrc EQ 0.
          APPEND INITIAL LINE TO result.
          result[ 1 ]-%update = if_abap_behv=>auth-allowed.
        ELSE.
          APPEND INITIAL LINE TO result.
          result[ 1 ]-%update = '01'.
          result[ 1 ]-%key-Lifnr = ls_lfa1[ 1 ]-Lifnr.
        ENDIF.
*      ENDIF.
      ENDLOOP.
    ENDIF.

  ENDMETHOD.


  METHOD get_global_authorizations.

*    IF requested_authorizations-%update EQ '01'.
*      AUTHORITY-CHECK OBJECT '/DMO/TRVL' ID 'ACTVT' FIELD '02'.
*
*      IF sy-subrc EQ 0.
*        result-%update = if_abap_behv=>auth-allowed.
*      ELSE.
*        result-%update = if_abap_behv=>auth-unauthorized.
**        result-%action-approve = if_abap_behv=>auth-unauthorized.
*      ENDIF.
*    ENDIF.

  ENDMETHOD.

  METHOD check_country.

    READ ENTITY ZI_lfa1_2 FIELDS ( Lifnr Land1 )
    WITH CORRESPONDING #( keys )
    RESULT DATA(lt_country_code).

    LOOP AT lt_country_code INTO DATA(wa_country_code).

      IF strlen( wa_country_code-Land1 ) GE 3.
        APPEND VALUE #( lifnr = wa_country_code-Lifnr
                            %msg = new_message_with_text(
                            severity = if_abap_behv_message=>severity-warning
                            text = 'country code cannot be of more than 2 length'
                            ) ) TO reported-zi_lfa1_2.
      ENDIF.
    ENDLOOP.

  ENDMETHOD.

  METHOD precheck_update.

    LOOP AT entities INTO DATA(wa_entities).

      IF wa_entities-Land1 CS 'US'.
        APPEND VALUE #( lifnr = entities[ 1 ]-Lifnr
*                  %tky = VALUE #( %is_draft = if_abap_behv=>mk-on
*                      %key-Lifnr = entities[ 1 ]-%tky-%key-Lifnr )
                        %msg = new_message_with_text(
                        severity = if_abap_behv_message=>severity-warning
                        text = 'Us country code is not allowed'
                        ) ) TO reported-zi_lfa1_2.
      ENDIF.

    ENDLOOP.


  ENDMETHOD.

*  METHOD ins_non_factory.
*
*    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
*  ENTITY ZI_lfa1_2 UPDATE FROM VALUE #( FOR key IN keys ( Lifnr = key-Lifnr
*                                                                Land1 = key-%param-user_param
*                                                                %control-Lifnr = if_abap_behv=>mk-on
*                                                                %control-Land1 = if_abap_behv=>mk-on ) )
*                                                                MAPPED mapped
*                                                                FAILED failed
*                                                                REPORTED reported.
*    APPEND VALUE #( lifnr = keys[ 1 ]-Lifnr
*                    %param-lifnr = keys[ 1 ]-Lifnr
*                    %param-land1 = keys[ 1 ]-%param-user_param   ) TO result.
*
*    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
* ENTITY ZI_lfa1_2
* CREATE FIELDS ( Lifnr Land1 )
*     WITH VALUE #( ( %cid = 'cid1' Lifnr = keys[ 1 ]-Lifnr Land1 = 'IN' ) )
* EXECUTE ins_non_factory FROM VALUE #( (  %cid_ref = 'cid1'  ) )
*                                                               MAPPED mapped
*                                                               FAILED failed
*                                                               REPORTED reported.
*
*
*  ENDMETHOD.


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
*
*****************************************************************************************************
*
**read entities
*    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
*  ENTITY ZI_lfa1_2 FIELDS ( lifnr Land1 Name1 ) WITH CORRESPONDING #( keys )
*  RESULT DATA(lt_lfa1)
*  ENTITY ZI_lfb1_2 FIELDS ( Bukrs ) WITH CORRESPONDING #( keys )
*  RESULT DATA(lt_lfb1) .
*
**read entity
*    READ ENTITY ZI_lfa1_2 FIELDS ( lifnr Land1 Name1 ) WITH CORRESPONDING #( keys )
*    RESULT DATA(lt_lfa2).
*
**dynamic read
*    DATA: op_tab          TYPE abp_behv_retrievals_tab,
*          read_dyn        TYPE TABLE FOR READ IMPORT zi_lfa1_2,
*          read_dyn_result TYPE TABLE FOR READ RESULT zi_lfa1_2.
*    op_tab = VALUE #(
*           ( op = if_abap_behv=>op-r-read
*             entity_name = 'ZI_LFA1_2'
*             instances   = REF #( read_dyn )
*             results     = REF #( read_dyn_result ) ) ).
*    read_dyn = VALUE #(
* ( %key-Lifnr = keys[ 1 ]-%key-Lifnr
*   %control = VALUE #(
*      Land1  = if_abap_behv=>mk-on
*      Name1    = if_abap_behv=>mk-on
*                     )
*                     ) ).
*    READ ENTITIES OPERATIONS op_tab FAILED FINAL(failed_dyn) .
*
**to read based on a table
*    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
* ENTITY ZI_lfa1_2 ALL FIELDS WITH CORRESPONDING #( keys )
* RESULT DATA(lt_lfa1_3).
*
** hard coding the bo to be read
*    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
*    ENTITY ZI_lfa1_2 FIELDS ( lifnr Land1 Name1 ) WITH VALUE #( ( Lifnr = keys[ 1 ]-Lifnr ) )
*    RESULT DATA(lt_lfa1_final).
*
************************************************************************************************************
*
*    DATA(lv_lifnr) = cl_uuid_factory=>create_system_uuid(  )->create_uuid_x16(  ).
*
*    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
*  ENTITY ZI_lfa1_2 CREATE SET FIELDS WITH VALUE #( (
*  %cid = keys[ 1 ]-%cid
*  Lifnr = lv_lifnr
*  Land1 = lt_lfa1[ 1 ]-Land1
*  Name1 = lt_lfa1[ 1 ]-Name1
*  ) )
*                   MAPPED mapped
*                   FAILED failed
*                   REPORTED reported.
*
  ENDMETHOD.

  METHOD static_factory.

    DATA: request TYPE STRUCTURE FOR
          PERMISSIONS REQUEST ZI_lfa1_2.
    request-%field-Land1 = if_abap_behv=>mk-on.
    request-%field-Name1 = if_abap_behv=>mk-on.
    request-%create = if_abap_behv=>mk-on.
    GET PERMISSIONS ONLY GLOBAL AUTHORIZATION ENTITY ZI_lfa1_2
    REQUEST request RESULT FINAL(result1).

    DATA(lv_lifnr) = cl_uuid_factory=>create_system_uuid(  )->create_uuid_x16(  ).

*to hard code the values
    MODIFY ENTITIES OF ZI_lfa1_2
    ENTITY ZI_lfa1_2  CREATE AUTO FILL CID WITH VALUE #( (
    Lifnr = lv_lifnr
    Land1 = 'IN'
    Name1 = 'Arunagirish'
      ) )
    MAPPED mapped
    FAILED failed
    REPORTED reported.

*modify records based on table
    DATA: lt_lfa1_head TYPE TABLE FOR CREATE ZI_lfa1_2.

    APPEND VALUE #(  %cid = keys[ 1 ]-%cid
    Lifnr = lv_lifnr
    Land1 = 'IN'
    Name1 = 'Arunagirish'
    %control = VALUE #( lifnr = if_abap_behv=>mk-on
    land1 = if_abap_behv=>mk-on
    Name1 = if_abap_behv=>mk-on
    ) ) TO lt_lfa1_head.

    MODIFY ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
    ENTITY ZI_lfa1_2 CREATE FROM lt_lfa1_head
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

*  METHOD precheck_ins_non_factory.
*
*
*  ENDMETHOD.

  METHOD GetDefaultsForCreate.

*  append VALUE #( %cid = keys[ 1 ]-%cid  %param-land1 = 'DE' %param-name1 = 'default') to result.
  ENDMETHOD.

  METHOD modify_determination.

    READ ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
        ENTITY ZI_lfa1_2 FIELDS ( Lifnr Land1 Name1 ) WITH CORRESPONDING #( keys )
        RESULT DATA(result1).

    IF result1[ 1 ]-Name1 = 'Test_in'.
      MODIFY  ENTITIES OF ZI_lfa1_2 IN LOCAL MODE
      ENTITY ZI_lfa1_2 UPDATE SET FIELDS WITH VALUE #(
      ( %tky = result1[ 1 ]-%tky Land1 = 'IN' %control-Land1 = if_abap_behv=>mk-on ) )
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

*  METHOD earlynumbering_create.
*  ENDMETHOD.

ENDCLASS.
