
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
      'Littleton Adventist ',
      '7700 S Broadway
Littleton, CO 80122',
      'LITTLETON ',
      'CO',
      'ER',
      'Yes',
      '39.576102',
      '-104.985752'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Littleton Adventist '
        AND o.latitude = '39.576102'
        AND o.longitude = '-104.985752'));

COMMIT;
