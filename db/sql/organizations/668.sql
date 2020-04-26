
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
      'Southern Berkshire Volunteer Ambulance Squad, Inc',
      '31 Lewis Ave
Great Barrington, MA 01230',
      'Great Barrington',
      'MA',
      'Curbside.  Please ring doorbell or drop off on bench outside of front door',
      'Yes',
      '42.1924199',
      '-73.3721821'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Berkshire Volunteer Ambulance Squad, Inc'
        AND o.latitude = '42.1924199'
        AND o.longitude = '-73.3721821'));

COMMIT;
