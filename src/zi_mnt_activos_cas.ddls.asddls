@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Interface Mantenimiento'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_mnt_activos_cas
  as projection on zr_mnt_activos_cas as Mantenimiento
{
  key MaintUUID,
      AssetUUID,
      MaintType,
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
      _Activos: redirected to parent zi_activos_cas
}
