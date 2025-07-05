CLASS ltc_lfa1_action DEFINITION
FOR TESTING
DURATION SHORT
RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    CLASS-DATA: environmnet TYPE REF TO if_botd_mockemlapi_bo_test_env.
    CLASS-METHODS: class_setup,class_teardown.
    METHODS: setup,teardown.
*    METHODS: validate_check_country FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS ltc_lfa1_action IMPLEMENTATION.

  METHOD class_setup.
    DATA(env_config) = cl_botd_mockemlapi_bo_test_env=>prepare_environment_config(  )->set_bdef_dependencies( bdef_dependencies = VALUE #( ( 'zi_lfa1_2' ) ) ).
    environmnet =  cl_botd_mockemlapi_bo_test_env=>create( environment_config = env_config ).

  ENDMETHOD.

  METHOD setup.
    DATA: cut TYPE REF TO lhc_zi_lfa1_2.
    CREATE OBJECT cut FOR TESTING.
  ENDMETHOD.

*  METHOD validate_check_country.
*
*  ENDMETHOD.

  METHOD teardown.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.


ENDCLASS.

CLASS ltc_lfa1_validation DEFINITION
FOR TESTING
DURATION SHORT
RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    CLASS-DATA: sql_environmnet TYPE REF TO if_osql_test_environment,
                cds_environmnet TYPE REF TO if_cds_test_environment.
    DATA: cut             TYPE REF TO lhc_ZI_lfa1_2.
    CLASS-METHODS: class_setup,class_teardown.
    METHODS: setup,teardown.
    METHODS: validate_check_country FOR TESTING RAISING cx_static_check.
ENDCLASS.

CLASS ltc_lfa1_validation IMPLEMENTATION.

  METHOD class_setup.
    cds_environmnet = cl_cds_test_environment=>create( i_for_entity = 'ZI_LFA1_2' ).
  ENDMETHOD.

  METHOD setup.
    cds_environmnet->clear_doubles(  ).
  ENDMETHOD.

  METHOD validate_check_country.

    DATA: i_keys     TYPE TABLE FOR VALIDATION zi_lfa1_2~check_country,
          c_failed   TYPE RESPONSE FOR FAILED LATE zi_lfa1_2,
          c_reported TYPE RESPONSE FOR REPORTED LATE zi_lfa1_2.

    DATA: lfa1_mock_data TYPE STANDARD TABLE OF zlfa1.
    DATA(system_uuid) = cl_uuid_factory=>create_system_uuid( ).
    DATA(uuid_x16) = system_uuid->create_uuid_x16( ).
    lfa1_mock_data = VALUE #( ( client = sy-mandt Lifnr = uuid_x16 Name1 = 'Arunagirish' Land1 = 'Ind' ) ).
    cds_environmnet->insert_test_data( i_data = lfa1_mock_data ).
    i_keys = VALUE #( ( Lifnr = uuid_x16 ) ).
    CREATE OBJECT cut FOR TESTING.
    cut->check_country( EXPORTING keys = i_keys CHANGING failed = c_failed reported = c_reported ).
    cl_abap_unit_assert=>assert_not_initial( act = c_reported msg = 'failed' ).


  ENDMETHOD.

  METHOD teardown.
    cds_environmnet->destroy(  ).
    CLEAR cut.
  ENDMETHOD.

  METHOD class_teardown.
    cds_environmnet->clear_doubles(  ).
  ENDMETHOD.


ENDCLASS.
