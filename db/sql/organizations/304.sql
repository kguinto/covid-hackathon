
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
      'Kindred at Home',
      '1043 Algonquin Trail
Frankfort, KY 40601',
      'Frankfort ',
      'KY',
      'By side door under carport',
      'Yes',
      '38.2151298',
      '-84.8321711'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred at Home'
        AND o.latitude = '38.2151298'
        AND o.longitude = '-84.8321711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred at Home'
        AND o.latitude = '38.2151298'
        AND o.longitude = '-84.8321711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred at Home'
        AND o.latitude = '38.2151298'
        AND o.longitude = '-84.8321711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred at Home'
        AND o.latitude = '38.2151298'
        AND o.longitude = '-84.8321711'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kindred at Home'
        AND o.latitude = '38.2151298'
        AND o.longitude = '-84.8321711'));

COMMIT;
