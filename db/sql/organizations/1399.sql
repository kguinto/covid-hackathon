
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
      'Mount Sinai Brooklyn',
      '3201 Kings Hwy
Brooklyn, NY 11234',
      'New York - Brooklyn ',
      'NY',
      '',
      'Yes',
      '40.6187604',
      '-73.9428238'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Brooklyn'
        AND o.latitude = '40.6187604'
        AND o.longitude = '-73.9428238'));

COMMIT;
