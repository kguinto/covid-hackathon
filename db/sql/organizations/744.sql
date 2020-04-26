
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
      'Suncoast Urgent Care Centers, LLC',
      '10730 FL-54 #104
New Port Richey, FL 34655',
      'New Port Richey',
      'FL',
      'mail/ email for other options (more details needed)',
      'Unsure',
      '28.1937567',
      '-82.6370424'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suncoast Urgent Care Centers, LLC'
        AND o.latitude = '28.1937567'
        AND o.longitude = '-82.6370424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suncoast Urgent Care Centers, LLC'
        AND o.latitude = '28.1937567'
        AND o.longitude = '-82.6370424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suncoast Urgent Care Centers, LLC'
        AND o.latitude = '28.1937567'
        AND o.longitude = '-82.6370424'));

COMMIT;
