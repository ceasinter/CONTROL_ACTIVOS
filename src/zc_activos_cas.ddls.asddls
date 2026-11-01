@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Consumption Activos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_activos_cas
  provider contract transactional_query
  as projection on zr_activos_cas as Activos
{
  key AssetUUID,
      AssetCode,
      AssetTypeUUID,
      Description,
      CategoryUUID,
      Manufacturer,
      Model,
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
      _Mantenimiento: redirected to composition child zc_mnt_activos_cas
}
