@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Root Mantenimiento'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    dataClass: #MIXED,
    serviceQuality: #X,
    sizeCategory: #S
}
define view entity zr_mnt_activos_cas
  as select from zmnt_activos_cas as Mantenimiento

  association to parent zr_activos_cas as _Activos on $projection.AssetUUID = _Activos.AssetUUID
{
  key maint_uuid            as MaintUUID,
      asset_parent_uuid     as AssetUUID,
      maint_type            as MaintType,
      description           as Description,
      schedule_date         as ScheduleDate,
      completed_date        as CompletedDate,
      technician            as Technician,
      maint_status          as MaintStatus,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cost                  as Cost,
      currency_code         as CurrencyCode,
      notes                 as Notes,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      //      ASOCIACIONES
      _Activos

}
