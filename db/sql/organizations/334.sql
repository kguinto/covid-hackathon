
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
      'WakeMed Hospital',
      '3000 New Bern Ave
Raleigh, NC 27610',
      'Raleigh',
      'NC',
      '',
      'Not sure',
      '35.784684',
      '-78.5878628'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'WakeMed Hospital'
        AND o.latitude = '35.784684'
        AND o.longitude = '-78.5878628'));

COMMIT;
