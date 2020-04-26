
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
      'Burbank Pediatrics',
      '1411 N Hollywood Way
Burbank, CA 91505',
      'Burbank ',
      'CA',
      'Walk in or call',
      'Yes',
      '34.1755451',
      '-118.3496419'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burbank Pediatrics'
        AND o.latitude = '34.1755451'
        AND o.longitude = '-118.3496419'));

COMMIT;
