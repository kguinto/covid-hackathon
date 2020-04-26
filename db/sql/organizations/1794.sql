
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
      'AACI Health Clinic (FQHC)',
      '2400 Moorpark Ave #319
San Jose, CA 95128',
      'San Jose',
      'CA',
      'Mailing address ATTN Helen Wang AACI HC',
      'Yes',
      '37.3156923',
      '-121.9370894'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'AACI Health Clinic (FQHC)'
        AND o.latitude = '37.3156923'
        AND o.longitude = '-121.9370894'));

COMMIT;
