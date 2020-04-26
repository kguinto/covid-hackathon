
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
      'Charles House Association',
      '7511 Sunrise Rd
Chapel Hill, NC 27514',
      'Chapel Hill',
      'NC',
      'In front of door near benches under the awning is fine.',
      'Yes',
      '35.9662997',
      '-79.0346882'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Ear Thermometer covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Charles House Association'
        AND o.latitude = '35.9662997'
        AND o.longitude = '-79.0346882'));

COMMIT;
