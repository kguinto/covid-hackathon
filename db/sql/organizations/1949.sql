
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
      'University Medical Center',
      '602 N Indiana Ave
Lubbock, TX 79415',
      'Lubbock',
      'TX',
      'Mailing,  CAT SCAN DEPT.',
      'Yes,  if sterile and able to use',
      '33.6070169',
      '-101.8874567'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '33.6070169'
        AND o.longitude = '-101.8874567'));

COMMIT;
