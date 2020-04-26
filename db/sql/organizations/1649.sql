
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
      'AtlantiCare Regional Medical Center City Campus',
      '1925 Pacific Ave
Atlantic City, NJ 08401',
      'Atlantic City',
      'NJ',
      'Attention Ria Abadinas (Emergency Department)',
      'Yes',
      '39.3583314',
      '-74.4342891'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'AtlantiCare Regional Medical Center City Campus'
        AND o.latitude = '39.3583314'
        AND o.longitude = '-74.4342891'));

COMMIT;
