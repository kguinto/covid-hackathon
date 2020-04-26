
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
      'Silver Cross Hospital',
      '1900 Silver Cross Blvd
New Lenox, IL 60451',
      'New Lenox ',
      'IL',
      'Front desk drop off',
      'Yes',
      '41.5444716',
      '-87.9828584'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Cross Hospital'
        AND o.latitude = '41.5444716'
        AND o.longitude = '-87.9828584'));

COMMIT;
