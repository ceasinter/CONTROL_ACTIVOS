@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Interface Activos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zi_activos_cas
  provider contract transactional_interface
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

      //      Associations
      _Mantenimiento: redirected to composition child zi_mnt_activos_cas

}
