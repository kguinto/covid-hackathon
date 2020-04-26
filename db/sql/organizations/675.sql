
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
      'LifeGuard Urgent Care',
      '491 Mariner Blvd
Spring Hill, FL 34609',
      'Spring Hill',
      'FL',
      '',
      'Yes',
      '28.4421201',
      '-82.5435259'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeGuard Urgent Care'
        AND o.latitude = '28.4421201'
        AND o.longitude = '-82.5435259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeGuard Urgent Care'
        AND o.latitude = '28.4421201'
        AND o.longitude = '-82.5435259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeGuard Urgent Care'
        AND o.latitude = '28.4421201'
        AND o.longitude = '-82.5435259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeGuard Urgent Care'
        AND o.latitude = '28.4421201'
        AND o.longitude = '-82.5435259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeGuard Urgent Care'
        AND o.latitude = '28.4421201'
        AND o.longitude = '-82.5435259'));

COMMIT;
