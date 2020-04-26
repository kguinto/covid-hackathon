
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
      'LifeLong Medical Care',
      '2001 Dwight Way #1388
Berkeley, CA 94704',
      'Berkeley',
      'CA',
      'Please mail to address and text Kyle Hui at 206-427-3587 once it is mailed. Other supplies such as surgical masks, gowns, hair caps, hand sanitizer can be sent to our procurement deparmtent.',
      'No',
      '37.8640724',
      '-122.2687119'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeLong Medical Care'
        AND o.latitude = '37.8640724'
        AND o.longitude = '-122.2687119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeLong Medical Care'
        AND o.latitude = '37.8640724'
        AND o.longitude = '-122.2687119'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('rapid flu testing kit',
    (SELECT id FROM organizations o
      WHERE o.name = 'LifeLong Medical Care'
        AND o.latitude = '37.8640724'
        AND o.longitude = '-122.2687119'));

COMMIT;
