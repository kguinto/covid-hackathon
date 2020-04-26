
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
      'UnityPoint Trinity',
      '500 John Deere Rd
Moline, IL 61265',
      'moline ',
      'IL',
      'Front entrance doors',
      'Yes',
      '41.4681104',
      '-90.530915'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.4681104'
        AND o.longitude = '-90.530915'));

COMMIT;
