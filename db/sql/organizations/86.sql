
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
      'TMS & Brain Health',
      '3200 Santa Monica Blvd., Suite 204
Santa Monica, CA 90404',
      'Santa Monica',
      'CA',
      'Please call (833) 867-2329',
      'Yes',
      '34.0378628',
      '-118.4682088'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'TMS & Brain Health'
        AND o.latitude = '34.0378628'
        AND o.longitude = '-118.4682088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'TMS & Brain Health'
        AND o.latitude = '34.0378628'
        AND o.longitude = '-118.4682088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'TMS & Brain Health'
        AND o.latitude = '34.0378628'
        AND o.longitude = '-118.4682088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'TMS & Brain Health'
        AND o.latitude = '34.0378628'
        AND o.longitude = '-118.4682088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'TMS & Brain Health'
        AND o.latitude = '34.0378628'
        AND o.longitude = '-118.4682088'));

COMMIT;
