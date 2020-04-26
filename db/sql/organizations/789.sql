
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
      'Horizon Medical Center',
      '111 Hwy 70 
Dickson, TN 37055',
      'Dickson',
      'TN',
      'Mailing address ',
      'Yes',
      '36.086632',
      '-87.4146294'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Medical Center'
        AND o.latitude = '36.086632'
        AND o.longitude = '-87.4146294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Medical Center'
        AND o.latitude = '36.086632'
        AND o.longitude = '-87.4146294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Medical Center'
        AND o.latitude = '36.086632'
        AND o.longitude = '-87.4146294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Medical Center'
        AND o.latitude = '36.086632'
        AND o.longitude = '-87.4146294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Horizon Medical Center'
        AND o.latitude = '36.086632'
        AND o.longitude = '-87.4146294'));

COMMIT;
