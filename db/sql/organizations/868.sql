
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
      'Portsmouth Ambulance',
      '606 N. Sandusky Ave.
Bucyrus, OH 44820',
      'Bucyrus',
      'OH',
      'Knock on front door.',
      'Yes',
      '40.8146643',
      '-82.9753153'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portsmouth Ambulance'
        AND o.latitude = '40.8146643'
        AND o.longitude = '-82.9753153'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portsmouth Ambulance'
        AND o.latitude = '40.8146643'
        AND o.longitude = '-82.9753153'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Portsmouth Ambulance'
        AND o.latitude = '40.8146643'
        AND o.longitude = '-82.9753153'));

COMMIT;
