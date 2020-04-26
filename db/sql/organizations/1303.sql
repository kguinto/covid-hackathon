
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
      'Orthopedic Partners',
      '82 New Park Ave
North Franklin, CT 06254',
      'North Franklin',
      'CT',
      '',
      'Yes',
      '41.5723279',
      '-72.1233783'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orthopedic Partners'
        AND o.latitude = '41.5723279'
        AND o.longitude = '-72.1233783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orthopedic Partners'
        AND o.latitude = '41.5723279'
        AND o.longitude = '-72.1233783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orthopedic Partners'
        AND o.latitude = '41.5723279'
        AND o.longitude = '-72.1233783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orthopedic Partners'
        AND o.latitude = '41.5723279'
        AND o.longitude = '-72.1233783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orthopedic Partners'
        AND o.latitude = '41.5723279'
        AND o.longitude = '-72.1233783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orthopedic Partners'
        AND o.latitude = '41.5723279'
        AND o.longitude = '-72.1233783'));

COMMIT;
