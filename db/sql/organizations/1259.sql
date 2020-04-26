
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
      'AtlantiCare',
      '1406 Doughty Rd
Egg Harbor Township, NJ 08234',
      'Egg Harbor Township ',
      'NJ',
      'Please call 609-272-2400 prior. ',
      'Yes',
      '39.4083341',
      '-74.53873'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare'
        AND o.latitude = '39.4083341'
        AND o.longitude = '-74.53873'));

COMMIT;
