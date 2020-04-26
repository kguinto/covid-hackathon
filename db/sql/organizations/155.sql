
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
      'Sinai Hospital',
      '2401 W Belvedere Ave
Baltimore, MD 21215',
      'Baltimore',
      'MD',
      'Unused masks only. Mail or drop off.',
      'Only if new.',
      '39.3527548',
      '-76.6619418'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPRs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('coveralls',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('testing kits',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sinai Hospital'
        AND o.latitude = '39.3527548'
        AND o.longitude = '-76.6619418'));

COMMIT;
