
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
      'A Better Way Homecare LLC',
      '7317 Ribbon Ridge Ave
Las Vegas, NV 89129',
      'Las Vegas ',
      'NV',
      'Drop off at door',
      'Yes',
      '36.238833',
      '-115.253982'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Better Way Homecare LLC'
        AND o.latitude = '36.238833'
        AND o.longitude = '-115.253982'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Better Way Homecare LLC'
        AND o.latitude = '36.238833'
        AND o.longitude = '-115.253982'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Better Way Homecare LLC'
        AND o.latitude = '36.238833'
        AND o.longitude = '-115.253982'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Better Way Homecare LLC'
        AND o.latitude = '36.238833'
        AND o.longitude = '-115.253982'));

COMMIT;
