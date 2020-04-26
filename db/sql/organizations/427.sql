
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
      'UCSF Mission Center Building',
      '1855 Folsom St
San Francisco, CA 94103',
      'San Francisco',
      'CA',
      'Will be receiving donations 7 days a week, 8 a.m. to 5 p.m. Entrance in the parking lot on Harrison at 15th Street. More info: https://coronavirus.ucsf.edu/help',
      'Masks - can be opened, as long as they have not been used. All other items - unopened only pls',
      '37.7673395',
      '-122.4150481'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mission Center Building'
        AND o.latitude = '37.7673395'
        AND o.longitude = '-122.4150481'));

COMMIT;
