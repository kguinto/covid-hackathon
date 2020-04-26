
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
      '4500 Utica Ridge Rd
Bettendorf, IA 52722',
      'Bettendorf ',
      'IA',
      'Front entrance of hospital',
      'Yes',
      '41.5660801',
      '-90.5198013'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UnityPoint Trinity'
        AND o.latitude = '41.5660801'
        AND o.longitude = '-90.5198013'));

COMMIT;
