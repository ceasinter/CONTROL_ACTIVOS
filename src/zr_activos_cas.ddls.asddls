@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Root Activos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
dataClass: #MIXED,
serviceQuality: #X,
sizeCategory: #S
}
define root view entity zr_activos_cas
  as select from zactivos_cas as Activos

  composition [0..*] of zr_mnt_activos_cas as _Mantenimiento
  //  association [0..1] to zi_asset_types as _AssetTypes on $projection.AssetTypeUUID = _AssetTypes.AssetTypeUUID
  //  association [0..1] to zi_categories as _Categories on $projection.CategoryUUID = _Categories.CategoryUUID

{
  key asset_uuid            as AssetUUID,
      asset_code            as AssetCode,
      asset_type            as AssetTypeUUID,
      description           as Description,
      category              as CategoryUUID,
      manufacturer          as Manufacturer,
      model                 as Model,
      serial_number         as SerialNumber,
      acquisition_date      as AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      purchase_cost         as PurchaseCost,
      currency_code         as CurrencyCode,
      location              as Location,
      assigned_user         as AssignedUser,
      status                as Status,
      warranty_end_date     as WarrantyEndDate,
      criticality           as Criticality,
      last_maintenance_date as LastMaintenanceDate,
      next_maintenance_date as NextMaintenanceDate,

      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      //    Asociaciones
      _Mantenimiento
      //      _   AssetType,
      //       _Categories

}
