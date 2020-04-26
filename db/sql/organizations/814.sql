
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
      'Midwest Express Clinic - River North',
      '219 W Chicago Ave
Chicago, IL 60654',
      'Chicago',
      'IL',
      'Stay in your vehicle and call us at 312-878-1945, we will pick up curbside - thank you! ',
      'Yes',
      '41.8963515',
      '-87.6350968'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - River North'
        AND o.latitude = '41.8963515'
        AND o.longitude = '-87.6350968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - River North'
        AND o.latitude = '41.8963515'
        AND o.longitude = '-87.6350968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - River North'
        AND o.latitude = '41.8963515'
        AND o.longitude = '-87.6350968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - River North'
        AND o.latitude = '41.8963515'
        AND o.longitude = '-87.6350968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - River North'
        AND o.latitude = '41.8963515'
        AND o.longitude = '-87.6350968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - River North'
        AND o.latitude = '41.8963515'
        AND o.longitude = '-87.6350968'));

COMMIT;
