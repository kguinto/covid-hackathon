
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
      'CaroMont Regional Medical Center',
      '2525 Court Dr
Gastonia, NC 28054',
      'Gastonia',
      'NC',
      'Mailing adress',
      'No',
      '35.2717527',
      '-81.1390362'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CaroMont Regional Medical Center'
        AND o.latitude = '35.2717527'
        AND o.longitude = '-81.1390362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'CaroMont Regional Medical Center'
        AND o.latitude = '35.2717527'
        AND o.longitude = '-81.1390362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CaroMont Regional Medical Center'
        AND o.latitude = '35.2717527'
        AND o.longitude = '-81.1390362'));

COMMIT;
