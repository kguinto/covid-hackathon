
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
      'Eating Recovery Center',
      '98 Spruce St
Denver, CO 80230',
      'Denver',
      'CO',
      'Please mail to Dr. Anne O''Melia, Eating Recovery Center, 98 Spruce St. Denver, Colorado',
      'No',
      '39.7214805',
      '-104.8936925'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eating Recovery Center'
        AND o.latitude = '39.7214805'
        AND o.longitude = '-104.8936925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eating Recovery Center'
        AND o.latitude = '39.7214805'
        AND o.longitude = '-104.8936925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eating Recovery Center'
        AND o.latitude = '39.7214805'
        AND o.longitude = '-104.8936925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eating Recovery Center'
        AND o.latitude = '39.7214805'
        AND o.longitude = '-104.8936925'));

COMMIT;
