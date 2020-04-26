
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
      'Nuestra Clinica Del Valle',
      '801 W 1st St
San Juan, TX 78589',
      'San Juan',
      'TX',
      'Mail or Drop off ',
      'No',
      '26.1949607',
      '-98.1650549'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nuestra Clinica Del Valle'
        AND o.latitude = '26.1949607'
        AND o.longitude = '-98.1650549'));

COMMIT;
