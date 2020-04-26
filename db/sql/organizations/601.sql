
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
      'Mt. Sinai Hospital',
      '1500 S Fairfield Ave
Chicago, IL 60608',
      'Chicago',
      'IL',
      'Mail',
      'Unsure',
      '41.8608329',
      '-87.6945942'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Sinai Hospital'
        AND o.latitude = '41.8608329'
        AND o.longitude = '-87.6945942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Sinai Hospital'
        AND o.latitude = '41.8608329'
        AND o.longitude = '-87.6945942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Sinai Hospital'
        AND o.latitude = '41.8608329'
        AND o.longitude = '-87.6945942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Sinai Hospital'
        AND o.latitude = '41.8608329'
        AND o.longitude = '-87.6945942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Sinai Hospital'
        AND o.latitude = '41.8608329'
        AND o.longitude = '-87.6945942'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mt. Sinai Hospital'
        AND o.latitude = '41.8608329'
        AND o.longitude = '-87.6945942'));

COMMIT;
