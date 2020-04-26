
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
      'North Kansas City Hospital',
      '2800 Clay Edwards Dr
North Kansas City, MO 64116',
      'North Kansas City',
      'MO',
      'Contact robert.schlicht@nkch.org',
      'Unknown',
      '39.1495404',
      '-94.551452'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Kansas City Hospital'
        AND o.latitude = '39.1495404'
        AND o.longitude = '-94.551452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Kansas City Hospital'
        AND o.latitude = '39.1495404'
        AND o.longitude = '-94.551452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Kansas City Hospital'
        AND o.latitude = '39.1495404'
        AND o.longitude = '-94.551452'));

COMMIT;
