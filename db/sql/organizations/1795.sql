
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
      'The Brooklyn Hospital Center ',
      '121 Dekalb Ave
Brooklyn, NY 11201',
      'New York - Brooklyn ',
      'NY',
      '',
      'Yes',
      '40.691265',
      '-73.9777743'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center '
        AND o.latitude = '40.691265'
        AND o.longitude = '-73.9777743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center '
        AND o.latitude = '40.691265'
        AND o.longitude = '-73.9777743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center '
        AND o.latitude = '40.691265'
        AND o.longitude = '-73.9777743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center '
        AND o.latitude = '40.691265'
        AND o.longitude = '-73.9777743'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center '
        AND o.latitude = '40.691265'
        AND o.longitude = '-73.9777743'));

COMMIT;
