
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
      'Porter Adventist Hospital',
      '2525 S Downing St
Denver, CO 80210',
      'Denver',
      'CO',
      'Drop off at ED entrance ',
      'No',
      '39.6700386',
      '-104.9748195'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Porter Adventist Hospital'
        AND o.latitude = '39.6700386'
        AND o.longitude = '-104.9748195'));

COMMIT;
