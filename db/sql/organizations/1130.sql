
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
      'East Hampton Village Ambulance Association',
      '1 Cedar St
East Hampton, NY 11937',
      'East Hampton',
      'NY',
      '1 Cedar Street',
      'Yes',
      '40.9693839',
      '-72.1831234'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Hampton Village Ambulance Association'
        AND o.latitude = '40.9693839'
        AND o.longitude = '-72.1831234'));

COMMIT;
