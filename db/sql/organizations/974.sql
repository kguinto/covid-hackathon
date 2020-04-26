
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
      'Rapid Med Urgent Care',
      '8501 Justin Road/FM 407
Highland Village, TX 75077',
      'Highland Village',
      'TX',
      '',
      'Yes',
      '33.0734202',
      '-97.123959'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0734202'
        AND o.longitude = '-97.123959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0734202'
        AND o.longitude = '-97.123959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0734202'
        AND o.longitude = '-97.123959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0734202'
        AND o.longitude = '-97.123959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0734202'
        AND o.longitude = '-97.123959'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rapid Med Urgent Care'
        AND o.latitude = '33.0734202'
        AND o.longitude = '-97.123959'));

COMMIT;
