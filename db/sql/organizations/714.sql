
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
      'Bristol Fire Department/EMA',
      '4 Annawamscutt Dr
Bristol, RI 02809',
      'Bristol',
      'RI',
      'Main Entrance M-F 8 to 4',
      'Yes',
      '41.686608',
      '-71.260594'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bristol Fire Department/EMA'
        AND o.latitude = '41.686608'
        AND o.longitude = '-71.260594'));

COMMIT;
