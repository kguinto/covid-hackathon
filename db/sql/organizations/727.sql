
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
      'Raymore Urgent Care',
      '242 Broadmoor Dr
Raymore, MO, 64083',
      'Raymore',
      'MO',
      'Shipping or delivery or pick up within reasonable distance (more details needed)',
      'Unsure',
      '38.8111286',
      '-94.469234'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raymore Urgent Care'
        AND o.latitude = '38.8111286'
        AND o.longitude = '-94.469234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raymore Urgent Care'
        AND o.latitude = '38.8111286'
        AND o.longitude = '-94.469234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raymore Urgent Care'
        AND o.latitude = '38.8111286'
        AND o.longitude = '-94.469234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raymore Urgent Care'
        AND o.latitude = '38.8111286'
        AND o.longitude = '-94.469234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('isolation gowns/hoods',
    (SELECT id FROM organizations o
      WHERE o.name = 'Raymore Urgent Care'
        AND o.latitude = '38.8111286'
        AND o.longitude = '-94.469234'));

COMMIT;
