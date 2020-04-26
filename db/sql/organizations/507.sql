
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
      'Piedmont Henry Hospital',
      '1133 Eagles Landing Parkway
Stockbridge, GA 30281',
      'Stockbridge',
      'GA',
      '',
      'Unsure',
      '33.510351',
      '-84.2271743'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Henry Hospital'
        AND o.latitude = '33.510351'
        AND o.longitude = '-84.2271743'));

COMMIT;
