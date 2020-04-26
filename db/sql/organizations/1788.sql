
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
      'Tulane Medical Center & University Medical Center New Orleans',
      '131 S Robertson St
New Orleans, LA 70112',
      'New Orleans',
      'LA',
      '1st Floor Innovation Center',
      'No',
      '29.9578373',
      '-90.077761'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('disposable stethoscope',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tulane Medical Center & University Medical Center New Orleans'
        AND o.latitude = '29.9578373'
        AND o.longitude = '-90.077761'));

COMMIT;
