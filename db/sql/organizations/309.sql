
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
      'Macneal Hospital Emergency Department ',
      '3544 W Wrightwood Ave
Chicago, IL 60647',
      'Chicago',
      'IL',
      'Attention Dr Neesha Patel',
      'Yes',
      '41.9285019',
      '-87.7164783'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macneal Hospital Emergency Department '
        AND o.latitude = '41.9285019'
        AND o.longitude = '-87.7164783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macneal Hospital Emergency Department '
        AND o.latitude = '41.9285019'
        AND o.longitude = '-87.7164783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macneal Hospital Emergency Department '
        AND o.latitude = '41.9285019'
        AND o.longitude = '-87.7164783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macneal Hospital Emergency Department '
        AND o.latitude = '41.9285019'
        AND o.longitude = '-87.7164783'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macneal Hospital Emergency Department '
        AND o.latitude = '41.9285019'
        AND o.longitude = '-87.7164783'));

COMMIT;
