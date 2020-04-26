
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
      'St. Francis Medical Center',
      '309 Jackson St
Monroe, LA 71201',
      'Monroe',
      'LA',
      'Must call Aimee Kane at 318-966-7833 to schedule drop off ',
      'No',
      '32.499658',
      '-92.114495'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Francis Medical Center'
        AND o.latitude = '32.499658'
        AND o.longitude = '-92.114495'));

COMMIT;
