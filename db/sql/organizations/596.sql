
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
      'Island Doctor',
      '950 N Collier Blvd # 308
Marco Island, FL 34145',
      'Marco Island',
      'FL',
      '',
      'Unsure',
      '25.9548707',
      '-81.7244154'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Island Doctor'
        AND o.latitude = '25.9548707'
        AND o.longitude = '-81.7244154'));

COMMIT;
