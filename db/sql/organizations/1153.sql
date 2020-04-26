
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
      'Comfort HealthCare, LLC',
      '8310 Detroit Ave
Cleveland, OH 44102',
      'Cleveland',
      'OH',
      '8310 Detroit Avenue - Inside Front Door',
      'Yes',
      '41.481241',
      '-81.7418299'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort HealthCare, LLC'
        AND o.latitude = '41.481241'
        AND o.longitude = '-81.7418299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort HealthCare, LLC'
        AND o.latitude = '41.481241'
        AND o.longitude = '-81.7418299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort HealthCare, LLC'
        AND o.latitude = '41.481241'
        AND o.longitude = '-81.7418299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort HealthCare, LLC'
        AND o.latitude = '41.481241'
        AND o.longitude = '-81.7418299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Comfort HealthCare, LLC'
        AND o.latitude = '41.481241'
        AND o.longitude = '-81.7418299'));

COMMIT;
