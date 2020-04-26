
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
      'All kids pediatrics ',
      '920 N Main St
Opelousas, LA 70570',
      'Opelousas',
      'LA',
      'Employers are sitting outside ',
      'Yes',
      '30.5417467',
      '-92.0801678'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'All kids pediatrics '
        AND o.latitude = '30.5417467'
        AND o.longitude = '-92.0801678'));

COMMIT;
