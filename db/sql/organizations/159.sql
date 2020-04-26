
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
      'BayCare Medical Group',
      '3231 McMullen Booth Rd, FL1
Safety Harbor, FL 34695',
      'Safety Harbor',
      'FL',
      'Unused masks only. Mail or drop off, Attn: Moeen Khalil, Mease Countryside Hospital BMG Hospitalists.',
      'Only if new.',
      '28.0386135',
      '-82.7069436'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'BayCare Medical Group'
        AND o.latitude = '28.0386135'
        AND o.longitude = '-82.7069436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'BayCare Medical Group'
        AND o.latitude = '28.0386135'
        AND o.longitude = '-82.7069436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'BayCare Medical Group'
        AND o.latitude = '28.0386135'
        AND o.longitude = '-82.7069436'));

COMMIT;
