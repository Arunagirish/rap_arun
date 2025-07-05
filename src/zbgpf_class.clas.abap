CLASS zbgpf_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_bgmc_op_single .
    METHODS constructor
      IMPORTING
        iv_data TYPE zi_lfa1_2.
  PRIVATE SECTION.
    DATA mv_data TYPE zi_lfa1_2.
    METHODS save.
ENDCLASS.


CLASS zbgpf_class IMPLEMENTATION.

  METHOD constructor.
    mv_data = iv_data.
  ENDMETHOD.

  METHOD if_bgmc_op_single~execute.
    cl_abap_tx=>save( ).
    save( ).
  ENDMETHOD.

  METHOD save.

    MODIFY zlog_book FROM @(
    VALUE #( lifnr = mv_data-Lifnr
             changed_on = mv_data-Changed_on ) ).
  ENDMETHOD.



ENDCLASS.


