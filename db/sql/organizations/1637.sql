
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
      'Morristown EMS',
      '539 Washington Hwy
Morrisville, VT 05661',
      'Morrisville',
      'VT',
      'Leave with duty crew, or by door if crew is not available',
      'Yes',
      '44.5545491',
      '-72.5907502'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morristown EMS'
        AND o.latitude = '44.5545491'
        AND o.longitude = '-72.5907502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morristown EMS'
        AND o.latitude = '44.5545491'
        AND o.longitude = '-72.5907502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morristown EMS'
        AND o.latitude = '44.5545491'
        AND o.longitude = '-72.5907502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morristown EMS'
        AND o.latitude = '44.5545491'
        AND o.longitude = '-72.5907502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morristown EMS'
        AND o.latitude = '44.5545491'
        AND o.longitude = '-72.5907502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morristown EMS'
        AND o.latitude = '44.5545491'
        AND o.longitude = '-72.5907502'));

COMMIT;
