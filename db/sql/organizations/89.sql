
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
      'CentraState Medical Center',
      '901 W Main St
Freehold Township, NJ 07728',
      'Freehold',
      'NJ',
      'Attn: Medical staff office, main entrance',
      'unknown',
      '40.2376248',
      '-74.3125855'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CentraState Medical Center'
        AND o.latitude = '40.2376248'
        AND o.longitude = '-74.3125855'));

COMMIT;
