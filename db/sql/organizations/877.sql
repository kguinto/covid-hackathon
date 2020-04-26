
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
      'Marshfield Medical Center ED',
      '1700 W Stout St
Rice Lake, WI 54868',
      'Rice Lake',
      'WI',
      'Drop off at ED entrance ',
      'Yes',
      '45.5065323',
      '-91.7595124'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshfield Medical Center ED'
        AND o.latitude = '45.5065323'
        AND o.longitude = '-91.7595124'));

COMMIT;
