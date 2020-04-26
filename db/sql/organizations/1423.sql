
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
      'Mendota Mental Health Clinic',
      '301 Troy Dr
Madison, WI 53704',
      'Madison',
      'WI',
      'Admin building',
      'Yes',
      '43.132012',
      '-89.3977261'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mendota Mental Health Clinic'
        AND o.latitude = '43.132012'
        AND o.longitude = '-89.3977261'));

COMMIT;
