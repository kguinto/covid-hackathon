
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
      'PM pediatrics',
      '260 East Lancaster Avenue
Wynnewood, PA 19096',
      'Wynnewood',
      'PA',
      'open after 12:00pm',
      'Yes',
      '40.0036237',
      '-75.2841243'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM pediatrics'
        AND o.latitude = '40.0036237'
        AND o.longitude = '-75.2841243'));

COMMIT;
