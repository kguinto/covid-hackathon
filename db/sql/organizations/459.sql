
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
      'Xpress Wellness Urgent Care',
      '1303 N Washington Ave
Weatherford, OK 73096',
      'Weatherford ',
      'OK',
      'Attn: Beverly Aiello',
      'Yes',
      '35.53884',
      '-98.6947452'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Xpress Wellness Urgent Care'
        AND o.latitude = '35.53884'
        AND o.longitude = '-98.6947452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Xpress Wellness Urgent Care'
        AND o.latitude = '35.53884'
        AND o.longitude = '-98.6947452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Xpress Wellness Urgent Care'
        AND o.latitude = '35.53884'
        AND o.longitude = '-98.6947452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Xpress Wellness Urgent Care'
        AND o.latitude = '35.53884'
        AND o.longitude = '-98.6947452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Xpress Wellness Urgent Care'
        AND o.latitude = '35.53884'
        AND o.longitude = '-98.6947452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Xpress Wellness Urgent Care'
        AND o.latitude = '35.53884'
        AND o.longitude = '-98.6947452'));

COMMIT;
