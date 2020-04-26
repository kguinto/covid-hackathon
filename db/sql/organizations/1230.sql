
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
      'Mercy Care Hospital',
      '701 10th St SE
Cedar Rapids, IA 52403',
      'Cedar Rapids',
      'IA',
      '10th Street Entrance',
      'Yes',
      '41.9780945',
      '-91.6557271'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Care Hospital'
        AND o.latitude = '41.9780945'
        AND o.longitude = '-91.6557271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Sewn Masks: Pattern https://buttoncounter.com/2018/01/14/facemask-a-picture-tutorial/',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Care Hospital'
        AND o.latitude = '41.9780945'
        AND o.longitude = '-91.6557271'));

COMMIT;
