
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
      '31 E Sibley St. Suite A
Hammond, IN 46320',
      'Hammond',
      'IN',
      'Stay in your vehicle and call us at 219-802-8800, we will pick up curbside - thank you! ',
      'Yes',
      '41.6202965',
      '-87.5236852'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.6202965'
        AND o.longitude = '-87.5236852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.6202965'
        AND o.longitude = '-87.5236852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.6202965'
        AND o.longitude = '-87.5236852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.6202965'
        AND o.longitude = '-87.5236852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.6202965'
        AND o.longitude = '-87.5236852'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic'
        AND o.latitude = '41.6202965'
        AND o.longitude = '-87.5236852'));

COMMIT;
