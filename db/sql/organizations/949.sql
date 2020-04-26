
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
      'Delaware County Memorial Hospital (DCMH)',
      '501 N Lansdowne Ave
Drexel Hill, PA 19026',
      'Drexel Hill',
      'PA',
      'Curbside',
      'Yes',
      '39.9546974',
      '-75.283626'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delaware County Memorial Hospital (DCMH)'
        AND o.latitude = '39.9546974'
        AND o.longitude = '-75.283626'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Delaware County Memorial Hospital (DCMH)'
        AND o.latitude = '39.9546974'
        AND o.longitude = '-75.283626'));

COMMIT;
