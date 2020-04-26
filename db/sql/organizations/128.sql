
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
      'Esperanza Health Centers',
      '4700 S California Ave
Chicago, IL 60632',
      'Chicago',
      'IL',
      'Curbside',
      'Yes',
      '41.8080441',
      '-87.6947718'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Esperanza Health Centers'
        AND o.latitude = '41.8080441'
        AND o.longitude = '-87.6947718'));

COMMIT;
