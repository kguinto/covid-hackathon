
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
      'My Doc Urgent Care',
      '210 Passaic St
Garfield, NJ 07026',
      'Garfield',
      'NJ',
      'Mail to our address.',
      'Unsure',
      '40.8669004',
      '-74.0982331'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'My Doc Urgent Care'
        AND o.latitude = '40.8669004'
        AND o.longitude = '-74.0982331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'My Doc Urgent Care'
        AND o.latitude = '40.8669004'
        AND o.longitude = '-74.0982331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'My Doc Urgent Care'
        AND o.latitude = '40.8669004'
        AND o.longitude = '-74.0982331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'My Doc Urgent Care'
        AND o.latitude = '40.8669004'
        AND o.longitude = '-74.0982331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'My Doc Urgent Care'
        AND o.latitude = '40.8669004'
        AND o.longitude = '-74.0982331'));

COMMIT;
