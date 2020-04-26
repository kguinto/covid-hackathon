
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
      'J.D. McCarty Center',
      '2002 E Robinson St
Norman, OK 73071',
      'Norman',
      'OK',
      '',
      'unsure',
      '35.2320094',
      '-97.4074666'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'J.D. McCarty Center'
        AND o.latitude = '35.2320094'
        AND o.longitude = '-97.4074666'));

COMMIT;
