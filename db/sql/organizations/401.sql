
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
      'Mount Sinai Medical Center',
      '4300 Alton Rd
Miami Beach, FL 33140',
      'Miami Beach',
      'FL',
      'Emergency Room',
      'Yes',
      '25.8131425',
      '-80.1414482'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Medical Center'
        AND o.latitude = '25.8131425'
        AND o.longitude = '-80.1414482'));

COMMIT;
