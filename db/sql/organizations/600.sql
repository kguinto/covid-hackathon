
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
      'Ocean Medical Center',
      '425 Jack Martin Blvd
Brick Township, NJ 08724',
      'Brick Township',
      'NJ',
      'Any method',
      'Unsure',
      '40.0770273',
      '-74.13152'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ocean Medical Center'
        AND o.latitude = '40.0770273'
        AND o.longitude = '-74.13152'));

COMMIT;
