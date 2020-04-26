
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
      'UC Davis Health Supply Chain Management',
      '7301 14th Ave
Sacramento, CA 95820',
      'Sacramento',
      'CA',
      'Central Processing Attention: Danielle Wilkerson',
      'Currently accepting new and unused supplies as of 3/25/20',
      '38.5404485',
      '-121.417929'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR/PAPR machines and disposables; flocked swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Health Supply Chain Management'
        AND o.latitude = '38.5404485'
        AND o.longitude = '-121.417929'));

COMMIT;
