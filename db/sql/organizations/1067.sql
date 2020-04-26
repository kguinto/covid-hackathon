
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
      'Community Options New York, Inc.',
      '216 W Manlius St
East Syracuse, NY 13057',
      'East Syracuse',
      'NY',
      '216 West Manlius Street',
      'Yes',
      '43.0646073',
      '-76.0737733'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options New York, Inc.'
        AND o.latitude = '43.0646073'
        AND o.longitude = '-76.0737733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options New York, Inc.'
        AND o.latitude = '43.0646073'
        AND o.longitude = '-76.0737733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options New York, Inc.'
        AND o.latitude = '43.0646073'
        AND o.longitude = '-76.0737733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options New York, Inc.'
        AND o.latitude = '43.0646073'
        AND o.longitude = '-76.0737733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options New York, Inc.'
        AND o.latitude = '43.0646073'
        AND o.longitude = '-76.0737733'));

COMMIT;
