
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
      'Dr. Jack M Matheny II',
      '700 Zeagler Drive Suite 10
Palatka, FL 32177',
      'Palatka ',
      'FL',
      '',
      'Yes',
      '29.6414788',
      '-81.694321'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Jack M Matheny II'
        AND o.latitude = '29.6414788'
        AND o.longitude = '-81.694321'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Jack M Matheny II'
        AND o.latitude = '29.6414788'
        AND o.longitude = '-81.694321'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Jack M Matheny II'
        AND o.latitude = '29.6414788'
        AND o.longitude = '-81.694321'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dr. Jack M Matheny II'
        AND o.latitude = '29.6414788'
        AND o.longitude = '-81.694321'));

COMMIT;
