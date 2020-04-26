
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
      'Lions Gate (nursing home, assisted living)',
      '1100 Laurel Oak Rd
Voorhees Township, NJ 08043',
      'Voorhees',
      'NJ',
      'Come to lobby and use lobby phone to request instructions',
      'Case by case',
      '39.8488857',
      '-74.9733892'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Homemade masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lions Gate (nursing home, assisted living)'
        AND o.latitude = '39.8488857'
        AND o.longitude = '-74.9733892'));

COMMIT;
