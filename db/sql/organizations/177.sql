
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
      'UCSF - Parnassus Campus',
      '505 Parnassus Ave, Long Hospital Loading Dock, Room L235G
San Francisco, CA 94143 ',
      'San Francisco',
      'CA',
      'No dropoffs here. Go to 3 main UCSF collection sites: https://coronavirus.ucsf.edu/help For questions call 415-514-4107 or Elizabeth Lin 909-348-3238. ',
      'No',
      '37.7630895',
      '-122.4578144'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('mouth swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF - Parnassus Campus'
        AND o.latitude = '37.7630895'
        AND o.longitude = '-122.4578144'));

COMMIT;
