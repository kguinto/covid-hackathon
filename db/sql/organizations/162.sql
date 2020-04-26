
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
      'Unity Health Care, Inc.',
      '2122 Massachusetts Ave, NW, Apt 701
Washington, DC 20010',
      'Washington',
      'DC',
      'Unused masks only. Mail or dropoff. Coordinate w/Sarah Meyers, sarahmeyersppe@gmail.com.',
      'Only if new.',
      '38.9107611',
      '-77.0483054'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Health Care, Inc.'
        AND o.latitude = '38.9107611'
        AND o.longitude = '-77.0483054'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Health Care, Inc.'
        AND o.latitude = '38.9107611'
        AND o.longitude = '-77.0483054'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand-sewn face masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Health Care, Inc.'
        AND o.latitude = '38.9107611'
        AND o.longitude = '-77.0483054'));

COMMIT;
