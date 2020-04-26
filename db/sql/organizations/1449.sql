
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
      'OhioHealth Marion Hospital',
      '1000 McKinley Park Dr
Marion, OH 43302',
      'Marion',
      'OH',
      'Please come to the main entrance and contact Beth Meadows at 740-360-1060',
      'No',
      '40.5712085',
      '-83.1289155'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Marion Hospital'
        AND o.latitude = '40.5712085'
        AND o.longitude = '-83.1289155'));

COMMIT;
