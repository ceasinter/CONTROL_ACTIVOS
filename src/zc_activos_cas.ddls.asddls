@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Consumption Activos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zc_activos_cas
  provider contract transactional_query
  as projection on zr_activos_cas as Activos
{
  key AssetUUID,
      @Search.defaultSearchElement: true
      AssetCode,
      @Search.defaultSearchElement: true
      AssetTypeUUID,
      @Search.defaultSearchElement: true
      Description,
      @Search.defaultSearchElement: true
      CategoryUUID,
      @Search.defaultSearchElement: true
      Manufacturer,
      @Search.defaultSearchElement: true
      Model,
      @Search.defaultSearchElement: true
      SerialNumber,
      AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      PurchaseCost,
      CurrencyCode,
      Location,
      AssignedUser,
      Status,
      WarrantyEndDate,
      Criticality,
      LastMaintenanceDate,
      NextMaintenanceDate,

      //      Etag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      
      /* Associations */
      _Mantenimiento : redirected to composition child zc_mnt_activos_cas
}
