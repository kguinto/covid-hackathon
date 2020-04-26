
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
      'Women''s HIV Program at UCSF',
      '1306 York St
San Francisco, CA 94110',
      'San Francisco',
      'CA',
      'On my porch- I direct the clinic and will bring them to clinic right away ',
      'Yes',
      '37.7510519',
      '-122.408256'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s HIV Program at UCSF'
        AND o.latitude = '37.7510519'
        AND o.longitude = '-122.408256'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women''s HIV Program at UCSF'
        AND o.latitude = '37.7510519'
        AND o.longitude = '-122.408256'));

COMMIT;
