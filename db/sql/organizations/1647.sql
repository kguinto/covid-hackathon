
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
      'Riverside Medical Center',
      '350 N Wall St
Kankakee, IL 60901',
      'Kankakee',
      'IL',
      '350 North Wall Street',
      'Yes',
      '41.1240078',
      '-87.8830805'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Medical Center'
        AND o.latitude = '41.1240078'
        AND o.longitude = '-87.8830805'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Medical Center'
        AND o.latitude = '41.1240078'
        AND o.longitude = '-87.8830805'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Medical Center'
        AND o.latitude = '41.1240078'
        AND o.longitude = '-87.8830805'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Medical Center'
        AND o.latitude = '41.1240078'
        AND o.longitude = '-87.8830805'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Medical Center'
        AND o.latitude = '41.1240078'
        AND o.longitude = '-87.8830805'));

COMMIT;
