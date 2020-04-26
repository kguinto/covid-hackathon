
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
      'Lakewood Ranch Medical Center',
      '8330 Lakewood Ranch Blvd
Lakewood Ranch, FL 34202',
      'Lakewood Ranch',
      'FL',
      'Contact Dr. Neil Nahmias (head anesthesiologist) 201-321-8200',
      'Yes',
      '27.390913',
      '-82.435731'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakewood Ranch Medical Center'
        AND o.latitude = '27.390913'
        AND o.longitude = '-82.435731'));

COMMIT;
