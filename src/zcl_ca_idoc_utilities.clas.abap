class ZCL_CA_IDOC_UTILITIES definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !IV_LANGU type SYLANGU default SY-LANGU .
  methods GET_IDOC_STATUS
    importing
      !IV_DOCNUM type EDIDC-DOCNUM
    returning
      value(RV_STATUS) type EDIDC-STATUS .
  PROTECTED SECTION.
    DATA mv_langu TYPE sy-langu.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CA_IDOC_UTILITIES IMPLEMENTATION.


  METHOD CONSTRUCTOR.
    mv_langu = iv_langu.
  ENDMETHOD.


  METHOD GET_IDOC_STATUS.
    SELECT SINGLE status INTO rv_status FROM edidc WHERE docnum = iv_docnum.
  ENDMETHOD.
ENDCLASS.
