
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
      'WNC Baptist Retirement Home: Rickman Nursing Care Center',
      '213 Richmond Hill Dr
Asheville, NC 28806',
      'Asheville ',
      'NC',
      'Mail or drop off: 828-254-9675: call ahead and drop off at back of facility, by loading dock',
      'Yes',
      '35.613225',
      '-82.583049'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'WNC Baptist Retirement Home: Rickman Nursing Care Center'
        AND o.latitude = '35.613225'
        AND o.longitude = '-82.583049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'WNC Baptist Retirement Home: Rickman Nursing Care Center'
        AND o.latitude = '35.613225'
        AND o.longitude = '-82.583049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'WNC Baptist Retirement Home: Rickman Nursing Care Center'
        AND o.latitude = '35.613225'
        AND o.longitude = '-82.583049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'WNC Baptist Retirement Home: Rickman Nursing Care Center'
        AND o.latitude = '35.613225'
        AND o.longitude = '-82.583049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'WNC Baptist Retirement Home: Rickman Nursing Care Center'
        AND o.latitude = '35.613225'
        AND o.longitude = '-82.583049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'WNC Baptist Retirement Home: Rickman Nursing Care Center'
        AND o.latitude = '35.613225'
        AND o.longitude = '-82.583049'));

COMMIT;
