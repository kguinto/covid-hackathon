
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
      'Diligent Urgent Care',
      '3807 Bergenline Ave
Union City, NJ 07087',
      'Union City',
      'NJ',
      'Any method (more details needed)',
      'Unsure',
      '40.7755362',
      '-74.0268679'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Diligent Urgent Care'
        AND o.latitude = '40.7755362'
        AND o.longitude = '-74.0268679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Diligent Urgent Care'
        AND o.latitude = '40.7755362'
        AND o.longitude = '-74.0268679'));

COMMIT;
