
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
      'Brunswick Urgent Care',
      '3185 NJ-27
Franklin Park, NJ 08823',
      'Franklin Park',
      'NJ',
      'Shipped or possible p/u (more details needed)',
      'Unsure',
      '40.4344736',
      '-74.545367'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brunswick Urgent Care'
        AND o.latitude = '40.4344736'
        AND o.longitude = '-74.545367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brunswick Urgent Care'
        AND o.latitude = '40.4344736'
        AND o.longitude = '-74.545367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brunswick Urgent Care'
        AND o.latitude = '40.4344736'
        AND o.longitude = '-74.545367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brunswick Urgent Care'
        AND o.latitude = '40.4344736'
        AND o.longitude = '-74.545367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brunswick Urgent Care'
        AND o.latitude = '40.4344736'
        AND o.longitude = '-74.545367'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brunswick Urgent Care'
        AND o.latitude = '40.4344736'
        AND o.longitude = '-74.545367'));

COMMIT;
