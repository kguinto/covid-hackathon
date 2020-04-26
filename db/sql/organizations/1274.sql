
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
      'Methodist Hospital of Sacramento',
      '7500 Hospital Dr
Sacramento, CA 95823',
      'Sacramento',
      'CA',
      '',
      'Yes',
      '38.463412',
      '-121.4169329'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital of Sacramento'
        AND o.latitude = '38.463412'
        AND o.longitude = '-121.4169329'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital of Sacramento'
        AND o.latitude = '38.463412'
        AND o.longitude = '-121.4169329'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital of Sacramento'
        AND o.latitude = '38.463412'
        AND o.longitude = '-121.4169329'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital of Sacramento'
        AND o.latitude = '38.463412'
        AND o.longitude = '-121.4169329'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital of Sacramento'
        AND o.latitude = '38.463412'
        AND o.longitude = '-121.4169329'));

COMMIT;
