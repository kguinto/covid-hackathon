
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
      'Hillside Health & Rehab',
      '4720 23rd Ave
Missoula, MT 59803',
      'Missoula',
      'MT',
      'leave at front desk',
      'Yes',
      '46.8275642',
      '-114.034209'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hillside Health & Rehab'
        AND o.latitude = '46.8275642'
        AND o.longitude = '-114.034209'));

COMMIT;
