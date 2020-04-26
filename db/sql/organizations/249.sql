
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
      'Sweetwater Pediatrics ',
      '1101 Gateway Blvd
Rock Springs WY, 82901',
      'Rock Springs ',
      'WY',
      '',
      'Yes',
      '41.5889347',
      '-109.2448436'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sweetwater Pediatrics '
        AND o.latitude = '41.5889347'
        AND o.longitude = '-109.2448436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sweetwater Pediatrics '
        AND o.latitude = '41.5889347'
        AND o.longitude = '-109.2448436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sweetwater Pediatrics '
        AND o.latitude = '41.5889347'
        AND o.longitude = '-109.2448436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sweetwater Pediatrics '
        AND o.latitude = '41.5889347'
        AND o.longitude = '-109.2448436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sweetwater Pediatrics '
        AND o.latitude = '41.5889347'
        AND o.longitude = '-109.2448436'));

COMMIT;
