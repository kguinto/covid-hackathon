
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
      'St. Mary Medical Center',
      '1201 Langhorne-Newtown Road
Langhorne, PA 19047',
      'Langhorne',
      'PA',
      'Conference room drop off',
      '',
      '40.2025856',
      '-74.9251811'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Clorox wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('transparency sheets',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Mary Medical Center'
        AND o.latitude = '40.2025856'
        AND o.longitude = '-74.9251811'));

COMMIT;
