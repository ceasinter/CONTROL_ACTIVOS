@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Consumption Mantenimiento'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity zc_mnt_activos_cas
  as projection on zr_mnt_activos_cas as Mantenimiento
{
  key MaintUUID,
      @Search.defaultSearchElement: true
      AssetUUID,
      @Search.defaultSearchElement: true
      MaintType,
      @Search.defaultSearchElement: true
      Description,
      ScheduleDate,
      CompletedDate,
      Technician,
      MaintStatus,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Cost,
      CurrencyCode,
      Notes,

      //      Etag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      /* Associations */
      _Activos : redirected to parent zc_activos_cas
}
