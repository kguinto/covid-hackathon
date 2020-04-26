
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
      'Seton Medical Center',
      '1900 Sullivan Ave
Daly City, CA 94015',
      'Daly City',
      'CA',
      'Please drop off in front lobby! Thanks <3',
      'No',
      '37.6801347',
      '-122.4740564'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Medical Center'
        AND o.latitude = '37.6801347'
        AND o.longitude = '-122.4740564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Medical Center'
        AND o.latitude = '37.6801347'
        AND o.longitude = '-122.4740564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Medical Center'
        AND o.latitude = '37.6801347'
        AND o.longitude = '-122.4740564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Medical Center'
        AND o.latitude = '37.6801347'
        AND o.longitude = '-122.4740564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seton Medical Center'
        AND o.latitude = '37.6801347'
        AND o.longitude = '-122.4740564'));

COMMIT;
