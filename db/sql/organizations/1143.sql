
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
      'Emory University Hospital Midtown',
      '550 Peachtree St NE
Atlanta, GA 30308',
      'Atlanta ',
      'GA',
      'Drop off at front of hospital. Tell them it is for 71 ICU',
      'Yes',
      '33.769688',
      '-84.3858485'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emory University Hospital Midtown'
        AND o.latitude = '33.769688'
        AND o.longitude = '-84.3858485'));

COMMIT;
