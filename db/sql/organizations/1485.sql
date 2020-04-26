
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
      'OhioHealth Grove City Hospital',
      '1375 Stringtown Rd
Grove City, OH 43123',
      'Grove City',
      'OH',
      'Please come to the main entrance and contact Heather Miller at 614-560-6161',
      'No',
      '39.8769064',
      '-83.0332417'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Grove City Hospital'
        AND o.latitude = '39.8769064'
        AND o.longitude = '-83.0332417'));

COMMIT;
