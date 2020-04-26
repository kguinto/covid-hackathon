
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
      'East Georgia Regional Medical Center',
      '310 E Park Ave
Savannah, GA 31401',
      'Savannah',
      'GA',
      'Ship or drop off. Attn: Dr. Jeffrey Millard',
      'Only if new.',
      '32.064019',
      '-81.0934065'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Georgia Regional Medical Center'
        AND o.latitude = '32.064019'
        AND o.longitude = '-81.0934065'));

COMMIT;
