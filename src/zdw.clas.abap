"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>ZGW_PM_WORKORDER_SRV</em>
CLASS zdw DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Component</p>
      BEGIN OF tys_component,
        "! ValuationCategory
        valuation_category         TYPE c LENGTH 1,
        "! <em>Key property</em> ReservNo
        reserv_no                  TYPE c LENGTH 10,
        "! <em>Key property</em> ResItem
        res_item                   TYPE c LENGTH 4,
        "! ResType
        res_type                   TYPE c LENGTH 1,
        "! Movement
        movement                   TYPE abap_bool,
        "! Withdrawn
        withdrawn                  TYPE abap_bool,
        "! Material
        material                   TYPE c LENGTH 18,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! StgeLoc
        stge_loc                   TYPE c LENGTH 4,
        "! Batch
        batch                      TYPE c LENGTH 10,
        "! FixedQuan
        fixed_quan                 TYPE abap_bool,
        "! OriginalQuantity
        original_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! ItemCat
        item_cat                   TYPE c LENGTH 1,
        "! ItemNumber
        item_number                TYPE c LENGTH 4,
        "! ItemText1
        item_text_1                TYPE c LENGTH 40,
        "! MatlDesc
        matl_desc                  TYPE c LENGTH 40,
        "! RequirementQuantity
        requirement_quantity       TYPE p LENGTH 7 DECIMALS 3,
        "! RequirementQuantityUnit
        requirement_quantity_unit  TYPE c LENGTH 3,
        "! RequirementQuantityUnitIso
        requirement_quantity_uni_2 TYPE c LENGTH 3,
        "! ActivityOperation
        activity_operation         TYPE string,
        "! StockAvail
        stock_avail                TYPE string,
        "! OutQtyOrd
        out_qty_ord                TYPE string,
        "! CompCode
        comp_code                  TYPE string,
        "! bin
        bin                        TYPE c LENGTH 10,
        "! IssueQty
        issue_qty                  TYPE string,
        "! returnQty
        return_qty                 TYPE string,
        "! MinStockReq
        min_stock_req              TYPE int2,
        "! PrRequired
        pr_required                TYPE c LENGTH 1,
        "! PrNumber
        pr_number                  TYPE c LENGTH 10,
        "! PoNumber
        po_number                  TYPE c LENGTH 10,
      END OF tys_component,
      "! <p class="shorttext synchronized">List of Component</p>
      tyt_component TYPE STANDARD TABLE OF tys_component WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Delete_OP</p>
      BEGIN OF tys_delete_op,
        "! <em>Key property</em> Activity
        activity TYPE c LENGTH 4,
        "! Orderid
        orderid  TYPE c LENGTH 12,
      END OF tys_delete_op,
      "! <p class="shorttext synchronized">List of Delete_OP</p>
      tyt_delete_op TYPE STANDARD TABLE OF tys_delete_op WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ExististNotif</p>
      BEGIN OF tys_existist_notif,
        "! <em>Key property</em> Qmnum
        qmnum                      TYPE c LENGTH 12,
        "! Type
        type                       TYPE string,
        "! NotifNo
        notif_no                   TYPE c LENGTH 12,
        "! Planplant
        planplant                  TYPE c LENGTH 4,
        "! LocAcc
        loc_acc                    TYPE c LENGTH 12,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! Assembly
        assembly                   TYPE c LENGTH 18,
        "! Breakdown
        breakdown                  TYPE abap_bool,
        "! Downtime
        downtime                   TYPE string,
        "! Unit
        unit                       TYPE c LENGTH 3,
        "! IsocodeUnit
        isocode_unit               TYPE c LENGTH 3,
        "! Plangroup
        plangroup                  TYPE c LENGTH 3,
        "! Mntplan
        mntplan                    TYPE c LENGTH 12,
        "! MntcallNo
        mntcall_no                 TYPE int4,
        "! Maintitem
        maintitem                  TYPE c LENGTH 16,
        "! NotifType
        notif_type                 TYPE c LENGTH 2,
        "! ShortText
        short_text                 TYPE c LENGTH 40,
        "! Priotype
        priotype                   TYPE c LENGTH 2,
        "! Priority
        priority                   TYPE c LENGTH 1,
        "! CreatedBy
        created_by                 TYPE c LENGTH 12,
        "! ChangedBy
        changed_by                 TYPE c LENGTH 12,
        "! NotifDate
        notif_date                 TYPE timestampl,
        "! Reportedby
        reportedby                 TYPE c LENGTH 12,
        "! Desstdate
        desstdate                  TYPE timestampl,
        "! Dessttime
        dessttime                  TYPE timn,
        "! Desenddate
        desenddate                 TYPE timestampl,
        "! Desendtm
        desendtm                   TYPE timn,
        "! Orderid
        orderid                    TYPE c LENGTH 12,
        "! Material
        material                   TYPE c LENGTH 18,
        "! CustNo
        cust_no                    TYPE c LENGTH 10,
        "! ObjectNo
        object_no                  TYPE c LENGTH 22,
        "! Catprofile
        catprofile                 TYPE c LENGTH 9,
        "! LongText
        long_text                  TYPE c LENGTH 1,
        "! Prilang
        prilang                    TYPE c LENGTH 1,
        "! SalesOrd
        sales_ord                  TYPE c LENGTH 10,
        "! PurchNoC
        purch_no_c                 TYPE c LENGTH 35,
        "! Division
        division                   TYPE c LENGTH 2,
        "! SalesOrg
        sales_org                  TYPE c LENGTH 4,
        "! DistrChan
        distr_chan                 TYPE c LENGTH 2,
        "! AddrNumber
        addr_number                TYPE c LENGTH 10,
        "! CatType
        cat_type                   TYPE c LENGTH 1,
        "! CodeGroup
        code_group                 TYPE c LENGTH 8,
        "! Coding
        coding                     TYPE c LENGTH 4,
        "! PmWkctr
        pm_wkctr                   TYPE c LENGTH 8,
        "! Serialno
        serialno                   TYPE c LENGTH 18,
        "! DeleteFlag
        delete_flag                TYPE c LENGTH 1,
        "! Devicedata
        devicedata                 TYPE c LENGTH 40,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! SalesGrp
        sales_grp                  TYPE c LENGTH 3,
        "! Notiftmez
        notiftmez                  TYPE c LENGTH 6,
        "! FunctLoc
        funct_loc                  TYPE c LENGTH 40,
        "! Abcindic
        abcindic                   TYPE c LENGTH 1,
        "! Sortfield
        sortfield                  TYPE c LENGTH 30,
        "! Maintplant
        maintplant                 TYPE c LENGTH 4,
        "! Maintloc
        maintloc                   TYPE c LENGTH 10,
        "! Maintroom
        maintroom                  TYPE c LENGTH 8,
        "! Plsectn
        plsectn                    TYPE c LENGTH 3,
        "! PpWkctr
        pp_wkctr                   TYPE c LENGTH 8,
        "! BusArea
        bus_area                   TYPE c LENGTH 4,
        "! CoArea
        co_area                    TYPE c LENGTH 4,
        "! Costcenter
        costcenter                 TYPE c LENGTH 10,
        "! WbsElement
        wbs_element                TYPE c LENGTH 24,
        "! AssetNo
        asset_no                   TYPE c LENGTH 12,
        "! SubNumber
        sub_number                 TYPE c LENGTH 4,
        "! Stdgord
        stdgord                    TYPE c LENGTH 12,
        "! Stlmtorder
        stlmtorder                 TYPE c LENGTH 12,
        "! CompCode
        comp_code                  TYPE c LENGTH 4,
        "! SalesOrgLocAcc
        sales_org_loc_acc          TYPE c LENGTH 4,
        "! DivisionLocAcc
        division_loc_acc           TYPE c LENGTH 2,
        "! DistChanLocAcc
        dist_chan_loc_acc          TYPE c LENGTH 2,
        "! AddrNoLocAcc
        addr_no_loc_acc            TYPE c LENGTH 10,
        "! DocNumber
        doc_number                 TYPE c LENGTH 10,
        "! ItmNumber
        itm_number                 TYPE c LENGTH 6,
        "! Scenario
        scenario                   TYPE c LENGTH 4,
        "! AssemblyExternal
        assembly_external          TYPE c LENGTH 40,
        "! AssemblyGuid
        assembly_guid              TYPE c LENGTH 32,
        "! AssemblyVersion
        assembly_version           TYPE c LENGTH 10,
        "! MaterialExternal
        material_external          TYPE c LENGTH 40,
        "! MaterialGuid
        material_guid              TYPE c LENGTH 32,
        "! MaterialVersion
        material_version           TYPE c LENGTH 10,
        "! StartPoint
        start_point                TYPE c LENGTH 18,
        "! EndPoint
        end_point                  TYPE c LENGTH 18,
        "! LinearLength
        linear_length              TYPE c LENGTH 18,
        "! LinearUnitIso
        linear_unit_iso            TYPE c LENGTH 3,
        "! FirstOffsetTypeCode
        first_offset_type_code     TYPE c LENGTH 2,
        "! FirstOffsetValue
        first_offset_value         TYPE c LENGTH 18,
        "! FirstOffsetUnit
        first_offset_unit          TYPE c LENGTH 3,
        "! FirstOffsetUnitIso
        first_offset_unit_iso      TYPE c LENGTH 3,
        "! SecondOffsetTypeCode
        second_offset_type_code    TYPE c LENGTH 2,
        "! SecondOffsetValue
        second_offset_value        TYPE c LENGTH 18,
        "! SecondOffsetUnitIso
        second_offset_unit_iso     TYPE c LENGTH 3,
        "! SysStatus
        sys_status                 TYPE c LENGTH 40,
        "! UserSt
        user_st                    TYPE c LENGTH 1,
        "! Userstatus
        userstatus                 TYPE c LENGTH 40,
        "! StatProf
        stat_prof                  TYPE c LENGTH 8,
        "! MarkerStartPoint
        marker_start_point         TYPE c LENGTH 18,
        "! MarkerDistanceStartPoint
        marker_distance_start_poin TYPE c LENGTH 18,
        "! MarkerEndPoint
        marker_end_point           TYPE c LENGTH 18,
        "! MarkerDistanceEndPoint
        marker_distance_end_point  TYPE c LENGTH 18,
        "! MarkerDistanceUnitIso
        marker_distance_unit_iso   TYPE c LENGTH 3,
        "! Causecode
        causecode                  TYPE c LENGTH 8,
        "! Damagecode
        damagecode                 TYPE c LENGTH 8,
        "! DamageGroup
        damage_group               TYPE c LENGTH 8,
        "! CauseGroup
        cause_group                TYPE c LENGTH 8,
        "! strmlfntime
        strmlfntime                TYPE timn,
        "! ObjectCode
        object_code                TYPE string,
        "! ObjectPart
        object_part                TYPE string,
        "! ObjectPartDesc
        object_part_desc           TYPE string,
        "! endmlfntime
        endmlfntime                TYPE timn,
      END OF tys_existist_notif,
      "! <p class="shorttext synchronized">List of ExististNotif</p>
      tyt_existist_notif TYPE STANDARD TABLE OF tys_existist_notif WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ExternalService</p>
      BEGIN OF tys_external_service,
        "! <em>Key property</em> Activity
        activity       TYPE c LENGTH 4,
        "! ServiceLine
        service_line   TYPE c LENGTH 10,
        "! Service
        service        TYPE c LENGTH 18,
        "! ShortText
        short_text     TYPE c LENGTH 40,
        "! Quantity
        quantity       TYPE p LENGTH 7 DECIMALS 3,
        "! UOM
        uom            TYPE c LENGTH 3,
        "! GrossPrice
        gross_price    TYPE p LENGTH 6 DECIMALS 2,
        "! Currency
        currency       TYPE c LENGTH 5,
        "! PriceUnit
        price_unit     TYPE p LENGTH 3 DECIMALS 0,
        "! MaterialGroup
        material_group TYPE c LENGTH 9,
        "! NetPrice
        net_price      TYPE p LENGTH 6 DECIMALS 2,
        "! GlAccount
        gl_account     TYPE c LENGTH 10,
        "! Action
        action         TYPE c LENGTH 1,
      END OF tys_external_service,
      "! <p class="shorttext synchronized">List of ExternalService</p>
      tyt_external_service TYPE STANDARD TABLE OF tys_external_service WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Messages</p>
      BEGIN OF tys_messages,
        "! <em>Key property</em> Status
        status  TYPE c LENGTH 1,
        "! Message
        message TYPE c LENGTH 220,
      END OF tys_messages,
      "! <p class="shorttext synchronized">List of Messages</p>
      tyt_messages TYPE STANDARD TABLE OF tys_messages WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">NotificationType</p>
      BEGIN OF tys_notification_type,
        "! <em>Key property</em> NotifNo
        notif_no                   TYPE c LENGTH 12,
        "! Planplant
        planplant                  TYPE c LENGTH 4,
        "! LocAcc
        loc_acc                    TYPE c LENGTH 12,
        "! Equipment
        equipment                  TYPE c LENGTH 18,
        "! Assembly
        assembly                   TYPE c LENGTH 18,
        "! Breakdown
        breakdown                  TYPE abap_bool,
        "! Downtime
        downtime                   TYPE /iwbep/v4_float,
        "! Unit
        unit                       TYPE c LENGTH 3,
        "! IsocodeUnit
        isocode_unit               TYPE c LENGTH 3,
        "! Plangroup
        plangroup                  TYPE c LENGTH 3,
        "! Mntplan
        mntplan                    TYPE c LENGTH 12,
        "! MntcallNo
        mntcall_no                 TYPE int4,
        "! Maintitem
        maintitem                  TYPE c LENGTH 16,
        "! NotifType
        notif_type                 TYPE c LENGTH 2,
        "! ShortText
        short_text                 TYPE c LENGTH 40,
        "! Priotype
        priotype                   TYPE c LENGTH 2,
        "! Priority
        priority                   TYPE c LENGTH 1,
        "! CreatedBy
        created_by                 TYPE c LENGTH 12,
        "! ChangedBy
        changed_by                 TYPE c LENGTH 12,
        "! NotifDate
        notif_date                 TYPE timestampl,
        "! Reportedby
        reportedby                 TYPE c LENGTH 12,
        "! Desstdate
        desstdate                  TYPE timestampl,
        "! Dessttime
        dessttime                  TYPE timn,
        "! Desenddate
        desenddate                 TYPE timestampl,
        "! Desendtm
        desendtm                   TYPE timn,
        "! Orderid
        orderid                    TYPE c LENGTH 12,
        "! Material
        material                   TYPE c LENGTH 18,
        "! CustNo
        cust_no                    TYPE c LENGTH 10,
        "! ObjectNo
        object_no                  TYPE c LENGTH 22,
        "! Catprofile
        catprofile                 TYPE c LENGTH 9,
        "! LongText
        long_text                  TYPE c LENGTH 1,
        "! Prilang
        prilang                    TYPE c LENGTH 1,
        "! SalesOrd
        sales_ord                  TYPE c LENGTH 10,
        "! PurchNoC
        purch_no_c                 TYPE c LENGTH 35,
        "! Division
        division                   TYPE c LENGTH 2,
        "! SalesOrg
        sales_org                  TYPE c LENGTH 4,
        "! DistrChan
        distr_chan                 TYPE c LENGTH 2,
        "! AddrNumber
        addr_number                TYPE c LENGTH 10,
        "! CatType
        cat_type                   TYPE c LENGTH 1,
        "! CodeGroup
        code_group                 TYPE c LENGTH 8,
        "! Coding
        coding                     TYPE c LENGTH 4,
        "! PmWkctr
        pm_wkctr                   TYPE c LENGTH 8,
        "! Serialno
        serialno                   TYPE c LENGTH 18,
        "! DeleteFlag
        delete_flag                TYPE c LENGTH 1,
        "! Devicedata
        devicedata                 TYPE c LENGTH 40,
        "! SalesOffice
        sales_office               TYPE c LENGTH 4,
        "! SalesGrp
        sales_grp                  TYPE c LENGTH 3,
        "! Notiftmez
        notiftmez                  TYPE c LENGTH 6,
        "! FunctLoc
        funct_loc                  TYPE c LENGTH 40,
        "! Abcindic
        abcindic                   TYPE c LENGTH 1,
        "! Sortfield
        sortfield                  TYPE c LENGTH 30,
        "! Maintplant
        maintplant                 TYPE c LENGTH 4,
        "! Maintloc
        maintloc                   TYPE c LENGTH 10,
        "! Maintroom
        maintroom                  TYPE c LENGTH 8,
        "! Plsectn
        plsectn                    TYPE c LENGTH 3,
        "! PpWkctr
        pp_wkctr                   TYPE c LENGTH 8,
        "! BusArea
        bus_area                   TYPE c LENGTH 4,
        "! CoArea
        co_area                    TYPE c LENGTH 4,
        "! Costcenter
        costcenter                 TYPE c LENGTH 10,
        "! WbsElement
        wbs_element                TYPE c LENGTH 24,
        "! AssetNo
        asset_no                   TYPE c LENGTH 12,
        "! SubNumber
        sub_number                 TYPE c LENGTH 4,
        "! Stdgord
        stdgord                    TYPE c LENGTH 12,
        "! Stlmtorder
        stlmtorder                 TYPE c LENGTH 12,
        "! CompCode
        comp_code                  TYPE c LENGTH 4,
        "! SalesOrgLocAcc
        sales_org_loc_acc          TYPE c LENGTH 4,
        "! DivisionLocAcc
        division_loc_acc           TYPE c LENGTH 2,
        "! DistChanLocAcc
        dist_chan_loc_acc          TYPE c LENGTH 2,
        "! AddrNoLocAcc
        addr_no_loc_acc            TYPE c LENGTH 10,
        "! DocNumber
        doc_number                 TYPE c LENGTH 10,
        "! ItmNumber
        itm_number                 TYPE c LENGTH 6,
        "! Scenario
        scenario                   TYPE c LENGTH 4,
        "! AssemblyExternal
        assembly_external          TYPE c LENGTH 40,
        "! AssemblyGuid
        assembly_guid              TYPE c LENGTH 32,
        "! AssemblyVersion
        assembly_version           TYPE c LENGTH 10,
        "! MaterialExternal
        material_external          TYPE c LENGTH 40,
        "! MaterialGuid
        material_guid              TYPE c LENGTH 32,
        "! MaterialVersion
        material_version           TYPE c LENGTH 10,
        "! StartPoint
        start_point                TYPE c LENGTH 18,
        "! EndPoint
        end_point                  TYPE c LENGTH 18,
        "! LinearLength
        linear_length              TYPE c LENGTH 18,
        "! LinearUnitIso
        linear_unit_iso            TYPE c LENGTH 3,
        "! FirstOffsetTypeCode
        first_offset_type_code     TYPE c LENGTH 2,
        "! FirstOffsetValue
        first_offset_value         TYPE c LENGTH 18,
        "! FirstOffsetUnit
        first_offset_unit          TYPE c LENGTH 3,
        "! FirstOffsetUnitIso
        first_offset_unit_iso      TYPE c LENGTH 3,
        "! SecondOffsetTypeCode
        second_offset_type_code    TYPE c LENGTH 2,
        "! SecondOffsetValue
        second_offset_value        TYPE c LENGTH 18,
        "! SecondOffsetUnitIso
        second_offset_unit_iso     TYPE c LENGTH 3,
        "! SysStatus
        sys_status                 TYPE c LENGTH 40,
        "! UserSt
        user_st                    TYPE c LENGTH 1,
        "! Userstatus
        userstatus                 TYPE c LENGTH 40,
        "! StatProf
        stat_prof                  TYPE c LENGTH 8,
        "! MarkerStartPoint
        marker_start_point         TYPE c LENGTH 18,
        "! MarkerDistanceStartPoint
        marker_distance_start_poin TYPE c LENGTH 18,
        "! MarkerEndPoint
        marker_end_point           TYPE c LENGTH 18,
        "! MarkerDistanceEndPoint
        marker_distance_end_point  TYPE c LENGTH 18,
        "! MarkerDistanceUnitIso
        marker_distance_unit_iso   TYPE c LENGTH 3,
        "! Causecode
        causecode                  TYPE c LENGTH 8,
        "! Damagecode
        damagecode                 TYPE c LENGTH 8,
      END OF tys_notification_type,
      "! <p class="shorttext synchronized">List of NotificationType</p>
      tyt_notification_type TYPE STANDARD TABLE OF tys_notification_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">NotifActv</p>
      BEGIN OF tys_notif_actv,
        "! NotifNo
        notif_no    TYPE c LENGTH 12,
        "! ActKey
        act_key     TYPE c LENGTH 4,
        "! <em>Key property</em> ItemKey
        item_key    TYPE c LENGTH 4,
        "! ActCatTyp
        act_cat_typ TYPE c LENGTH 1,
        "! ActCodegrp
        act_codegrp TYPE c LENGTH 8,
        "! ActCode
        act_code    TYPE c LENGTH 4,
        "! Acttext
        acttext     TYPE c LENGTH 40,
        "! ActSortNo
        act_sort_no TYPE c LENGTH 4,
        "! TxtActgrp
        txt_actgrp  TYPE c LENGTH 40,
        "! TxtActcd
        txt_actcd   TYPE c LENGTH 40,
        "! Acode
        acode       TYPE c LENGTH 1,
        "! DelFlag
        del_flag    TYPE c LENGTH 1,
      END OF tys_notif_actv,
      "! <p class="shorttext synchronized">List of NotifActv</p>
      tyt_notif_actv TYPE STANDARD TABLE OF tys_notif_actv WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">NotifCause</p>
      BEGIN OF tys_notif_cause,
        "! TxtCausecd
        txt_causecd   TYPE c LENGTH 40,
        "! CauseKey
        cause_key     TYPE c LENGTH 4,
        "! CauseSortNo
        cause_sort_no TYPE c LENGTH 4,
        "! <em>Key property</em> ItemKey
        item_key      TYPE c LENGTH 4,
        "! Causetext
        causetext     TYPE c LENGTH 40,
        "! CauseCodegrp
        cause_codegrp TYPE c LENGTH 8,
        "! CauseCode
        cause_code    TYPE c LENGTH 4,
        "! Ccode
        ccode         TYPE c LENGTH 1,
        "! DelFlag
        del_flag      TYPE c LENGTH 1,
      END OF tys_notif_cause,
      "! <p class="shorttext synchronized">List of NotifCause</p>
      tyt_notif_cause TYPE STANDARD TABLE OF tys_notif_cause WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">NotifHeader</p>
      BEGIN OF tys_notif_header,
        "! <em>Key property</em> NotifID
        notif_id TYPE c LENGTH 12,
      END OF tys_notif_header,
      "! <p class="shorttext synchronized">List of NotifHeader</p>
      tyt_notif_header TYPE STANDARD TABLE OF tys_notif_header WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">NotifItem</p>
      BEGIN OF tys_notif_item,
        "! <em>Key property</em> NotifNo
        notif_no       TYPE c LENGTH 12,
        "! ActKey
        act_key        TYPE c LENGTH 4,
        "! CauseItemKey
        cause_item_key TYPE c LENGTH 4,
        "! ItItemKey
        it_item_key    TYPE c LENGTH 4,
        "! ActItemKey
        act_item_key   TYPE c LENGTH 4,
        "! ActCodegrp
        act_codegrp    TYPE c LENGTH 8,
        "! CauseCatTyp
        cause_cat_typ  TYPE c LENGTH 1,
        "! DCatTyp
        dcat_typ       TYPE c LENGTH 1,
        "! ActCode
        act_code       TYPE c LENGTH 4,
        "! CauseCodegrp
        cause_codegrp  TYPE c LENGTH 8,
        "! DCodegrp
        dcodegrp       TYPE c LENGTH 8,
        "! CauseCode
        cause_code     TYPE c LENGTH 4,
        "! DCode
        dcode          TYPE c LENGTH 4,
        "! ActSortNo
        act_sort_no    TYPE c LENGTH 4,
        "! CauseSortNo
        cause_sort_no  TYPE c LENGTH 4,
        "! DlCatTyp
        dl_cat_typ     TYPE c LENGTH 1,
        "! DlCodegrp
        dl_codegrp     TYPE c LENGTH 8,
        "! DlCode
        dl_code        TYPE c LENGTH 4,
        "! ItemSortNo
        item_sort_no   TYPE c LENGTH 4,
        "! StxtGrpcd
        stxt_grpcd     TYPE c LENGTH 40,
        "! ActCatTyp
        act_cat_typ    TYPE string,
        "! TxtCausecd
        txt_causecd    TYPE c LENGTH 40,
        "! TxtObjptcd
        txt_objptcd    TYPE c LENGTH 40,
        "! TextActcd
        text_actcd     TYPE c LENGTH 40,
      END OF tys_notif_item,
      "! <p class="shorttext synchronized">List of NotifItem</p>
      tyt_notif_item TYPE STANDARD TABLE OF tys_notif_item WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">NotiItem</p>
      BEGIN OF tys_noti_item,
        "! TxtProbcd
        txt_probcd   TYPE c LENGTH 40,
        "! <em>Key property</em> ItemKey
        item_key     TYPE c LENGTH 4,
        "! TxtObjptcd
        txt_objptcd  TYPE c LENGTH 40,
        "! ItemSortNo
        item_sort_no TYPE c LENGTH 4,
        "! Descript
        descript     TYPE c LENGTH 40,
        "! DCodegrp
        dcodegrp     TYPE c LENGTH 8,
        "! DCode
        dcode        TYPE c LENGTH 4,
        "! DlCodegrp
        dl_codegrp   TYPE c LENGTH 8,
        "! DlCode
        dl_code      TYPE c LENGTH 4,
        "! ICode
        icode        TYPE c LENGTH 1,
        "! DelFlag
        del_flag     TYPE c LENGTH 1,
      END OF tys_noti_item,
      "! <p class="shorttext synchronized">List of NotiItem</p>
      tyt_noti_item TYPE STANDARD TABLE OF tys_noti_item WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Operations</p>
      BEGIN OF tys_operations,
        "! <em>Key property</em> Activity
        activity             TYPE c LENGTH 4,
        "! SubActivity
        sub_activity         TYPE c LENGTH 4,
        "! ControlKey
        control_key          TYPE c LENGTH 4,
        "! WorkCntr
        work_cntr            TYPE c LENGTH 8,
        "! Plant
        plant                TYPE c LENGTH 4,
        "! Description
        description          TYPE c LENGTH 40,
        "! VendorNo
        vendor_no            TYPE c LENGTH 10,
        "! Quantity
        quantity             TYPE p LENGTH 7 DECIMALS 3,
        "! PurchOrg
        purch_org            TYPE c LENGTH 4,
        "! PurGroup
        pur_group            TYPE c LENGTH 3,
        "! MatlGroup
        matl_group           TYPE c LENGTH 9,
        "! CalcKey
        calc_key             TYPE c LENGTH 1,
        "! Acttype
        acttype              TYPE c LENGTH 6,
        "! Systcond
        systcond             TYPE c LENGTH 1,
        "! Assembly
        assembly             TYPE c LENGTH 18,
        "! Equipment
        equipment            TYPE c LENGTH 18,
        "! BusArea
        bus_area             TYPE c LENGTH 4,
        "! WbsElem
        wbs_elem             TYPE c LENGTH 24,
        "! ProfitCtr
        profit_ctr           TYPE c LENGTH 10,
        "! WageGroup
        wage_group           TYPE string,
        "! FWOrder
        fworder              TYPE string,
        "! CostElement
        cost_element         TYPE string,
        "! LongText
        long_text            TYPE string,
        "! SpareParts
        spare_parts          TYPE string,
        "! MyWork
        my_work              TYPE string,
        "! TWork
        twork                TYPE string,
        "! T
        t                    TYPE string,
        "! confStartDateTime
        conf_start_date_time TYPE timestamp,
        "! CompletedOn
        completed_on         TYPE timestamp,
        "! OperCode
        oper_code            TYPE string,
        "! ConfLongText
        conf_long_text       TYPE string,
        "! ConfShortText
        conf_short_text      TYPE string,
        "! TaskList
        task_list            TYPE string,
        "! OpType
        op_type              TYPE c LENGTH 1,
        "! systemstatustext
        systemstatustext     TYPE c LENGTH 40,
        "! ActStartDate
        act_start_date       TYPE timestamp,
        "! ActStartTime
        act_start_time       TYPE timn,
        "! ActEndDate
        act_end_date         TYPE timestamp,
        "! ActEndTime
        act_end_time         TYPE timn,
        "! Price
        price                TYPE p LENGTH 6 DECIMALS 2,
        "! Currency
        currency             TYPE c LENGTH 5,
        "! Agreement
        agreement            TYPE c LENGTH 10,
        "! AgreementItem
        agreement_item       TYPE c LENGTH 5,
        "! Recipient
        recipient            TYPE c LENGTH 12,
        "! Requisitioner
        requisitioner        TYPE c LENGTH 12,
        "! EarlyStart
        early_start          TYPE timestamp,
        "! EarlyEnd
        early_end            TYPE timestamp,
      END OF tys_operations,
      "! <p class="shorttext synchronized">List of Operations</p>
      tyt_operations TYPE STANDARD TABLE OF tys_operations WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Partner</p>
      BEGIN OF tys_partner,
        "! <em>Key property</em> Orderid
        orderid     TYPE c LENGTH 12,
        "! PartCode
        part_code   TYPE c LENGTH 2,
        "! AssignedTo
        assigned_to TYPE c LENGTH 12,
        "! PARTNERNAV
        partnernav  TYPE string,
        "! PARTNEROLD
        partnerold  TYPE c LENGTH 12,
      END OF tys_partner,
      "! <p class="shorttext synchronized">List of Partner</p>
      tyt_partner TYPE STANDARD TABLE OF tys_partner WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Plant_lookup</p>
      BEGIN OF tys_plant_lookup,
        "! <em>Key property</em> matnr
        matnr TYPE string,
        "! <em>Key property</em> Plant
        plant TYPE string,
      END OF tys_plant_lookup,
      "! <p class="shorttext synchronized">List of Plant_lookup</p>
      tyt_plant_lookup TYPE STANDARD TABLE OF tys_plant_lookup WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PMActivityType</p>
      BEGIN OF tys_pmactivity_type,
        "! <em>Key property</em> Auart
        auart  TYPE c LENGTH 4,
        "! <em>Key property</em> Ilart
        ilart  TYPE c LENGTH 3,
        "! Ilartx
        ilartx TYPE c LENGTH 30,
      END OF tys_pmactivity_type,
      "! <p class="shorttext synchronized">List of PMActivityType</p>
      tyt_pmactivity_type TYPE STANDARD TABLE OF tys_pmactivity_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Reforder</p>
      BEGIN OF tys_reforder,
        "! <em>Key property</em> ORDERID
        orderid                    TYPE c LENGTH 12,
        "! REQUIREMENT_QUANTITY
        requirement_quantity       TYPE c LENGTH 13,
        "! REQUIREMENT_QUANTITY_UNIT
        requirement_quantity_unit  TYPE c LENGTH 3,
        "! REQUIREMENT_QUANTITY_UNIT_ISO
        requirement_quantity_uni_2 TYPE c LENGTH 3,
        "! PLANT_TO
        plant_to                   TYPE c LENGTH 4,
        "! STGE_LOC_TO
        stge_loc_to                TYPE c LENGTH 4,
        "! BATCH_TO
        batch_to                   TYPE c LENGTH 10,
        "! VAL_TYPE_TO
        val_type_to                TYPE c LENGTH 10,
        "! MATERIAL_TO
        material_to                TYPE c LENGTH 18,
        "! PLANT_FROM
        plant_from                 TYPE c LENGTH 4,
        "! STGE_LOC_FROM
        stge_loc_from              TYPE c LENGTH 4,
        "! BATCH_FROM
        batch_from                 TYPE c LENGTH 10,
        "! VAL_TYPE_FROM
        val_type_from              TYPE c LENGTH 10,
        "! MATERIAL_TO_EXTERNAL
        material_to_external       TYPE c LENGTH 40,
        "! MATERIAL_TO_GUID
        material_to_guid           TYPE c LENGTH 32,
        "! MATERIAL_TO_VERSION
        material_to_version        TYPE c LENGTH 10,
        "! MATERIAL_TO_LONG
        material_to_long           TYPE c LENGTH 40,
        "! MATERIAL_FROM
        material_from              TYPE c LENGTH 18,
      END OF tys_reforder,
      "! <p class="shorttext synchronized">List of Reforder</p>
      tyt_reforder TYPE STANDARD TABLE OF tys_reforder WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ReservedSpareparts</p>
      BEGIN OF tys_reserved_spareparts,
        "! Activity
        activity                   TYPE c LENGTH 4,
        "! <em>Key property</em> OrderId
        order_id                   TYPE string,
        "! PstngDate
        pstng_date                 TYPE timestamp,
        "! DocDate
        doc_date                   TYPE timestamp,
        "! MaterialId
        material_id                TYPE string,
        "! <em>Key property</em> ResItem
        res_item                   TYPE c LENGTH 4,
        "! MatDesc
        mat_desc                   TYPE string,
        "! RequirementQuantity
        requirement_quantity       TYPE p LENGTH 7 DECIMALS 3,
        "! RequirementQuantityUnit
        requirement_quantity_unit  TYPE c LENGTH 3,
        "! RequirementQuantityUnitIso
        requirement_quantity_uni_2 TYPE c LENGTH 3,
        "! StgeLoc
        stge_loc                   TYPE c LENGTH 4,
        "! StockAvail
        stock_avail                TYPE string,
        "! Bin
        bin                        TYPE c LENGTH 10,
        "! IssueQty
        issue_qty                  TYPE string,
        "! OrderStatus
        order_status               TYPE string,
        "! UnresQuantity
        unres_quantity             TYPE p LENGTH 7 DECIMALS 3,
        "! Plant
        plant                      TYPE string,
        "! StartDateFrom
        start_date_from            TYPE timestampl,
        "! StartDateTo
        start_date_to              TYPE timestampl,
        "! ResNo
        res_no                     TYPE string,
        "! Top
        top                        TYPE string,
        "! Skip
        skip                       TYPE string,
      END OF tys_reserved_spareparts,
      "! <p class="shorttext synchronized">List of ReservedSpareparts</p>
      tyt_reserved_spareparts TYPE STANDARD TABLE OF tys_reserved_spareparts WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ServicePackNo</p>
      BEGIN OF tys_service_pack_no,
        "! <em>Key property</em> ServiceNo
        service_no TYPE c LENGTH 18,
      END OF tys_service_pack_no,
      "! <p class="shorttext synchronized">List of ServicePackNo</p>
      tyt_service_pack_no TYPE STANDARD TABLE OF tys_service_pack_no WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Stor_Loc_Lookup</p>
      BEGIN OF tys_stor_loc_lookup,
        "! <em>Key property</em> matnr
        matnr    TYPE string,
        "! <em>Key property</em> Stor_Loc
        stor_loc TYPE string,
      END OF tys_stor_loc_lookup,
      "! <p class="shorttext synchronized">List of Stor_Loc_Lookup</p>
      tyt_stor_loc_lookup TYPE STANDARD TABLE OF tys_stor_loc_lookup WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SystemStatus</p>
      BEGIN OF tys_system_status,
        "! <em>Key property</em> Orderid
        orderid TYPE c LENGTH 12,
      END OF tys_system_status,
      "! <p class="shorttext synchronized">List of SystemStatus</p>
      tyt_system_status TYPE STANDARD TABLE OF tys_system_status WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">TaskGroup</p>
      BEGIN OF tys_task_group,
        "! <em>Key property</em> Task_List_Group
        task_list_group      TYPE c LENGTH 8,
        "! Group_Counter
        group_counter        TYPE string,
        "! Task_List_Type
        task_list_type       TYPE c LENGTH 1,
        "! Delete_Old_Operation
        delete_old_operation TYPE c LENGTH 1,
        "! Operation
        operation            TYPE string,
        "! TaskMode
        task_mode            TYPE c LENGTH 1,
      END OF tys_task_group,
      "! <p class="shorttext synchronized">List of TaskGroup</p>
      tyt_task_group TYPE STANDARD TABLE OF tys_task_group WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">UserDetail</p>
      BEGIN OF tys_user_detail,
        "! <em>Key property</em> UName
        uname    TYPE c LENGTH 12,
        "! Password
        password TYPE c LENGTH 132,
      END OF tys_user_detail,
      "! <p class="shorttext synchronized">List of UserDetail</p>
      tyt_user_detail TYPE STANDARD TABLE OF tys_user_detail WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">UserStatus</p>
      BEGIN OF tys_user_status,
        "! <em>Key property</em> orderId
        order_id       TYPE c LENGTH 12,
        "! statusNo
        status_no      TYPE c LENGTH 5,
        "! statusType
        status_type    TYPE c LENGTH 4,
        "! statusText
        status_text    TYPE c LENGTH 30,
        "! currentStatus
        current_status TYPE c LENGTH 1,
      END OF tys_user_status,
      "! <p class="shorttext synchronized">List of UserStatus</p>
      tyt_user_status TYPE STANDARD TABLE OF tys_user_status WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">UserStausHeader</p>
      BEGIN OF tys_user_staus_header,
        "! <em>Key property</em> Dummy
        dummy TYPE string,
      END OF tys_user_staus_header,
      "! <p class="shorttext synchronized">List of UserStausHeader</p>
      tyt_user_staus_header TYPE STANDARD TABLE OF tys_user_staus_header WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Valuation_type_LookUp</p>
      BEGIN OF tys_valuation_type_look_up,
        "! <em>Key property</em> ValuationType
        valuation_type TYPE string,
      END OF tys_valuation_type_look_up,
      "! <p class="shorttext synchronized">List of Valuation_type_LookUp</p>
      tyt_valuation_type_look_up TYPE STANDARD TABLE OF tys_valuation_type_look_up WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WorkorderCost</p>
      BEGIN OF tys_workorder_cost,
        "! <em>Key property</em> ValueCat
        value_cat         TYPE c LENGTH 14,
        "! <em>Key property</em> ValueCatDesc
        value_cat_desc    TYPE c LENGTH 30,
        "! ActualCost
        actual_cost       TYPE p LENGTH 8 DECIMALS 2,
        "! PlanCost
        plan_cost         TYPE p LENGTH 8 DECIMALS 2,
        "! EstCost
        est_cost          TYPE p LENGTH 8 DECIMALS 2,
        "! ActualCostCat
        actual_cost_cat   TYPE p LENGTH 8 DECIMALS 2,
        "! PlanCostCat
        plan_cost_cat     TYPE p LENGTH 8 DECIMALS 2,
        "! EstCostCat
        est_cost_cat      TYPE p LENGTH 8 DECIMALS 2,
        "! Currency
        currency          TYPE c LENGTH 3,
        "! TotalActualCost
        total_actual_cost TYPE p LENGTH 8 DECIMALS 2,
        "! TotalPlanCost
        total_plan_cost   TYPE p LENGTH 8 DECIMALS 2,
        "! TotalEstCost
        total_est_cost    TYPE p LENGTH 8 DECIMALS 2,
      END OF tys_workorder_cost,
      "! <p class="shorttext synchronized">List of WorkorderCost</p>
      tyt_workorder_cost TYPE STANDARD TABLE OF tys_workorder_cost WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WorkorderHeader</p>
      BEGIN OF tys_workorder_header,
        "! <em>Key property</em> Orderid
        orderid            TYPE c LENGTH 12,
        "! SuperOrder
        super_order        TYPE c LENGTH 12,
        "! OrderType
        order_type         TYPE c LENGTH 4,
        "! Planplant
        planplant          TYPE c LENGTH 4,
        "! MnWkCtr
        mn_wk_ctr          TYPE c LENGTH 8,
        "! Plant
        plant              TYPE c LENGTH 4,
        "! Pmacttype
        pmacttype          TYPE c LENGTH 3,
        "! Plangroup
        plangroup          TYPE c LENGTH 3,
        "! Systcond
        systcond           TYPE c LENGTH 1,
        "! FunctLoc
        funct_loc          TYPE c LENGTH 40,
        "! Equipment
        equipment          TYPE c LENGTH 18,
        "! Assembly
        assembly           TYPE c LENGTH 18,
        "! Maintplant
        maintplant         TYPE c LENGTH 4,
        "! ShortText
        short_text         TYPE string,
        "! Priority
        priority           TYPE string,
        "! PlanStartDate
        plan_start_date    TYPE timestamp,
        "! PlanEndDate
        plan_end_date      TYPE timestamp,
        "! NotifNo
        notif_no           TYPE string,
        "! LongText
        long_text          TYPE string,
        "! AssetId
        asset_id           TYPE string,
        "! DateCreated
        date_created       TYPE timestamp,
        "! MalFunStartDate
        mal_fun_start_date TYPE timestamp,
        "! MalFunStartTime
        mal_fun_start_time TYPE timn,
        "! ReportedBy
        reported_by        TYPE string,
        "! OrderStatus
        order_status       TYPE string,
        "! SetOrderStatus
        set_order_status   TYPE string,
        "! EquipDesc
        equip_desc         TYPE c LENGTH 40,
        "! Breakdown
        breakdown          TYPE abap_bool,
        "! Downtime
        downtime           TYPE string,
        "! Causecode
        causecode          TYPE c LENGTH 8,
        "! Damagecode
        damagecode         TYPE c LENGTH 8,
        "! DamageGroup
        damage_group       TYPE c LENGTH 8,
        "! CauseGroup
        cause_group        TYPE c LENGTH 8,
        "! userStatus
        user_status        TYPE c LENGTH 40,
        "! userStatusNo
        user_status_no     TYPE c LENGTH 5,
        "! isGMP
        is_gmp             TYPE abap_bool,
        "! actualStart
        actual_start       TYPE c LENGTH 14,
        "! printstatus
        printstatus        TYPE c LENGTH 5,
        "! TecorefDate
        tecoref_date       TYPE timestamp,
        "! TecorefTime
        tecoref_time       TYPE timn,
        "! actualEnd
        actual_end         TYPE c LENGTH 14,
        "! releaseDate
        release_date       TYPE timestamp,
        "! TaskListGroup
        task_list_group    TYPE c LENGTH 8,
        "! TaskListType
        task_list_type     TYPE c LENGTH 1,
        "! TaskListGCounter
        task_list_gcounter TYPE c LENGTH 2,
        "! AbcIndc
        abc_indc           TYPE string,
        "! AbcTxt
        abc_txt            TYPE string,
        "! AuthGroup
        auth_group         TYPE string,
        "! PmacttypeDesc
        pmacttype_desc     TYPE string,
        "! Material
        material           TYPE c LENGTH 18,
        "! MalFunEndDate
        mal_fun_end_date   TYPE timestamp,
        "! MalFunEndTime
        mal_fun_end_time   TYPE timn,
        "! InsplotNumber
        insplot_number     TYPE string,
      END OF tys_workorder_header,
      "! <p class="shorttext synchronized">List of WorkorderHeader</p>
      tyt_workorder_header TYPE STANDARD TABLE OF tys_workorder_header WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WorkOrderUpdate</p>
      BEGIN OF tys_work_order_update,
        "! <em>Key property</em> Orderid
        orderid     TYPE c LENGTH 12,
        "! MnWkCtr
        mn_wk_ctr   TYPE c LENGTH 8,
        "! StartDate
        start_date  TYPE timestampl,
        "! FinishDate
        finish_date TYPE timestampl,
      END OF tys_work_order_update,
      "! <p class="shorttext synchronized">List of WorkOrderUpdate</p>
      tyt_work_order_update TYPE STANDARD TABLE OF tys_work_order_update WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WoUpdateHeader</p>
      BEGIN OF tys_wo_update_header,
        "! <em>Key property</em> Dummy
        dummy TYPE string,
      END OF tys_wo_update_header,
      "! <p class="shorttext synchronized">List of WoUpdateHeader</p>
      tyt_wo_update_header TYPE STANDARD TABLE OF tys_wo_update_header WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! ComponentSet
        "! <br/> Collection of type 'Component'
        component_set              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'COMPONENT_SET',
        "! Delete_OPSet
        "! <br/> Collection of type 'Delete_OP'
        delete_opset               TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DELETE_OPSET',
        "! ExististNotifSet
        "! <br/> Collection of type 'ExististNotif'
        existist_notif_set         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EXISTIST_NOTIF_SET',
        "! ExternalServiceSet
        "! <br/> Collection of type 'ExternalService'
        external_service_set       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'EXTERNAL_SERVICE_SET',
        "! MessagesSet
        "! <br/> Collection of type 'Messages'
        messages_set               TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MESSAGES_SET',
        "! NotificationSet
        "! <br/> Collection of type 'NotificationType'
        notification_set           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'NOTIFICATION_SET',
        "! NotifActvSet
        "! <br/> Collection of type 'NotifActv'
        notif_actv_set             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'NOTIF_ACTV_SET',
        "! NotifCauseSet
        "! <br/> Collection of type 'NotifCause'
        notif_cause_set            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'NOTIF_CAUSE_SET',
        "! NotifHeaderSet
        "! <br/> Collection of type 'NotifHeader'
        notif_header_set           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'NOTIF_HEADER_SET',
        "! NotifItemSet
        "! <br/> Collection of type 'NotifItem'
        notif_item_set             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'NOTIF_ITEM_SET',
        "! NotiItemSet
        "! <br/> Collection of type 'NotiItem'
        noti_item_set              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'NOTI_ITEM_SET',
        "! OperationsSet
        "! <br/> Collection of type 'Operations'
        operations_set             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'OPERATIONS_SET',
        "! PartnerSet
        "! <br/> Collection of type 'Partner'
        partner_set                TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PARTNER_SET',
        "! Plant_lookupSet
        "! <br/> Collection of type 'Plant_lookup'
        plant_lookup_set           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANT_LOOKUP_SET',
        "! PMActivityTypeSet
        "! <br/> Collection of type 'PMActivityType'
        pmactivity_type_set        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PMACTIVITY_TYPE_SET',
        "! ReforderSet
        "! <br/> Collection of type 'Reforder'
        reforder_set               TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'REFORDER_SET',
        "! ReservedSparepartsSet
        "! <br/> Collection of type 'ReservedSpareparts'
        reserved_spareparts_set    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'RESERVED_SPAREPARTS_SET',
        "! ServicePackNoSet
        "! <br/> Collection of type 'ServicePackNo'
        service_pack_no_set        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SERVICE_PACK_NO_SET',
        "! Stor_Loc_LookupSet
        "! <br/> Collection of type 'Stor_Loc_Lookup'
        stor_loc_lookup_set        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'STOR_LOC_LOOKUP_SET',
        "! SystemStatusSet
        "! <br/> Collection of type 'SystemStatus'
        system_status_set          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SYSTEM_STATUS_SET',
        "! TaskGroupSet
        "! <br/> Collection of type 'TaskGroup'
        task_group_set             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'TASK_GROUP_SET',
        "! UserDetailSet
        "! <br/> Collection of type 'UserDetail'
        user_detail_set            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'USER_DETAIL_SET',
        "! UserStatusSet
        "! <br/> Collection of type 'UserStatus'
        user_status_set            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'USER_STATUS_SET',
        "! UserStausHeaderSet
        "! <br/> Collection of type 'UserStausHeader'
        user_staus_header_set      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'USER_STAUS_HEADER_SET',
        "! Valuation_type_LookUpSet
        "! <br/> Collection of type 'Valuation_type_LookUp'
        valuation_type_look_up_set TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'VALUATION_TYPE_LOOK_UP_SET',
        "! WorkorderCostSet
        "! <br/> Collection of type 'WorkorderCost'
        workorder_cost_set         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WORKORDER_COST_SET',
        "! WorkorderHeaderSet
        "! <br/> Collection of type 'WorkorderHeader'
        workorder_header_set       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WORKORDER_HEADER_SET',
        "! WorkOrderUpdateSet
        "! <br/> Collection of type 'WorkOrderUpdate'
        work_order_update_set      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WORK_ORDER_UPDATE_SET',
        "! WoUpdateHeaderSet
        "! <br/> Collection of type 'WoUpdateHeader'
        wo_update_header_set       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WO_UPDATE_HEADER_SET',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for Component</p>
        "! See also structure type {@link ..tys_component}
        BEGIN OF component,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF component,
        "! <p class="shorttext synchronized">Internal names for Delete_OP</p>
        "! See also structure type {@link ..tys_delete_op}
        BEGIN OF delete_op,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF delete_op,
        "! <p class="shorttext synchronized">Internal names for ExististNotif</p>
        "! See also structure type {@link ..tys_existist_notif}
        BEGIN OF existist_notif,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF existist_notif,
        "! <p class="shorttext synchronized">Internal names for ExternalService</p>
        "! See also structure type {@link ..tys_external_service}
        BEGIN OF external_service,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF external_service,
        "! <p class="shorttext synchronized">Internal names for Messages</p>
        "! See also structure type {@link ..tys_messages}
        BEGIN OF messages,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF messages,
        "! <p class="shorttext synchronized">Internal names for NotificationType</p>
        "! See also structure type {@link ..tys_notification_type}
        BEGIN OF notification_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF notification_type,
        "! <p class="shorttext synchronized">Internal names for NotifActv</p>
        "! See also structure type {@link ..tys_notif_actv}
        BEGIN OF notif_actv,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF notif_actv,
        "! <p class="shorttext synchronized">Internal names for NotifCause</p>
        "! See also structure type {@link ..tys_notif_cause}
        BEGIN OF notif_cause,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF notif_cause,
        "! <p class="shorttext synchronized">Internal names for NotifHeader</p>
        "! See also structure type {@link ..tys_notif_header}
        BEGIN OF notif_header,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! NotifDummyToItemNav
            notif_dummy_to_item_nav   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'NOTIF_DUMMY_TO_ITEM_NAV',
            "! NotifHeaderToActvNav
            notif_header_to_actv_nav  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'NOTIF_HEADER_TO_ACTV_NAV',
            "! NotifHeaderToCauseNav
            notif_header_to_cause_nav TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'NOTIF_HEADER_TO_CAUSE_NAV',
            "! NotifHeaderToItemNav
            notif_header_to_item_nav  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'NOTIF_HEADER_TO_ITEM_NAV',
          END OF navigation,
        END OF notif_header,
        "! <p class="shorttext synchronized">Internal names for NotifItem</p>
        "! See also structure type {@link ..tys_notif_item}
        BEGIN OF notif_item,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF notif_item,
        "! <p class="shorttext synchronized">Internal names for NotiItem</p>
        "! See also structure type {@link ..tys_noti_item}
        BEGIN OF noti_item,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF noti_item,
        "! <p class="shorttext synchronized">Internal names for Operations</p>
        "! See also structure type {@link ..tys_operations}
        BEGIN OF operations,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF operations,
        "! <p class="shorttext synchronized">Internal names for Partner</p>
        "! See also structure type {@link ..tys_partner}
        BEGIN OF partner,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF partner,
        "! <p class="shorttext synchronized">Internal names for Plant_lookup</p>
        "! See also structure type {@link ..tys_plant_lookup}
        BEGIN OF plant_lookup,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF plant_lookup,
        "! <p class="shorttext synchronized">Internal names for PMActivityType</p>
        "! See also structure type {@link ..tys_pmactivity_type}
        BEGIN OF pmactivity_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF pmactivity_type,
        "! <p class="shorttext synchronized">Internal names for Reforder</p>
        "! See also structure type {@link ..tys_reforder}
        BEGIN OF reforder,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF reforder,
        "! <p class="shorttext synchronized">Internal names for ReservedSpareparts</p>
        "! See also structure type {@link ..tys_reserved_spareparts}
        BEGIN OF reserved_spareparts,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF reserved_spareparts,
        "! <p class="shorttext synchronized">Internal names for ServicePackNo</p>
        "! See also structure type {@link ..tys_service_pack_no}
        BEGIN OF service_pack_no,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF service_pack_no,
        "! <p class="shorttext synchronized">Internal names for Stor_Loc_Lookup</p>
        "! See also structure type {@link ..tys_stor_loc_lookup}
        BEGIN OF stor_loc_lookup,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF stor_loc_lookup,
        "! <p class="shorttext synchronized">Internal names for SystemStatus</p>
        "! See also structure type {@link ..tys_system_status}
        BEGIN OF system_status,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF system_status,
        "! <p class="shorttext synchronized">Internal names for TaskGroup</p>
        "! See also structure type {@link ..tys_task_group}
        BEGIN OF task_group,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF task_group,
        "! <p class="shorttext synchronized">Internal names for UserDetail</p>
        "! See also structure type {@link ..tys_user_detail}
        BEGIN OF user_detail,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF user_detail,
        "! <p class="shorttext synchronized">Internal names for UserStatus</p>
        "! See also structure type {@link ..tys_user_status}
        BEGIN OF user_status,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF user_status,
        "! <p class="shorttext synchronized">Internal names for UserStausHeader</p>
        "! See also structure type {@link ..tys_user_staus_header}
        BEGIN OF user_staus_header,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! UserStatusHeaderNav
            user_status_header_nav    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'USER_STATUS_HEADER_NAV',
            "! UserStatHeadeToMessagNav
            user_stat_heade_to_messag TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'USER_STAT_HEADE_TO_MESSAG',
          END OF navigation,
        END OF user_staus_header,
        "! <p class="shorttext synchronized">Internal names for Valuation_type_LookUp</p>
        "! See also structure type {@link ..tys_valuation_type_look_up}
        BEGIN OF valuation_type_look_up,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF valuation_type_look_up,
        "! <p class="shorttext synchronized">Internal names for WorkorderCost</p>
        "! See also structure type {@link ..tys_workorder_cost}
        BEGIN OF workorder_cost,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF workorder_cost,
        "! <p class="shorttext synchronized">Internal names for WorkorderHeader</p>
        "! See also structure type {@link ..tys_workorder_header}
        BEGIN OF workorder_header,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! DELETEOPNAV
            deleteopnav            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'DELETEOPNAV',
            "! HEADERTOCOMPONENTNAV
            headertocomponentnav   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOCOMPONENTNAV',
            "! HEADERTOMESSAGENAV
            headertomessagenav     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOMESSAGENAV',
            "! HEADERTONOTIFNAV
            headertonotifnav       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTONOTIFNAV',
            "! HEADERTOOPERATIONSNAV
            headertooperationsnav  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOOPERATIONSNAV',
            "! HEADERTOPARTNERNAV
            headertopartnernav     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOPARTNERNAV',
            "! HEADERTOTASKGROUPNAV
            headertotaskgroupnav   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOTASKGROUPNAV',
            "! HEADERTOUSERDETAILNAV
            headertouserdetailnav  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOUSERDETAILNAV',
            "! HEADERTOUSERSTATUSNAV
            headertouserstatusnav  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADERTOUSERSTATUSNAV',
            "! HeaderToExtSrvNav
            header_to_ext_srv_nav  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADER_TO_EXT_SRV_NAV',
            "! HeaderToReforderNav
            header_to_reforder_nav TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'HEADER_TO_REFORDER_NAV',
            "! WorkorderCostNav
            workorder_cost_nav     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'WORKORDER_COST_NAV',
          END OF navigation,
        END OF workorder_header,
        "! <p class="shorttext synchronized">Internal names for WorkOrderUpdate</p>
        "! See also structure type {@link ..tys_work_order_update}
        BEGIN OF work_order_update,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! WoUpdateHeader
            wo_update_header TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'WO_UPDATE_HEADER',
          END OF navigation,
        END OF work_order_update,
        "! <p class="shorttext synchronized">Internal names for WoUpdateHeader</p>
        "! See also structure type {@link ..tys_wo_update_header}
        BEGIN OF wo_update_header,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! WorkOrderUpdateNav
            work_order_update_nav TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'WORK_ORDER_UPDATE_NAV',
          END OF navigation,
        END OF wo_update_header,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define Component</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_component RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Delete_OP</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_delete_op RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ExististNotif</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_existist_notif RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ExternalService</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_external_service RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Messages</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_messages RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define NotificationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_notification_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define NotifActv</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_notif_actv RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define NotifCause</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_notif_cause RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define NotifHeader</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_notif_header RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define NotifItem</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_notif_item RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define NotiItem</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_noti_item RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Operations</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_operations RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Partner</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_partner RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Plant_lookup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_plant_lookup RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PMActivityType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_pmactivity_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Reforder</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_reforder RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ReservedSpareparts</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_reserved_spareparts RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ServicePackNo</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_service_pack_no RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Stor_Loc_Lookup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_stor_loc_lookup RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SystemStatus</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_system_status RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define TaskGroup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_task_group RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define UserDetail</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_user_detail RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define UserStatus</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_user_status RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define UserStausHeader</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_user_staus_header RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Valuation_type_LookUp</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_valuation_type_look_up RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WorkorderCost</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_workorder_cost RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WorkorderHeader</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_workorder_header RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WorkOrderUpdate</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_work_order_update RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WoUpdateHeader</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_wo_update_header RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zdw IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'ZGW_PM_WORKORDER_SRV' ) ##NO_TEXT.

    def_component( ).
    def_delete_op( ).
    def_existist_notif( ).
    def_external_service( ).
    def_messages( ).
    def_notification_type( ).
    def_notif_actv( ).
    def_notif_cause( ).
    def_notif_header( ).
    def_notif_item( ).
    def_noti_item( ).
    def_operations( ).
    def_partner( ).
    def_plant_lookup( ).
    def_pmactivity_type( ).
    def_reforder( ).
    def_reserved_spareparts( ).
    def_service_pack_no( ).
    def_stor_loc_lookup( ).
    def_system_status( ).
    def_task_group( ).
    def_user_detail( ).
    def_user_status( ).
    def_user_staus_header( ).
    def_valuation_type_look_up( ).
    def_workorder_cost( ).
    def_workorder_header( ).
    def_work_order_update( ).
    def_wo_update_header( ).

  ENDMETHOD.


  METHOD def_component.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'COMPONENT'
                                    is_structure              = VALUE tys_component( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Component' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'COMPONENT_SET' ).
    lo_entity_set->set_edm_name( 'ComponentSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ValuationCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RESERV_NO' ).
    lo_primitive_property->set_edm_name( 'ReservNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RES_ITEM' ).
    lo_primitive_property->set_edm_name( 'ResItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RES_TYPE' ).
    lo_primitive_property->set_edm_name( 'ResType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOVEMENT' ).
    lo_primitive_property->set_edm_name( 'Movement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHDRAWN' ).
    lo_primitive_property->set_edm_name( 'Withdrawn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STGE_LOC' ).
    lo_primitive_property->set_edm_name( 'StgeLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH' ).
    lo_primitive_property->set_edm_name( 'Batch' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_QUAN' ).
    lo_primitive_property->set_edm_name( 'FixedQuan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGINAL_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'OriginalQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CAT' ).
    lo_primitive_property->set_edm_name( 'ItemCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_TEXT_1' ).
    lo_primitive_property->set_edm_name( 'ItemText1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_DESC' ).
    lo_primitive_property->set_edm_name( 'MatlDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'RequirementQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'RequirementQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY_UNI_2' ).
    lo_primitive_property->set_edm_name( 'RequirementQuantityUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTIVITY_OPERATION' ).
    lo_primitive_property->set_edm_name( 'ActivityOperation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_AVAIL' ).
    lo_primitive_property->set_edm_name( 'StockAvail' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OUT_QTY_ORD' ).
    lo_primitive_property->set_edm_name( 'OutQtyOrd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMP_CODE' ).
    lo_primitive_property->set_edm_name( 'CompCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BIN' ).
    lo_primitive_property->set_edm_name( 'bin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ISSUE_QTY' ).
    lo_primitive_property->set_edm_name( 'IssueQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RETURN_QTY' ).
    lo_primitive_property->set_edm_name( 'returnQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MIN_STOCK_REQ' ).
    lo_primitive_property->set_edm_name( 'MinStockReq' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PR_REQUIRED' ).
    lo_primitive_property->set_edm_name( 'PrRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PR_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PrNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PO_NUMBER' ).
    lo_primitive_property->set_edm_name( 'PoNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_delete_op.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'DELETE_OP'
                                    is_structure              = VALUE tys_delete_op( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Delete_OP' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'DELETE_OPSET' ).
    lo_entity_set->set_edm_name( 'Delete_OPSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTIVITY' ).
    lo_primitive_property->set_edm_name( 'Activity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_existist_notif.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EXISTIST_NOTIF'
                                    is_structure              = VALUE tys_existist_notif( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ExististNotif' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EXISTIST_NOTIF_SET' ).
    lo_entity_set->set_edm_name( 'ExististNotifSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'QMNUM' ).
    lo_primitive_property->set_edm_name( 'Qmnum' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE' ).
    lo_primitive_property->set_edm_name( 'Type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_NO' ).
    lo_primitive_property->set_edm_name( 'NotifNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANPLANT' ).
    lo_primitive_property->set_edm_name( 'Planplant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'LocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY' ).
    lo_primitive_property->set_edm_name( 'Assembly' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BREAKDOWN' ).
    lo_primitive_property->set_edm_name( 'Breakdown' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOWNTIME' ).
    lo_primitive_property->set_edm_name( 'Downtime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT' ).
    lo_primitive_property->set_edm_name( 'Unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ISOCODE_UNIT' ).
    lo_primitive_property->set_edm_name( 'IsocodeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANGROUP' ).
    lo_primitive_property->set_edm_name( 'Plangroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MNTPLAN' ).
    lo_primitive_property->set_edm_name( 'Mntplan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MNTCALL_NO' ).
    lo_primitive_property->set_edm_name( 'MntcallNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTITEM' ).
    lo_primitive_property->set_edm_name( 'Maintitem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_TYPE' ).
    lo_primitive_property->set_edm_name( 'NotifType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHORT_TEXT' ).
    lo_primitive_property->set_edm_name( 'ShortText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIOTYPE' ).
    lo_primitive_property->set_edm_name( 'Priotype' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIORITY' ).
    lo_primitive_property->set_edm_name( 'Priority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_BY' ).
    lo_primitive_property->set_edm_name( 'ChangedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_DATE' ).
    lo_primitive_property->set_edm_name( 'NotifDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPORTEDBY' ).
    lo_primitive_property->set_edm_name( 'Reportedby' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESSTDATE' ).
    lo_primitive_property->set_edm_name( 'Desstdate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESSTTIME' ).
    lo_primitive_property->set_edm_name( 'Dessttime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESENDDATE' ).
    lo_primitive_property->set_edm_name( 'Desenddate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESENDTM' ).
    lo_primitive_property->set_edm_name( 'Desendtm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_NO' ).
    lo_primitive_property->set_edm_name( 'CustNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_NO' ).
    lo_primitive_property->set_edm_name( 'ObjectNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 22 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATPROFILE' ).
    lo_primitive_property->set_edm_name( 'Catprofile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRILANG' ).
    lo_primitive_property->set_edm_name( 'Prilang' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORD' ).
    lo_primitive_property->set_edm_name( 'SalesOrd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCH_NO_C' ).
    lo_primitive_property->set_edm_name( 'PurchNoC' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'SalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTR_CHAN' ).
    lo_primitive_property->set_edm_name( 'DistrChan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDR_NUMBER' ).
    lo_primitive_property->set_edm_name( 'AddrNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAT_TYPE' ).
    lo_primitive_property->set_edm_name( 'CatType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CodeGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODING' ).
    lo_primitive_property->set_edm_name( 'Coding' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PM_WKCTR' ).
    lo_primitive_property->set_edm_name( 'PmWkctr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIALNO' ).
    lo_primitive_property->set_edm_name( 'Serialno' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETE_FLAG' ).
    lo_primitive_property->set_edm_name( 'DeleteFlag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEVICEDATA' ).
    lo_primitive_property->set_edm_name( 'Devicedata' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GRP' ).
    lo_primitive_property->set_edm_name( 'SalesGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIFTMEZ' ).
    lo_primitive_property->set_edm_name( 'Notiftmez' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCT_LOC' ).
    lo_primitive_property->set_edm_name( 'FunctLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDIC' ).
    lo_primitive_property->set_edm_name( 'Abcindic' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SORTFIELD' ).
    lo_primitive_property->set_edm_name( 'Sortfield' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTPLANT' ).
    lo_primitive_property->set_edm_name( 'Maintplant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTLOC' ).
    lo_primitive_property->set_edm_name( 'Maintloc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTROOM' ).
    lo_primitive_property->set_edm_name( 'Maintroom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLSECTN' ).
    lo_primitive_property->set_edm_name( 'Plsectn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PP_WKCTR' ).
    lo_primitive_property->set_edm_name( 'PpWkctr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_AREA' ).
    lo_primitive_property->set_edm_name( 'BusArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CO_AREA' ).
    lo_primitive_property->set_edm_name( 'CoArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTCENTER' ).
    lo_primitive_property->set_edm_name( 'Costcenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBS_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'WbsElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSET_NO' ).
    lo_primitive_property->set_edm_name( 'AssetNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUB_NUMBER' ).
    lo_primitive_property->set_edm_name( 'SubNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STDGORD' ).
    lo_primitive_property->set_edm_name( 'Stdgord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STLMTORDER' ).
    lo_primitive_property->set_edm_name( 'Stlmtorder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMP_CODE' ).
    lo_primitive_property->set_edm_name( 'CompCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORG_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'SalesOrgLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'DivisionLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIST_CHAN_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'DistChanLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDR_NO_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'AddrNoLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ItmNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SCENARIO' ).
    lo_primitive_property->set_edm_name( 'Scenario' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_EXTERNAL' ).
    lo_primitive_property->set_edm_name( 'AssemblyExternal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_GUID' ).
    lo_primitive_property->set_edm_name( 'AssemblyGuid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_VERSION' ).
    lo_primitive_property->set_edm_name( 'AssemblyVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_EXTERNAL' ).
    lo_primitive_property->set_edm_name( 'MaterialExternal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_GUID' ).
    lo_primitive_property->set_edm_name( 'MaterialGuid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_VERSION' ).
    lo_primitive_property->set_edm_name( 'MaterialVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_POINT' ).
    lo_primitive_property->set_edm_name( 'StartPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_POINT' ).
    lo_primitive_property->set_edm_name( 'EndPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINEAR_LENGTH' ).
    lo_primitive_property->set_edm_name( 'LinearLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINEAR_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'LinearUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_VALUE' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_UNIT' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_OFFSET_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'SecondOffsetTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_OFFSET_VALUE' ).
    lo_primitive_property->set_edm_name( 'SecondOffsetValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_OFFSET_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'SecondOffsetUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SYS_STATUS' ).
    lo_primitive_property->set_edm_name( 'SysStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USER_ST' ).
    lo_primitive_property->set_edm_name( 'UserSt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USERSTATUS' ).
    lo_primitive_property->set_edm_name( 'Userstatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STAT_PROF' ).
    lo_primitive_property->set_edm_name( 'StatProf' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_START_POINT' ).
    lo_primitive_property->set_edm_name( 'MarkerStartPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_DISTANCE_START_POIN' ).
    lo_primitive_property->set_edm_name( 'MarkerDistanceStartPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_END_POINT' ).
    lo_primitive_property->set_edm_name( 'MarkerEndPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_DISTANCE_END_POINT' ).
    lo_primitive_property->set_edm_name( 'MarkerDistanceEndPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_DISTANCE_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'MarkerDistanceUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSECODE' ).
    lo_primitive_property->set_edm_name( 'Causecode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DAMAGECODE' ).
    lo_primitive_property->set_edm_name( 'Damagecode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DAMAGE_GROUP' ).
    lo_primitive_property->set_edm_name( 'DamageGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CauseGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STRMLFNTIME' ).
    lo_primitive_property->set_edm_name( 'strmlfntime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_CODE' ).
    lo_primitive_property->set_edm_name( 'ObjectCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_PART' ).
    lo_primitive_property->set_edm_name( 'ObjectPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_PART_DESC' ).
    lo_primitive_property->set_edm_name( 'ObjectPartDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENDMLFNTIME' ).
    lo_primitive_property->set_edm_name( 'endmlfntime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_external_service.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'EXTERNAL_SERVICE'
                                    is_structure              = VALUE tys_external_service( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ExternalService' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'EXTERNAL_SERVICE_SET' ).
    lo_entity_set->set_edm_name( 'ExternalServiceSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTIVITY' ).
    lo_primitive_property->set_edm_name( 'Activity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_LINE' ).
    lo_primitive_property->set_edm_name( 'ServiceLine' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE' ).
    lo_primitive_property->set_edm_name( 'Service' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHORT_TEXT' ).
    lo_primitive_property->set_edm_name( 'ShortText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY' ).
    lo_primitive_property->set_edm_name( 'Quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UOM' ).
    lo_primitive_property->set_edm_name( 'UOM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_PRICE' ).
    lo_primitive_property->set_edm_name( 'GrossPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_UNIT' ).
    lo_primitive_property->set_edm_name( 'PriceUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_PRICE' ).
    lo_primitive_property->set_edm_name( 'NetPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GL_ACCOUNT' ).
    lo_primitive_property->set_edm_name( 'GlAccount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTION' ).
    lo_primitive_property->set_edm_name( 'Action' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_messages.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'MESSAGES'
                                    is_structure              = VALUE tys_messages( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Messages' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'MESSAGES_SET' ).
    lo_entity_set->set_edm_name( 'MessagesSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATUS' ).
    lo_primitive_property->set_edm_name( 'Status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'Message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 220 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_notification_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'NOTIFICATION_TYPE'
                                    is_structure              = VALUE tys_notification_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'NotificationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'NOTIFICATION_SET' ).
    lo_entity_set->set_edm_name( 'NotificationSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_NO' ).
    lo_primitive_property->set_edm_name( 'NotifNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANPLANT' ).
    lo_primitive_property->set_edm_name( 'Planplant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'LocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY' ).
    lo_primitive_property->set_edm_name( 'Assembly' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BREAKDOWN' ).
    lo_primitive_property->set_edm_name( 'Breakdown' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOWNTIME' ).
    lo_primitive_property->set_edm_name( 'Downtime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT' ).
    lo_primitive_property->set_edm_name( 'Unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ISOCODE_UNIT' ).
    lo_primitive_property->set_edm_name( 'IsocodeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANGROUP' ).
    lo_primitive_property->set_edm_name( 'Plangroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MNTPLAN' ).
    lo_primitive_property->set_edm_name( 'Mntplan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MNTCALL_NO' ).
    lo_primitive_property->set_edm_name( 'MntcallNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTITEM' ).
    lo_primitive_property->set_edm_name( 'Maintitem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_TYPE' ).
    lo_primitive_property->set_edm_name( 'NotifType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHORT_TEXT' ).
    lo_primitive_property->set_edm_name( 'ShortText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIOTYPE' ).
    lo_primitive_property->set_edm_name( 'Priotype' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIORITY' ).
    lo_primitive_property->set_edm_name( 'Priority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_BY' ).
    lo_primitive_property->set_edm_name( 'ChangedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_DATE' ).
    lo_primitive_property->set_edm_name( 'NotifDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPORTEDBY' ).
    lo_primitive_property->set_edm_name( 'Reportedby' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESSTDATE' ).
    lo_primitive_property->set_edm_name( 'Desstdate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESSTTIME' ).
    lo_primitive_property->set_edm_name( 'Dessttime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESENDDATE' ).
    lo_primitive_property->set_edm_name( 'Desenddate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESENDTM' ).
    lo_primitive_property->set_edm_name( 'Desendtm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUST_NO' ).
    lo_primitive_property->set_edm_name( 'CustNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_NO' ).
    lo_primitive_property->set_edm_name( 'ObjectNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 22 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATPROFILE' ).
    lo_primitive_property->set_edm_name( 'Catprofile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRILANG' ).
    lo_primitive_property->set_edm_name( 'Prilang' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORD' ).
    lo_primitive_property->set_edm_name( 'SalesOrd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCH_NO_C' ).
    lo_primitive_property->set_edm_name( 'PurchNoC' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 35 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'SalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTR_CHAN' ).
    lo_primitive_property->set_edm_name( 'DistrChan' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDR_NUMBER' ).
    lo_primitive_property->set_edm_name( 'AddrNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAT_TYPE' ).
    lo_primitive_property->set_edm_name( 'CatType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CodeGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODING' ).
    lo_primitive_property->set_edm_name( 'Coding' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PM_WKCTR' ).
    lo_primitive_property->set_edm_name( 'PmWkctr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIALNO' ).
    lo_primitive_property->set_edm_name( 'Serialno' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETE_FLAG' ).
    lo_primitive_property->set_edm_name( 'DeleteFlag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEVICEDATA' ).
    lo_primitive_property->set_edm_name( 'Devicedata' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_OFFICE' ).
    lo_primitive_property->set_edm_name( 'SalesOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_GRP' ).
    lo_primitive_property->set_edm_name( 'SalesGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIFTMEZ' ).
    lo_primitive_property->set_edm_name( 'Notiftmez' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCT_LOC' ).
    lo_primitive_property->set_edm_name( 'FunctLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDIC' ).
    lo_primitive_property->set_edm_name( 'Abcindic' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SORTFIELD' ).
    lo_primitive_property->set_edm_name( 'Sortfield' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTPLANT' ).
    lo_primitive_property->set_edm_name( 'Maintplant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTLOC' ).
    lo_primitive_property->set_edm_name( 'Maintloc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTROOM' ).
    lo_primitive_property->set_edm_name( 'Maintroom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLSECTN' ).
    lo_primitive_property->set_edm_name( 'Plsectn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PP_WKCTR' ).
    lo_primitive_property->set_edm_name( 'PpWkctr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_AREA' ).
    lo_primitive_property->set_edm_name( 'BusArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CO_AREA' ).
    lo_primitive_property->set_edm_name( 'CoArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTCENTER' ).
    lo_primitive_property->set_edm_name( 'Costcenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBS_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'WbsElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSET_NO' ).
    lo_primitive_property->set_edm_name( 'AssetNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUB_NUMBER' ).
    lo_primitive_property->set_edm_name( 'SubNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STDGORD' ).
    lo_primitive_property->set_edm_name( 'Stdgord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STLMTORDER' ).
    lo_primitive_property->set_edm_name( 'Stlmtorder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMP_CODE' ).
    lo_primitive_property->set_edm_name( 'CompCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORG_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'SalesOrgLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'DivisionLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIST_CHAN_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'DistChanLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADDR_NO_LOC_ACC' ).
    lo_primitive_property->set_edm_name( 'AddrNoLocAcc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ItmNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SCENARIO' ).
    lo_primitive_property->set_edm_name( 'Scenario' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_EXTERNAL' ).
    lo_primitive_property->set_edm_name( 'AssemblyExternal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_GUID' ).
    lo_primitive_property->set_edm_name( 'AssemblyGuid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_VERSION' ).
    lo_primitive_property->set_edm_name( 'AssemblyVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_EXTERNAL' ).
    lo_primitive_property->set_edm_name( 'MaterialExternal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_GUID' ).
    lo_primitive_property->set_edm_name( 'MaterialGuid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_VERSION' ).
    lo_primitive_property->set_edm_name( 'MaterialVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_POINT' ).
    lo_primitive_property->set_edm_name( 'StartPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_POINT' ).
    lo_primitive_property->set_edm_name( 'EndPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINEAR_LENGTH' ).
    lo_primitive_property->set_edm_name( 'LinearLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINEAR_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'LinearUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_VALUE' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_UNIT' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_OFFSET_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'FirstOffsetUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_OFFSET_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'SecondOffsetTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_OFFSET_VALUE' ).
    lo_primitive_property->set_edm_name( 'SecondOffsetValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_OFFSET_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'SecondOffsetUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SYS_STATUS' ).
    lo_primitive_property->set_edm_name( 'SysStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USER_ST' ).
    lo_primitive_property->set_edm_name( 'UserSt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USERSTATUS' ).
    lo_primitive_property->set_edm_name( 'Userstatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STAT_PROF' ).
    lo_primitive_property->set_edm_name( 'StatProf' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_START_POINT' ).
    lo_primitive_property->set_edm_name( 'MarkerStartPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_DISTANCE_START_POIN' ).
    lo_primitive_property->set_edm_name( 'MarkerDistanceStartPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_END_POINT' ).
    lo_primitive_property->set_edm_name( 'MarkerEndPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_DISTANCE_END_POINT' ).
    lo_primitive_property->set_edm_name( 'MarkerDistanceEndPoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MARKER_DISTANCE_UNIT_ISO' ).
    lo_primitive_property->set_edm_name( 'MarkerDistanceUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSECODE' ).
    lo_primitive_property->set_edm_name( 'Causecode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DAMAGECODE' ).
    lo_primitive_property->set_edm_name( 'Damagecode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_notif_actv.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'NOTIF_ACTV'
                                    is_structure              = VALUE tys_notif_actv( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'NotifActv' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'NOTIF_ACTV_SET' ).
    lo_entity_set->set_edm_name( 'NotifActvSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_NO' ).
    lo_primitive_property->set_edm_name( 'NotifNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_KEY' ).
    lo_primitive_property->set_edm_name( 'ActKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_KEY' ).
    lo_primitive_property->set_edm_name( 'ItemKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_CAT_TYP' ).
    lo_primitive_property->set_edm_name( 'ActCatTyp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_CODEGRP' ).
    lo_primitive_property->set_edm_name( 'ActCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_CODE' ).
    lo_primitive_property->set_edm_name( 'ActCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTTEXT' ).
    lo_primitive_property->set_edm_name( 'Acttext' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_SORT_NO' ).
    lo_primitive_property->set_edm_name( 'ActSortNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_ACTGRP' ).
    lo_primitive_property->set_edm_name( 'TxtActgrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_ACTCD' ).
    lo_primitive_property->set_edm_name( 'TxtActcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACODE' ).
    lo_primitive_property->set_edm_name( 'Acode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEL_FLAG' ).
    lo_primitive_property->set_edm_name( 'DelFlag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_notif_cause.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'NOTIF_CAUSE'
                                    is_structure              = VALUE tys_notif_cause( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'NotifCause' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'NOTIF_CAUSE_SET' ).
    lo_entity_set->set_edm_name( 'NotifCauseSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_CAUSECD' ).
    lo_primitive_property->set_edm_name( 'TxtCausecd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_KEY' ).
    lo_primitive_property->set_edm_name( 'CauseKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_SORT_NO' ).
    lo_primitive_property->set_edm_name( 'CauseSortNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_KEY' ).
    lo_primitive_property->set_edm_name( 'ItemKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSETEXT' ).
    lo_primitive_property->set_edm_name( 'Causetext' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_CODEGRP' ).
    lo_primitive_property->set_edm_name( 'CauseCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_CODE' ).
    lo_primitive_property->set_edm_name( 'CauseCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CCODE' ).
    lo_primitive_property->set_edm_name( 'Ccode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEL_FLAG' ).
    lo_primitive_property->set_edm_name( 'DelFlag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_notif_header.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'NOTIF_HEADER'
                                    is_structure              = VALUE tys_notif_header( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'NotifHeader' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'NOTIF_HEADER_SET' ).
    lo_entity_set->set_edm_name( 'NotifHeaderSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_ID' ).
    lo_primitive_property->set_edm_name( 'NotifID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'NOTIF_DUMMY_TO_ITEM_NAV' ).
    lo_navigation_property->set_edm_name( 'NotifDummyToItemNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'NOTIF_ITEM' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'NOTIF_HEADER_TO_ACTV_NAV' ).
    lo_navigation_property->set_edm_name( 'NotifHeaderToActvNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'NOTIF_ACTV' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'NOTIF_HEADER_TO_CAUSE_NAV' ).
    lo_navigation_property->set_edm_name( 'NotifHeaderToCauseNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'NOTIF_CAUSE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'NOTIF_HEADER_TO_ITEM_NAV' ).
    lo_navigation_property->set_edm_name( 'NotifHeaderToItemNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'NOTI_ITEM' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_notif_item.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'NOTIF_ITEM'
                                    is_structure              = VALUE tys_notif_item( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'NotifItem' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'NOTIF_ITEM_SET' ).
    lo_entity_set->set_edm_name( 'NotifItemSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_NO' ).
    lo_primitive_property->set_edm_name( 'NotifNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_KEY' ).
    lo_primitive_property->set_edm_name( 'ActKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_ITEM_KEY' ).
    lo_primitive_property->set_edm_name( 'CauseItemKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IT_ITEM_KEY' ).
    lo_primitive_property->set_edm_name( 'ItItemKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_ITEM_KEY' ).
    lo_primitive_property->set_edm_name( 'ActItemKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_CODEGRP' ).
    lo_primitive_property->set_edm_name( 'ActCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_CAT_TYP' ).
    lo_primitive_property->set_edm_name( 'CauseCatTyp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DCAT_TYP' ).
    lo_primitive_property->set_edm_name( 'DCatTyp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_CODE' ).
    lo_primitive_property->set_edm_name( 'ActCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_CODEGRP' ).
    lo_primitive_property->set_edm_name( 'CauseCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DCODEGRP' ).
    lo_primitive_property->set_edm_name( 'DCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_CODE' ).
    lo_primitive_property->set_edm_name( 'CauseCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DCODE' ).
    lo_primitive_property->set_edm_name( 'DCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_SORT_NO' ).
    lo_primitive_property->set_edm_name( 'ActSortNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_SORT_NO' ).
    lo_primitive_property->set_edm_name( 'CauseSortNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DL_CAT_TYP' ).
    lo_primitive_property->set_edm_name( 'DlCatTyp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DL_CODEGRP' ).
    lo_primitive_property->set_edm_name( 'DlCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DL_CODE' ).
    lo_primitive_property->set_edm_name( 'DlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_SORT_NO' ).
    lo_primitive_property->set_edm_name( 'ItemSortNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STXT_GRPCD' ).
    lo_primitive_property->set_edm_name( 'StxtGrpcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_CAT_TYP' ).
    lo_primitive_property->set_edm_name( 'ActCatTyp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_CAUSECD' ).
    lo_primitive_property->set_edm_name( 'TxtCausecd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_OBJPTCD' ).
    lo_primitive_property->set_edm_name( 'TxtObjptcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_ACTCD' ).
    lo_primitive_property->set_edm_name( 'TextActcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_noti_item.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'NOTI_ITEM'
                                    is_structure              = VALUE tys_noti_item( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'NotiItem' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'NOTI_ITEM_SET' ).
    lo_entity_set->set_edm_name( 'NotiItemSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_PROBCD' ).
    lo_primitive_property->set_edm_name( 'TxtProbcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_KEY' ).
    lo_primitive_property->set_edm_name( 'ItemKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TXT_OBJPTCD' ).
    lo_primitive_property->set_edm_name( 'TxtObjptcd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_SORT_NO' ).
    lo_primitive_property->set_edm_name( 'ItemSortNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPT' ).
    lo_primitive_property->set_edm_name( 'Descript' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DCODEGRP' ).
    lo_primitive_property->set_edm_name( 'DCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DCODE' ).
    lo_primitive_property->set_edm_name( 'DCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DL_CODEGRP' ).
    lo_primitive_property->set_edm_name( 'DlCodegrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DL_CODE' ).
    lo_primitive_property->set_edm_name( 'DlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ICODE' ).
    lo_primitive_property->set_edm_name( 'ICode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEL_FLAG' ).
    lo_primitive_property->set_edm_name( 'DelFlag' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_operations.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'OPERATIONS'
                                    is_structure              = VALUE tys_operations( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Operations' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'OPERATIONS_SET' ).
    lo_entity_set->set_edm_name( 'OperationsSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTIVITY' ).
    lo_primitive_property->set_edm_name( 'Activity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUB_ACTIVITY' ).
    lo_primitive_property->set_edm_name( 'SubActivity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTROL_KEY' ).
    lo_primitive_property->set_edm_name( 'ControlKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WORK_CNTR' ).
    lo_primitive_property->set_edm_name( 'WorkCntr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VENDOR_NO' ).
    lo_primitive_property->set_edm_name( 'VendorNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY' ).
    lo_primitive_property->set_edm_name( 'Quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCH_ORG' ).
    lo_primitive_property->set_edm_name( 'PurchOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PUR_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATL_GROUP' ).
    lo_primitive_property->set_edm_name( 'MatlGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CALC_KEY' ).
    lo_primitive_property->set_edm_name( 'CalcKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTTYPE' ).
    lo_primitive_property->set_edm_name( 'Acttype' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SYSTCOND' ).
    lo_primitive_property->set_edm_name( 'Systcond' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY' ).
    lo_primitive_property->set_edm_name( 'Assembly' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUS_AREA' ).
    lo_primitive_property->set_edm_name( 'BusArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WBS_ELEM' ).
    lo_primitive_property->set_edm_name( 'WbsElem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 24 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CTR' ).
    lo_primitive_property->set_edm_name( 'ProfitCtr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAGE_GROUP' ).
    lo_primitive_property->set_edm_name( 'WageGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FWORDER' ).
    lo_primitive_property->set_edm_name( 'FWOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'CostElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SPARE_PARTS' ).
    lo_primitive_property->set_edm_name( 'SpareParts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MY_WORK' ).
    lo_primitive_property->set_edm_name( 'MyWork' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TWORK' ).
    lo_primitive_property->set_edm_name( 'TWork' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'T' ).
    lo_primitive_property->set_edm_name( 'T' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONF_START_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'confStartDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPLETED_ON' ).
    lo_primitive_property->set_edm_name( 'CompletedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPER_CODE' ).
    lo_primitive_property->set_edm_name( 'OperCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONF_LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'ConfLongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONF_SHORT_TEXT' ).
    lo_primitive_property->set_edm_name( 'ConfShortText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST' ).
    lo_primitive_property->set_edm_name( 'TaskList' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OP_TYPE' ).
    lo_primitive_property->set_edm_name( 'OpType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SYSTEMSTATUSTEXT' ).
    lo_primitive_property->set_edm_name( 'systemstatustext' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ActStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_START_TIME' ).
    lo_primitive_property->set_edm_name( 'ActStartTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ActEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACT_END_TIME' ).
    lo_primitive_property->set_edm_name( 'ActEndTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE' ).
    lo_primitive_property->set_edm_name( 'Price' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AGREEMENT' ).
    lo_primitive_property->set_edm_name( 'Agreement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AGREEMENT_ITEM' ).
    lo_primitive_property->set_edm_name( 'AgreementItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECIPIENT' ).
    lo_primitive_property->set_edm_name( 'Recipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUISITIONER' ).
    lo_primitive_property->set_edm_name( 'Requisitioner' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EARLY_START' ).
    lo_primitive_property->set_edm_name( 'EarlyStart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EARLY_END' ).
    lo_primitive_property->set_edm_name( 'EarlyEnd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_partner.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PARTNER'
                                    is_structure              = VALUE tys_partner( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Partner' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PARTNER_SET' ).
    lo_entity_set->set_edm_name( 'PartnerSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PART_CODE' ).
    lo_primitive_property->set_edm_name( 'PartCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSIGNED_TO' ).
    lo_primitive_property->set_edm_name( 'AssignedTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNERNAV' ).
    lo_primitive_property->set_edm_name( 'PARTNERNAV' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARTNEROLD' ).
    lo_primitive_property->set_edm_name( 'PARTNEROLD' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_plant_lookup.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PLANT_LOOKUP'
                                    is_structure              = VALUE tys_plant_lookup( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Plant_lookup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PLANT_LOOKUP_SET' ).
    lo_entity_set->set_edm_name( 'Plant_lookupSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATNR' ).
    lo_primitive_property->set_edm_name( 'matnr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_pmactivity_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PMACTIVITY_TYPE'
                                    is_structure              = VALUE tys_pmactivity_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PMActivityType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PMACTIVITY_TYPE_SET' ).
    lo_entity_set->set_edm_name( 'PMActivityTypeSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUART' ).
    lo_primitive_property->set_edm_name( 'Auart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ILART' ).
    lo_primitive_property->set_edm_name( 'Ilart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ILARTX' ).
    lo_primitive_property->set_edm_name( 'Ilartx' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_reforder.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'REFORDER'
                                    is_structure              = VALUE tys_reforder( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Reforder' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'REFORDER_SET' ).
    lo_entity_set->set_edm_name( 'ReforderSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'ORDERID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'REQUIREMENT_QUANTITY' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 13 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'REQUIREMENT_QUANTITY_UNIT' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY_UNI_2' ).
    lo_primitive_property->set_edm_name( 'REQUIREMENT_QUANTITY_UNIT_ISO' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_TO' ).
    lo_primitive_property->set_edm_name( 'PLANT_TO' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STGE_LOC_TO' ).
    lo_primitive_property->set_edm_name( 'STGE_LOC_TO' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH_TO' ).
    lo_primitive_property->set_edm_name( 'BATCH_TO' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VAL_TYPE_TO' ).
    lo_primitive_property->set_edm_name( 'VAL_TYPE_TO' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_TO' ).
    lo_primitive_property->set_edm_name( 'MATERIAL_TO' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT_FROM' ).
    lo_primitive_property->set_edm_name( 'PLANT_FROM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STGE_LOC_FROM' ).
    lo_primitive_property->set_edm_name( 'STGE_LOC_FROM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH_FROM' ).
    lo_primitive_property->set_edm_name( 'BATCH_FROM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VAL_TYPE_FROM' ).
    lo_primitive_property->set_edm_name( 'VAL_TYPE_FROM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_TO_EXTERNAL' ).
    lo_primitive_property->set_edm_name( 'MATERIAL_TO_EXTERNAL' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_TO_GUID' ).
    lo_primitive_property->set_edm_name( 'MATERIAL_TO_GUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_TO_VERSION' ).
    lo_primitive_property->set_edm_name( 'MATERIAL_TO_VERSION' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_TO_LONG' ).
    lo_primitive_property->set_edm_name( 'MATERIAL_TO_LONG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_FROM' ).
    lo_primitive_property->set_edm_name( 'MATERIAL_FROM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_reserved_spareparts.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'RESERVED_SPAREPARTS'
                                    is_structure              = VALUE tys_reserved_spareparts( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ReservedSpareparts' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'RESERVED_SPAREPARTS_SET' ).
    lo_entity_set->set_edm_name( 'ReservedSparepartsSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTIVITY' ).
    lo_primitive_property->set_edm_name( 'Activity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'OrderId' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PSTNG_DATE' ).
    lo_primitive_property->set_edm_name( 'PstngDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_DATE' ).
    lo_primitive_property->set_edm_name( 'DocDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_ID' ).
    lo_primitive_property->set_edm_name( 'MaterialId' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RES_ITEM' ).
    lo_primitive_property->set_edm_name( 'ResItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAT_DESC' ).
    lo_primitive_property->set_edm_name( 'MatDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'RequirementQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'RequirementQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIREMENT_QUANTITY_UNI_2' ).
    lo_primitive_property->set_edm_name( 'RequirementQuantityUnitIso' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STGE_LOC' ).
    lo_primitive_property->set_edm_name( 'StgeLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_AVAIL' ).
    lo_primitive_property->set_edm_name( 'StockAvail' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BIN' ).
    lo_primitive_property->set_edm_name( 'Bin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ISSUE_QTY' ).
    lo_primitive_property->set_edm_name( 'IssueQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_STATUS' ).
    lo_primitive_property->set_edm_name( 'OrderStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNRES_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'UnresQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_FROM' ).
    lo_primitive_property->set_edm_name( 'StartDateFrom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE_TO' ).
    lo_primitive_property->set_edm_name( 'StartDateTo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RES_NO' ).
    lo_primitive_property->set_edm_name( 'ResNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOP' ).
    lo_primitive_property->set_edm_name( 'Top' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SKIP' ).
    lo_primitive_property->set_edm_name( 'Skip' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_service_pack_no.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SERVICE_PACK_NO'
                                    is_structure              = VALUE tys_service_pack_no( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ServicePackNo' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SERVICE_PACK_NO_SET' ).
    lo_entity_set->set_edm_name( 'ServicePackNoSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERVICE_NO' ).
    lo_primitive_property->set_edm_name( 'ServiceNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_stor_loc_lookup.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'STOR_LOC_LOOKUP'
                                    is_structure              = VALUE tys_stor_loc_lookup( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Stor_Loc_Lookup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'STOR_LOC_LOOKUP_SET' ).
    lo_entity_set->set_edm_name( 'Stor_Loc_LookupSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATNR' ).
    lo_primitive_property->set_edm_name( 'matnr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOR_LOC' ).
    lo_primitive_property->set_edm_name( 'Stor_Loc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_system_status.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SYSTEM_STATUS'
                                    is_structure              = VALUE tys_system_status( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SystemStatus' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SYSTEM_STATUS_SET' ).
    lo_entity_set->set_edm_name( 'SystemStatusSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_task_group.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'TASK_GROUP'
                                    is_structure              = VALUE tys_task_group( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'TaskGroup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'TASK_GROUP_SET' ).
    lo_entity_set->set_edm_name( 'TaskGroupSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GROUP' ).
    lo_primitive_property->set_edm_name( 'Task_List_Group' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROUP_COUNTER' ).
    lo_primitive_property->set_edm_name( 'Group_Counter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'Task_List_Type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETE_OLD_OPERATION' ).
    lo_primitive_property->set_edm_name( 'Delete_Old_Operation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPERATION' ).
    lo_primitive_property->set_edm_name( 'Operation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_MODE' ).
    lo_primitive_property->set_edm_name( 'TaskMode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_user_detail.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'USER_DETAIL'
                                    is_structure              = VALUE tys_user_detail( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'UserDetail' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'USER_DETAIL_SET' ).
    lo_entity_set->set_edm_name( 'UserDetailSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNAME' ).
    lo_primitive_property->set_edm_name( 'UName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PASSWORD' ).
    lo_primitive_property->set_edm_name( 'Password' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 132 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_user_status.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'USER_STATUS'
                                    is_structure              = VALUE tys_user_status( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'UserStatus' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'USER_STATUS_SET' ).
    lo_entity_set->set_edm_name( 'UserStatusSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_ID' ).
    lo_primitive_property->set_edm_name( 'orderId' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATUS_NO' ).
    lo_primitive_property->set_edm_name( 'statusNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATUS_TYPE' ).
    lo_primitive_property->set_edm_name( 'statusType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STATUS_TEXT' ).
    lo_primitive_property->set_edm_name( 'statusText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENT_STATUS' ).
    lo_primitive_property->set_edm_name( 'currentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_user_staus_header.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'USER_STAUS_HEADER'
                                    is_structure              = VALUE tys_user_staus_header( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'UserStausHeader' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'USER_STAUS_HEADER_SET' ).
    lo_entity_set->set_edm_name( 'UserStausHeaderSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUMMY' ).
    lo_primitive_property->set_edm_name( 'Dummy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'USER_STATUS_HEADER_NAV' ).
    lo_navigation_property->set_edm_name( 'UserStatusHeaderNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'USER_STATUS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'USER_STAT_HEADE_TO_MESSAG' ).
    lo_navigation_property->set_edm_name( 'UserStatHeadeToMessagNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MESSAGES' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_valuation_type_look_up.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'VALUATION_TYPE_LOOK_UP'
                                    is_structure              = VALUE tys_valuation_type_look_up( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Valuation_type_LookUp' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'VALUATION_TYPE_LOOK_UP_SET' ).
    lo_entity_set->set_edm_name( 'Valuation_type_LookUpSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_workorder_cost.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WORKORDER_COST'
                                    is_structure              = VALUE tys_workorder_cost( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WorkorderCost' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'WORKORDER_COST_SET' ).
    lo_entity_set->set_edm_name( 'WorkorderCostSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUE_CAT' ).
    lo_primitive_property->set_edm_name( 'ValueCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUE_CAT_DESC' ).
    lo_primitive_property->set_edm_name( 'ValueCatDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTUAL_COST' ).
    lo_primitive_property->set_edm_name( 'ActualCost' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_COST' ).
    lo_primitive_property->set_edm_name( 'PlanCost' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EST_COST' ).
    lo_primitive_property->set_edm_name( 'EstCost' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTUAL_COST_CAT' ).
    lo_primitive_property->set_edm_name( 'ActualCostCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_COST_CAT' ).
    lo_primitive_property->set_edm_name( 'PlanCostCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EST_COST_CAT' ).
    lo_primitive_property->set_edm_name( 'EstCostCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_ACTUAL_COST' ).
    lo_primitive_property->set_edm_name( 'TotalActualCost' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_PLAN_COST' ).
    lo_primitive_property->set_edm_name( 'TotalPlanCost' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_EST_COST' ).
    lo_primitive_property->set_edm_name( 'TotalEstCost' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

  ENDMETHOD.


  METHOD def_workorder_header.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WORKORDER_HEADER'
                                    is_structure              = VALUE tys_workorder_header( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WorkorderHeader' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'WORKORDER_HEADER_SET' ).
    lo_entity_set->set_edm_name( 'WorkorderHeaderSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPER_ORDER' ).
    lo_primitive_property->set_edm_name( 'SuperOrder' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_TYPE' ).
    lo_primitive_property->set_edm_name( 'OrderType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANPLANT' ).
    lo_primitive_property->set_edm_name( 'Planplant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MN_WK_CTR' ).
    lo_primitive_property->set_edm_name( 'MnWkCtr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PMACTTYPE' ).
    lo_primitive_property->set_edm_name( 'Pmacttype' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANGROUP' ).
    lo_primitive_property->set_edm_name( 'Plangroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SYSTCOND' ).
    lo_primitive_property->set_edm_name( 'Systcond' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUNCT_LOC' ).
    lo_primitive_property->set_edm_name( 'FunctLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIPMENT' ).
    lo_primitive_property->set_edm_name( 'Equipment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY' ).
    lo_primitive_property->set_edm_name( 'Assembly' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTPLANT' ).
    lo_primitive_property->set_edm_name( 'Maintplant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHORT_TEXT' ).
    lo_primitive_property->set_edm_name( 'ShortText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRIORITY' ).
    lo_primitive_property->set_edm_name( 'Priority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_START_DATE' ).
    lo_primitive_property->set_edm_name( 'PlanStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_END_DATE' ).
    lo_primitive_property->set_edm_name( 'PlanEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NOTIF_NO' ).
    lo_primitive_property->set_edm_name( 'NotifNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'LongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSET_ID' ).
    lo_primitive_property->set_edm_name( 'AssetId' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATE_CREATED' ).
    lo_primitive_property->set_edm_name( 'DateCreated' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAL_FUN_START_DATE' ).
    lo_primitive_property->set_edm_name( 'MalFunStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAL_FUN_START_TIME' ).
    lo_primitive_property->set_edm_name( 'MalFunStartTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPORTED_BY' ).
    lo_primitive_property->set_edm_name( 'ReportedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_STATUS' ).
    lo_primitive_property->set_edm_name( 'OrderStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SET_ORDER_STATUS' ).
    lo_primitive_property->set_edm_name( 'SetOrderStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EQUIP_DESC' ).
    lo_primitive_property->set_edm_name( 'EquipDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BREAKDOWN' ).
    lo_primitive_property->set_edm_name( 'Breakdown' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOWNTIME' ).
    lo_primitive_property->set_edm_name( 'Downtime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSECODE' ).
    lo_primitive_property->set_edm_name( 'Causecode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DAMAGECODE' ).
    lo_primitive_property->set_edm_name( 'Damagecode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DAMAGE_GROUP' ).
    lo_primitive_property->set_edm_name( 'DamageGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAUSE_GROUP' ).
    lo_primitive_property->set_edm_name( 'CauseGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USER_STATUS' ).
    lo_primitive_property->set_edm_name( 'userStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'USER_STATUS_NO' ).
    lo_primitive_property->set_edm_name( 'userStatusNo' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_GMP' ).
    lo_primitive_property->set_edm_name( 'isGMP' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTUAL_START' ).
    lo_primitive_property->set_edm_name( 'actualStart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRINTSTATUS' ).
    lo_primitive_property->set_edm_name( 'printstatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TECOREF_DATE' ).
    lo_primitive_property->set_edm_name( 'TecorefDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TECOREF_TIME' ).
    lo_primitive_property->set_edm_name( 'TecorefTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACTUAL_END' ).
    lo_primitive_property->set_edm_name( 'actualEnd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RELEASE_DATE' ).
    lo_primitive_property->set_edm_name( 'releaseDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GROUP' ).
    lo_primitive_property->set_edm_name( 'TaskListGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'TaskListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GCOUNTER' ).
    lo_primitive_property->set_edm_name( 'TaskListGCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABC_INDC' ).
    lo_primitive_property->set_edm_name( 'AbcIndc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABC_TXT' ).
    lo_primitive_property->set_edm_name( 'AbcTxt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTH_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PMACTTYPE_DESC' ).
    lo_primitive_property->set_edm_name( 'PmacttypeDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAL_FUN_END_DATE' ).
    lo_primitive_property->set_edm_name( 'MalFunEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAL_FUN_END_TIME' ).
    lo_primitive_property->set_edm_name( 'MalFunEndTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSPLOT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'InsplotNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'DELETEOPNAV' ).
    lo_navigation_property->set_edm_name( 'DELETEOPNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'DELETE_OP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOCOMPONENTNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOCOMPONENTNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'COMPONENT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOMESSAGENAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOMESSAGENAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MESSAGES' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTONOTIFNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTONOTIFNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EXISTIST_NOTIF' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOOPERATIONSNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOOPERATIONSNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'OPERATIONS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOPARTNERNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOPARTNERNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PARTNER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOTASKGROUPNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOTASKGROUPNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'TASK_GROUP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOUSERDETAILNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOUSERDETAILNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'USER_DETAIL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADERTOUSERSTATUSNAV' ).
    lo_navigation_property->set_edm_name( 'HEADERTOUSERSTATUSNAV' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'USER_STATUS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADER_TO_EXT_SRV_NAV' ).
    lo_navigation_property->set_edm_name( 'HeaderToExtSrvNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'EXTERNAL_SERVICE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'HEADER_TO_REFORDER_NAV' ).
    lo_navigation_property->set_edm_name( 'HeaderToReforderNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'REFORDER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'WORKORDER_COST_NAV' ).
    lo_navigation_property->set_edm_name( 'WorkorderCostNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'WORKORDER_COST' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_work_order_update.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WORK_ORDER_UPDATE'
                                    is_structure              = VALUE tys_work_order_update( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WorkOrderUpdate' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'WORK_ORDER_UPDATE_SET' ).
    lo_entity_set->set_edm_name( 'WorkOrderUpdateSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDERID' ).
    lo_primitive_property->set_edm_name( 'Orderid' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MN_WK_CTR' ).
    lo_primitive_property->set_edm_name( 'MnWkCtr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE' ).
    lo_primitive_property->set_edm_name( 'StartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FINISH_DATE' ).
    lo_primitive_property->set_edm_name( 'FinishDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'WO_UPDATE_HEADER' ).
    lo_navigation_property->set_edm_name( 'WoUpdateHeader' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'WO_UPDATE_HEADER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_wo_update_header.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WO_UPDATE_HEADER'
                                    is_structure              = VALUE tys_wo_update_header( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WoUpdateHeader' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'WO_UPDATE_HEADER_SET' ).
    lo_entity_set->set_edm_name( 'WoUpdateHeaderSet' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DUMMY' ).
    lo_primitive_property->set_edm_name( 'Dummy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'WORK_ORDER_UPDATE_NAV' ).
    lo_navigation_property->set_edm_name( 'WorkOrderUpdateNav' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'WORK_ORDER_UPDATE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


ENDCLASS.
