
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
      'Family Medical Center',
      '5908 5th Ave
Brooklyn, NY 11220',
      'New York - Brooklyn',
      'NY',
      '',
      'Yes',
      '40.6400175',
      '-74.0160056'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Medical Center'
        AND o.latitude = '40.6400175'
        AND o.longitude = '-74.0160056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Medical Center'
        AND o.latitude = '40.6400175'
        AND o.longitude = '-74.0160056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Medical Center'
        AND o.latitude = '40.6400175'
        AND o.longitude = '-74.0160056'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Medical Center'
        AND o.latitude = '40.6400175'
        AND o.longitude = '-74.0160056'));

COMMIT;
