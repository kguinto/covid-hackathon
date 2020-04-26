
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
      'Piedmont Columbus Regional John B. Amos Cancer Center',
      '1831 5th Ave
Columbus, GA 31904',
      'Columbus',
      'GA',
      'Mail',
      '',
      '32.4808354',
      '-84.9867808'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Piedmont Columbus Regional John B. Amos Cancer Center'
        AND o.latitude = '32.4808354'
        AND o.longitude = '-84.9867808'));

COMMIT;
