
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
      'San Joaquin General Hospital',
      '500 W Hospital Rd
French Camp, CA 95231',
      'French Camp',
      'CA',
      'Attn: Spencer Wong, Family Medicine, Clinic 2',
      'Yes',
      '37.8867135',
      '-121.2826314'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfectant Wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR/PAPR machines and disposables',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Joaquin General Hospital'
        AND o.latitude = '37.8867135'
        AND o.longitude = '-121.2826314'));

COMMIT;
