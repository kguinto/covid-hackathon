
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
      'Community Options, Inc.',
      '950 Pennsylvania Blvd
Feasterville-Trevose, PA 19053',
      'Feasterville-Trevose',
      'PA',
      'Front door of the building',
      'No',
      '40.1539035',
      '-75.0108369'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.1539035'
        AND o.longitude = '-75.0108369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.1539035'
        AND o.longitude = '-75.0108369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.1539035'
        AND o.longitude = '-75.0108369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.1539035'
        AND o.longitude = '-75.0108369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.1539035'
        AND o.longitude = '-75.0108369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc.'
        AND o.latitude = '40.1539035'
        AND o.longitude = '-75.0108369'));

COMMIT;
