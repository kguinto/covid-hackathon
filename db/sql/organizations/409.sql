
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
      'Dignity Health-GoHealth Urgent Care',
      '2288 Market St
San Francisco, CA 94114',
      'San Francisco',
      'CA',
      'N/A',
      'unsure',
      '37.7647702',
      '-122.4328693'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health-GoHealth Urgent Care'
        AND o.latitude = '37.7647702'
        AND o.longitude = '-122.4328693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health-GoHealth Urgent Care'
        AND o.latitude = '37.7647702'
        AND o.longitude = '-122.4328693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health-GoHealth Urgent Care'
        AND o.latitude = '37.7647702'
        AND o.longitude = '-122.4328693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health-GoHealth Urgent Care'
        AND o.latitude = '37.7647702'
        AND o.longitude = '-122.4328693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health-GoHealth Urgent Care'
        AND o.latitude = '37.7647702'
        AND o.longitude = '-122.4328693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health-GoHealth Urgent Care'
        AND o.latitude = '37.7647702'
        AND o.longitude = '-122.4328693'));

COMMIT;
