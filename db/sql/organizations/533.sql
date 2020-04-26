
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
      'SunCrest Home Health',
      '3443 Dickerson Pike Suite 390
Nashville, TN 37207',
      'Nashville',
      'TN',
      'Drop off, pickup also available',
      'Unsure',
      '36.2450811',
      '-86.7507379'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SunCrest Home Health'
        AND o.latitude = '36.2450811'
        AND o.longitude = '-86.7507379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'SunCrest Home Health'
        AND o.latitude = '36.2450811'
        AND o.longitude = '-86.7507379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'SunCrest Home Health'
        AND o.latitude = '36.2450811'
        AND o.longitude = '-86.7507379'));

COMMIT;
