
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
      'Inspira Medical Center Vineland',
      '1505 West Sherman Ave.
Vineland, NJ 08360',
      'Vineland ',
      'NJ',
      'Main entrance, ED entrance ',
      'No',
      '39.44534',
      '-75.0584681'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Inspira Medical Center Vineland'
        AND o.latitude = '39.44534'
        AND o.longitude = '-75.0584681'));

COMMIT;
