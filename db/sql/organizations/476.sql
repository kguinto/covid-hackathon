
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
      'AMITA Health Alexian Brothers Medical Center Elk Grove Village',
      '800 Biesterfield Rd.
Elk Grove Village, IL 60007',
      'Elk Grove Village',
      'IL',
      '',
      '',
      '42.0050035',
      '-88.0159974'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Health Alexian Brothers Medical Center Elk Grove Village'
        AND o.latitude = '42.0050035'
        AND o.longitude = '-88.0159974'));

COMMIT;
