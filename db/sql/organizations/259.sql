
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
      'Mulberry Gardens Memory Care',
      '47 Steeplechase Ln
Munroe Falls, OH 44262',
      'Munroe Falls',
      'OH',
      '',
      'Yes',
      '41.1267139',
      '-81.4411175'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mulberry Gardens Memory Care'
        AND o.latitude = '41.1267139'
        AND o.longitude = '-81.4411175'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mulberry Gardens Memory Care'
        AND o.latitude = '41.1267139'
        AND o.longitude = '-81.4411175'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mulberry Gardens Memory Care'
        AND o.latitude = '41.1267139'
        AND o.longitude = '-81.4411175'));

COMMIT;
