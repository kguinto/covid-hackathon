
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
      'DanielCare, LLC - Home Health Agency',
      '1077 Bridgeport Ave
Shelton, CT 06484',
      'Shelton',
      'CT',
      'First Floor, Suite 101',
      'Yes',
      '41.2579868',
      '-73.1453713'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'DanielCare, LLC - Home Health Agency'
        AND o.latitude = '41.2579868'
        AND o.longitude = '-73.1453713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'DanielCare, LLC - Home Health Agency'
        AND o.latitude = '41.2579868'
        AND o.longitude = '-73.1453713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'DanielCare, LLC - Home Health Agency'
        AND o.latitude = '41.2579868'
        AND o.longitude = '-73.1453713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'DanielCare, LLC - Home Health Agency'
        AND o.latitude = '41.2579868'
        AND o.longitude = '-73.1453713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'DanielCare, LLC - Home Health Agency'
        AND o.latitude = '41.2579868'
        AND o.longitude = '-73.1453713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'DanielCare, LLC - Home Health Agency'
        AND o.latitude = '41.2579868'
        AND o.longitude = '-73.1453713'));

COMMIT;
