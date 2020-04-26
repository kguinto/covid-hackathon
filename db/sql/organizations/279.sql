
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
      'Kaiser Permanente - Downey',
      '9333 Imperial Hwy
Downey, CA 90242',
      'Downey',
      'CA',
      'Drop off at front desk, ER ambulance entrance.',
      'No',
      '33.9191528',
      '-118.1288176'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Downey'
        AND o.latitude = '33.9191528'
        AND o.longitude = '-118.1288176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Downey'
        AND o.latitude = '33.9191528'
        AND o.longitude = '-118.1288176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Downey'
        AND o.latitude = '33.9191528'
        AND o.longitude = '-118.1288176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Downey'
        AND o.latitude = '33.9191528'
        AND o.longitude = '-118.1288176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Downey'
        AND o.latitude = '33.9191528'
        AND o.longitude = '-118.1288176'));

COMMIT;
