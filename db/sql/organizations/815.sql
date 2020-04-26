
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
      'Midwest Express Clinic - Wicker Park',
      '1520 N Damen Ave
Chicago, IL 60622',
      'Chicago',
      'IL',
      'Stay in your vehicle and call us at 312-283-5560, we will pick up curbside - thank you! ',
      'Yes',
      '41.9090324',
      '-87.6777701'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Wicker Park'
        AND o.latitude = '41.9090324'
        AND o.longitude = '-87.6777701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Wicker Park'
        AND o.latitude = '41.9090324'
        AND o.longitude = '-87.6777701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Wicker Park'
        AND o.latitude = '41.9090324'
        AND o.longitude = '-87.6777701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Wicker Park'
        AND o.latitude = '41.9090324'
        AND o.longitude = '-87.6777701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Wicker Park'
        AND o.latitude = '41.9090324'
        AND o.longitude = '-87.6777701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Wicker Park'
        AND o.latitude = '41.9090324'
        AND o.longitude = '-87.6777701'));

COMMIT;
