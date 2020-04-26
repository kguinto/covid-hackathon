
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
      '1400 Locust St #2192
Pittsburgh, PA 15219',
      'Pittsburgh',
      'PA',
      'If mailed use above address.  If curbside, please contact Bryce Bernard at 412.944.3486 or brycebernard@icloud.com to coordinate someone meeting you',
      'Yes',
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
    ('Disposable booties',
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
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Mercy'
        AND o.latitude = '40.4362085'
        AND o.longitude = '-79.9856207'));

COMMIT;
