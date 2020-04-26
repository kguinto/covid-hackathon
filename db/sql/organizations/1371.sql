
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
      'Perry Community Hospital ',
      '2718 Squirrel Hollow Dr
Linden, TN 37096',
      'Linden',
      'TN',
      'ER staff will accept',
      'Yes',
      '35.5921462',
      '-87.8637988'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Desperately need floor Disinfectant',
    (SELECT id FROM organizations o
      WHERE o.name = 'Perry Community Hospital '
        AND o.latitude = '35.5921462'
        AND o.longitude = '-87.8637988'));

COMMIT;
