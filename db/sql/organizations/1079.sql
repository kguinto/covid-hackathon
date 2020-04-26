
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
      'UnityPoint Health Trinity ',
      '2701 17th St
Rock Island, IL 61201',
      'Rock Island ',
      'IL',
      'Front Entrance to Hospital',
      'Yes',
      '41.4813627',
      '-90.5705719'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Health Trinity '
        AND o.latitude = '41.4813627'
        AND o.longitude = '-90.5705719'));

COMMIT;
