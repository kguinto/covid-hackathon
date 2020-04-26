
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
      'Home Health Agencies',
      '14545 Friar St
Van Nuys, CA 91411',
      'Van Nuys',
      'CA',
      'At suite 103',
      'Yes',
      '34.1859865',
      '-118.4504111'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health Agencies'
        AND o.latitude = '34.1859865'
        AND o.longitude = '-118.4504111'));

COMMIT;
