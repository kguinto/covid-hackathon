
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
      'North Seattle Pediatrics',
      '673 Tiffany Meadows Dr NE
Bainbridge Island, WA 98110',
      'Bainbridge Island',
      'WA',
      'Covered porch.  
Terri Graham, MD, FAAP owner North Seattle Pediatrics.  
Can drive to my practice in North Seattle epicenter',
      'Yes',
      '47.6294949',
      '-122.5087739'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Seattle Pediatrics'
        AND o.latitude = '47.6294949'
        AND o.longitude = '-122.5087739'));

COMMIT;
