
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
      'Midwest Express Clinic - West Loop',
      '779 W Adams St.
Chicago, IL 60661',
      'Chicago',
      'IL',
      'Stay in your vehicle and call us at 312-752-4466, we will pick up curbside - thank you! ',
      'Yes',
      '41.8789317',
      '-87.6470536'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - West Loop'
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - West Loop'
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - West Loop'
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - West Loop'
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - West Loop'
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - West Loop'
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

COMMIT;
