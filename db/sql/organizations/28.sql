
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
      'Kaiser Permanente - Modesto',
      '4601 Dale Rd
Modesto, CA 95356',
      'Modesto',
      'CA',
      'TBD',
      'Unknown',
      '37.7064351',
      '-121.0525295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Unsure',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Modesto'
        AND o.latitude = '37.7064351'
        AND o.longitude = '-121.0525295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('just saw address on an FB post',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Modesto'
        AND o.latitude = '37.7064351'
        AND o.longitude = '-121.0525295'));

COMMIT;
