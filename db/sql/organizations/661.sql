
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
      'Community Options, Inc. ',
      '3 East Butler Drive
Drums, PA 18222',
      'Drums',
      'PA',
      'attn: Patricia Bart',
      'Yes',
      '41.0213966',
      '-75.9632424'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options, Inc. '
        AND o.latitude = '41.0213966'
        AND o.longitude = '-75.9632424'));

COMMIT;
