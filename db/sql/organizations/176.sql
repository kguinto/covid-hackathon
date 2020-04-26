
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
      'UCSF - Mission Bay Campus',
      'Genentech Hall, 600 16th St, Room N121
San Francisco, CA 94158',
      'San Francisco',
      'CA',
      'No dropoffs here. Go to 3 main UCSF collection sites: https://coronavirus.ucsf.edu/help For questions call 415-514-4107 or Elizabeth Lin 909-348-3238. ',
      'No',
      '37.7672951',
      '-122.3924635'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('mouth swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Mission Bay Campus'
        AND o.latitude = '37.7672951'
        AND o.longitude = '-122.3924635'));

COMMIT;
