
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
      'Overlook Medical Center',
      '99 Beauvoir Ave
Summit, NJ 07901',
      'Summit',
      'NJ',
      'Inside main lobby',
      'Open boxes yes, but not used',
      '40.7121248',
      '-74.3536189'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlook Medical Center'
        AND o.latitude = '40.7121248'
        AND o.longitude = '-74.3536189'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlook Medical Center'
        AND o.latitude = '40.7121248'
        AND o.longitude = '-74.3536189'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlook Medical Center'
        AND o.latitude = '40.7121248'
        AND o.longitude = '-74.3536189'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlook Medical Center'
        AND o.latitude = '40.7121248'
        AND o.longitude = '-74.3536189'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Overlook Medical Center'
        AND o.latitude = '40.7121248'
        AND o.longitude = '-74.3536189'));

COMMIT;
