
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
      'Fitzgibbon Hospital',
      '2305 US-65
Marshall, MO 65340',
      'Marshall',
      'MO',
      'Call (660)831-3261 to arrange a time for pickup.
(You will be met in a facility parking lot at a pre-arranged time.)',
      '',
      '39.091782',
      '-93.212758'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('home-made masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fitzgibbon Hospital'
        AND o.latitude = '39.091782'
        AND o.longitude = '-93.212758'));

COMMIT;
