
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Excell Home Care and Hospice',
      '1200 SW 104th St Suite D
Oklahoma City, OK 73139',
      'Oklahoma City',
      'OK',
      'Leave at front door on east side of the building',
      'Yes',
      '35.3628867',
      '-97.5372058'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excell Home Care and Hospice'
        AND o.latitude = '35.3628867'
        AND o.longitude = '-97.5372058'));

COMMIT;
