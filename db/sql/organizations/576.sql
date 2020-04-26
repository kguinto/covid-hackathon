
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
      'Staten Island Hospital ',
      '28 Surrey Dr
Old Bridge, NJ 08857
',
      'Old bridge ',
      'NJ',
      'Curbside ',
      'Yes',
      '40.388332',
      '-74.2830821'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Staten Island Hospital '
        AND o.latitude = '40.388332'
        AND o.longitude = '-74.2830821'));

COMMIT;
