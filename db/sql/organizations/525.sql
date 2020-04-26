
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
      'Henry Ford Hospital',
      '2799 W Grand Blvd
Detroit, MI 48202',
      'Detroit',
      'MI',
      'Mail or drop off',
      'Unsure',
      '42.3678016',
      '-83.0854662'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Henry Ford Hospital'
        AND o.latitude = '42.3678016'
        AND o.longitude = '-83.0854662'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Henry Ford Hospital'
        AND o.latitude = '42.3678016'
        AND o.longitude = '-83.0854662'));

COMMIT;
