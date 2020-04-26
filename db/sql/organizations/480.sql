
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
      'Express Urgent Care',
      '449 Scranton Carbondale Hwy
Scranton, PA 18508',
      'Dickson City',
      'PA',
      'Delivery or pick up',
      '',
      '41.4630284',
      '-75.6539479'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Express Urgent Care'
        AND o.latitude = '41.4630284'
        AND o.longitude = '-75.6539479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Express Urgent Care'
        AND o.latitude = '41.4630284'
        AND o.longitude = '-75.6539479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Express Urgent Care'
        AND o.latitude = '41.4630284'
        AND o.longitude = '-75.6539479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Express Urgent Care'
        AND o.latitude = '41.4630284'
        AND o.longitude = '-75.6539479'));

COMMIT;
