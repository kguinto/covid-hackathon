
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
      'Mount Sinai Hospital - Klingenstein Pavilion',
      '1176 5th Ave
New York, NY 10029',
      'New York - Manhattan',
      'NY',
      'Have front desk security call KP4',
      'No',
      '40.7895169',
      '-73.9540616'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital - Klingenstein Pavilion'
        AND o.latitude = '40.7895169'
        AND o.longitude = '-73.9540616'));

COMMIT;
