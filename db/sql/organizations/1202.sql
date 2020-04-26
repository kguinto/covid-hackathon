
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
      'St Francis Medical Center',
      '601 Hamilton Ave
Trenton, NJ 08629',
      'Trenton',
      'NJ',
      'Mail in,  or deliver to Chambers Street Lobby Security Desk',
      'Yes',
      '40.2166342',
      '-74.741205'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '40.2166342'
        AND o.longitude = '-74.741205'));

COMMIT;
