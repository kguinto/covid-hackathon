
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
      'Capital Health',
      '1 Capital Way
Pennington, NJ 08534',
      'Pennington',
      'NJ',
      '',
      'Yes',
      '40.2919868',
      '-74.8034535'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Health'
        AND o.latitude = '40.2919868'
        AND o.longitude = '-74.8034535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Health'
        AND o.latitude = '40.2919868'
        AND o.longitude = '-74.8034535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Health'
        AND o.latitude = '40.2919868'
        AND o.longitude = '-74.8034535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Health'
        AND o.latitude = '40.2919868'
        AND o.longitude = '-74.8034535'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Capital Health'
        AND o.latitude = '40.2919868'
        AND o.longitude = '-74.8034535'));

COMMIT;
