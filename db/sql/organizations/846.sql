
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
      'Stonerise Healthcare',
      '30 Mon General Drive
Morgantown, WV 26505',
      'Morgantown',
      'WV',
      'Building #2 Attention: Jessica Davis',
      'Yes',
      '39.6580821',
      '-79.9489688'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonerise Healthcare'
        AND o.latitude = '39.6580821'
        AND o.longitude = '-79.9489688'));

COMMIT;
