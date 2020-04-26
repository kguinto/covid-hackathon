
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
      'The Village Health & Rehab',
      '2651 South Ave W
Missoula, MT 59804',
      'Missoula',
      'MT',
      'leave at front desk',
      'Yes',
      '46.8480892',
      '-114.0449892'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Village Health & Rehab'
        AND o.latitude = '46.8480892'
        AND o.longitude = '-114.0449892'));

COMMIT;
