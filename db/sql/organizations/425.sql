
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
      'UCSF Mount Zion Medical Center',
      '1600 Divisadero St
San Francisco, CA 94115',
      'San Francisco',
      'CA',
      'Semicircle driveway; will be receiving donations 7 days a week, 8 a.m. to 5 p.m. More info: https://coronavirus.ucsf.edu/help',
      'Masks - can be opened, as long as they have not been used. All others: unopened',
      '37.784695',
      '-122.4392274'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UCSF Mount Zion Medical Center'
        AND o.latitude = '37.784695'
        AND o.longitude = '-122.4392274'));

COMMIT;
