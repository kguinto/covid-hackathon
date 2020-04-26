
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
      'East Texas Community Health Services, Inc.',
      '1401 S University Dr
Nacogdoches, TX 75961',
      'Nacogdoches',
      'TX',
      'Contact Ray Hillhouse in the Administration building for exact drop off location ',
      'Yes',
      '31.5883295',
      '-94.646609'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Lysol Spray',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Peroxide',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('alcohol wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Texas Community Health Services, Inc.'
        AND o.latitude = '31.5883295'
        AND o.longitude = '-94.646609'));

COMMIT;
