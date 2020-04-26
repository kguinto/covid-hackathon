
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
      'Newport News Pediatrics',
      '11760 Rock Landing Dr
Newport News, VA 23606',
      'Newport News',
      'VA',
      'Dr Goodwin ',
      'No',
      '37.0873753',
      '-76.4651166'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport News Pediatrics'
        AND o.latitude = '37.0873753'
        AND o.longitude = '-76.4651166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport News Pediatrics'
        AND o.latitude = '37.0873753'
        AND o.longitude = '-76.4651166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport News Pediatrics'
        AND o.latitude = '37.0873753'
        AND o.longitude = '-76.4651166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport News Pediatrics'
        AND o.latitude = '37.0873753'
        AND o.longitude = '-76.4651166'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport News Pediatrics'
        AND o.latitude = '37.0873753'
        AND o.longitude = '-76.4651166'));

COMMIT;
