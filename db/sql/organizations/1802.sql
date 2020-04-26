
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
      'St Marys Medical Center Dignity Health',
      '2250 Hayes St
San Francisco, CA 94117',
      'San Francisco',
      'CA',
      'M-f 1-430, then call 415-516-5184 so someone can open the gate.',
      'No',
      '37.7731512',
      '-122.4534157'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Medical Center Dignity Health'
        AND o.latitude = '37.7731512'
        AND o.longitude = '-122.4534157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Medical Center Dignity Health'
        AND o.latitude = '37.7731512'
        AND o.longitude = '-122.4534157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Medical Center Dignity Health'
        AND o.latitude = '37.7731512'
        AND o.longitude = '-122.4534157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Medical Center Dignity Health'
        AND o.latitude = '37.7731512'
        AND o.longitude = '-122.4534157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Medical Center Dignity Health'
        AND o.latitude = '37.7731512'
        AND o.longitude = '-122.4534157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Marys Medical Center Dignity Health'
        AND o.latitude = '37.7731512'
        AND o.longitude = '-122.4534157'));

COMMIT;
