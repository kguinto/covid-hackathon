
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
      'Royal Ambulance ',
      '14472 Wicks Blvd
San Leandro, CA 94577',
      'San Leandro',
      'CA',
      'We are open 24/7',
      'Yes',
      '37.6977777',
      '-122.1648039'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Ambulance '
        AND o.latitude = '37.6977777'
        AND o.longitude = '-122.1648039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Ambulance '
        AND o.latitude = '37.6977777'
        AND o.longitude = '-122.1648039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Ambulance '
        AND o.latitude = '37.6977777'
        AND o.longitude = '-122.1648039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Ambulance '
        AND o.latitude = '37.6977777'
        AND o.longitude = '-122.1648039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Ambulance '
        AND o.latitude = '37.6977777'
        AND o.longitude = '-122.1648039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Royal Ambulance '
        AND o.latitude = '37.6977777'
        AND o.longitude = '-122.1648039'));

COMMIT;
