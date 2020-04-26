
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
      'Life Care Center of Melbourne',
      ' 606 E Sheridan Rd
Melbourne, FL 32901',
      'Melbourne',
      'FL',
      'Curbside',
      'Yes',
      '28.0891411',
      '-80.6116166'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Life Care Center of Melbourne'
        AND o.latitude = '28.0891411'
        AND o.longitude = '-80.6116166'));

COMMIT;
