
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
      'UPMC Mercy',
      '1400 Locust St
Pittsburgh, PA 15219',
      'Pittsburgh ',
      'PA',
      'Emergency Room',
      'No',
      '40.4362085',
      '-79.9856207'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

COMMIT;
