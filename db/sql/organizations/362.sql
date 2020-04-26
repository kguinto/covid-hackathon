
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
      'Midwest Express Clinic',
      '3301 N. Ashland Ave
Chicago, IL 60657',
      'Chicago',
      'IL',
      'Stay in your vehicle and call us at 312-429-5725 - we will pick up curbside. Thank you! ',
      'Yes',
      '41.9416723',
      '-87.6684164'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.9416723'
        AND o.longitude = '-87.6684164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.9416723'
        AND o.longitude = '-87.6684164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.9416723'
        AND o.longitude = '-87.6684164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.9416723'
        AND o.longitude = '-87.6684164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.9416723'
        AND o.longitude = '-87.6684164'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.9416723'
        AND o.longitude = '-87.6684164'));

COMMIT;
