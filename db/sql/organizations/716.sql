
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
      'Jamaica Hospital Medical Center',
      '134-20 Jamaica Avenue
Jamaica, NY 11418',
      'Jamaica ',
      'NY',
      'Please call 718 -206-7800 upon arrival at this address. A staff member will meet them outside and log it in. Thank you',
      'Yes',
      '40.7022172',
      '-73.8180679'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jamaica Hospital Medical Center'
        AND o.latitude = '40.7022172'
        AND o.longitude = '-73.8180679'));

COMMIT;
