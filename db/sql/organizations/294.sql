
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
      'AFC Urgent Care',
      '276 Passaic Ave Unit A
Kearny, NJ 07032',
      'Kearny',
      'NJ',
      'Unknown',
      'Unsure',
      '40.7618061',
      '-74.1589881'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.7618061'
        AND o.longitude = '-74.1589881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.7618061'
        AND o.longitude = '-74.1589881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AFC Urgent Care'
        AND o.latitude = '40.7618061'
        AND o.longitude = '-74.1589881'));

COMMIT;
