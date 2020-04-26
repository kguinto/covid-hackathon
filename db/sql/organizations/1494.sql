
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
      'HealthCore Clinic',
      '2707 E 21st St N
Wichita, KS 67214',
      'Wichita',
      'KS',
      'Mail to: HealthCore Clinic 2707 E. 21st St. N., Wichita, KS 67214  ATTN: Davna Gould',
      'Yes',
      '37.7224141',
      '-97.3051436'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'HealthCore Clinic'
        AND o.latitude = '37.7224141'
        AND o.longitude = '-97.3051436'));

COMMIT;
