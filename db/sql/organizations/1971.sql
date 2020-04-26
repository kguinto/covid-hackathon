
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
      'New York Presbyterian ',
      '528 E 68th St
New York, NY 10065',
      'New York',
      'NY',
      'Outside front door',
      'Yes',
      '40.7641552',
      '-73.9552558'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian '
        AND o.latitude = '40.7641552'
        AND o.longitude = '-73.9552558'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian '
        AND o.latitude = '40.7641552'
        AND o.longitude = '-73.9552558'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian '
        AND o.latitude = '40.7641552'
        AND o.longitude = '-73.9552558'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Presbyterian '
        AND o.latitude = '40.7641552'
        AND o.longitude = '-73.9552558'));

COMMIT;
