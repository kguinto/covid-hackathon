
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
      'Notre Dame Health and Rehabilitation Center',
      '76 West Rocks Road
Norwalk, CT 06851',
      'Norwalk',
      'CT',
      'Loading Dock at the back of the building',
      'No',
      '41.1336143',
      '-73.4128183'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Notre Dame Health and Rehabilitation Center'
        AND o.latitude = '41.1336143'
        AND o.longitude = '-73.4128183'));

COMMIT;
