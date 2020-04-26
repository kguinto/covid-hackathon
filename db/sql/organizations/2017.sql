
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
      'Norwalk Hospital',
      '34 Stevens St
Norwalk, CT 06850',
      'Norwalk',
      'CT',
      'Sizzlegirl@optonline.net',
      'Yes',
      '41.1102265',
      '-73.4231998'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norwalk Hospital'
        AND o.latitude = '41.1102265'
        AND o.longitude = '-73.4231998'));

COMMIT;
