
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
      'Pediatrics On Demand',
      '9930 SW Hwy
Oak Lawn, IL 60453',
      'Oak Lawn',
      'IL',
      'Drop off or shipping',
      'Unsure',
      '41.7111893',
      '-87.7782741'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics On Demand'
        AND o.latitude = '41.7111893'
        AND o.longitude = '-87.7782741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatrics On Demand'
        AND o.latitude = '41.7111893'
        AND o.longitude = '-87.7782741'));

COMMIT;
