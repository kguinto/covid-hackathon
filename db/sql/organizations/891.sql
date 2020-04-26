
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
      'St Joseph''s University Medical Center',
      '703 Main St
Paterson, NJ 07503',
      'Paterson ',
      'NJ',
      '',
      'Yes',
      '40.9022582',
      '-74.1661378'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Joseph''s University Medical Center'
        AND o.latitude = '40.9022582'
        AND o.longitude = '-74.1661378'));

COMMIT;
