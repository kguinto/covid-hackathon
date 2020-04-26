
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
      'Boulder Community Health Foothills',
      '4747 Arapahoe Ave
Boulder, CO 80303',
      'Boulder',
      'CO',
      'Dropoff is at main entrance, not ER/emergency department entrance',
      'No',
      '40.0163695',
      '-105.2363882'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boulder Community Health Foothills'
        AND o.latitude = '40.0163695'
        AND o.longitude = '-105.2363882'));

COMMIT;
