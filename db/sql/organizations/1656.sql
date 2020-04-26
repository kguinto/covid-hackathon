
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
      'Well Care Behavioral and Medical Clinic',
      '850 Mill St #100
Reno, NV 89502',
      'Reno',
      'NV',
      '850 Mill Street
Suite 100',
      'Yes',
      '39.5253212',
      '-119.799359'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Well Care Behavioral and Medical Clinic'
        AND o.latitude = '39.5253212'
        AND o.longitude = '-119.799359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Well Care Behavioral and Medical Clinic'
        AND o.latitude = '39.5253212'
        AND o.longitude = '-119.799359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Well Care Behavioral and Medical Clinic'
        AND o.latitude = '39.5253212'
        AND o.longitude = '-119.799359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Well Care Behavioral and Medical Clinic'
        AND o.latitude = '39.5253212'
        AND o.longitude = '-119.799359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Well Care Behavioral and Medical Clinic'
        AND o.latitude = '39.5253212'
        AND o.longitude = '-119.799359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Well Care Behavioral and Medical Clinic'
        AND o.latitude = '39.5253212'
        AND o.longitude = '-119.799359'));

COMMIT;
