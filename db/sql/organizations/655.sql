
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
      'SUNY Downstate Medical Center',
      '445 Lenox Avenue
Brooklyn, NY 11203',
      'New York - Brooklyn',
      'NY',
      'Please contact Daniel Graves (daniel.graves@downstate.edu): Central Supply ',
      'No',
      '40.6550034',
      '-73.9442519'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'SUNY Downstate Medical Center'
        AND o.latitude = '40.6550034'
        AND o.longitude = '-73.9442519'));

COMMIT;
