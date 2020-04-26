
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
      'The Brooklyn Hospital Center',
      '45 Hoyt St #5Q
Brooklyn, NY 11201',
      'New York - Brooklyn',
      'NY',
      '
Attn:
Mudita Patel',
      'Yes',
      '40.6892617',
      '-73.9857155'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Brooklyn Hospital Center'
        AND o.latitude = '40.6892617'
        AND o.longitude = '-73.9857155'));

COMMIT;
