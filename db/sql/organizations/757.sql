
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
      'Arizona Medicos, Inc',
      '120 W Calle de Las Tiendas 
Green Valley AZ, 85614',
      'Green Valley',
      'AZ',
      '',
      'Yes',
      '31.8989898',
      '-110.9894565'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Medicos, Inc'
        AND o.latitude = '31.8989898'
        AND o.longitude = '-110.9894565'));

COMMIT;
