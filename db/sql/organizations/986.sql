
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
      'Addison Pointe Healthcare and Rehab ',
      '780 Dickinson Rd
Chesterton, IN 46304',
      'Chesterton',
      'IN',
      'Leave with receptionist ',
      'No',
      '41.6015398',
      '-87.0403439'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Pointe Healthcare and Rehab '
        AND o.latitude = '41.6015398'
        AND o.longitude = '-87.0403439'));

COMMIT;
