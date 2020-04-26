
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
      'Maryland Health and Wellness Center',
      '1571 Wesel Blvd
Hagerstown, MD 21740',
      'Hagerstown',
      'MD',
      '1571 Wesel Blvd, Hagerstown, MD 21740',
      'Yes',
      '39.631576',
      '-77.760133'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Rubbing Alcohol',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maryland Health and Wellness Center'
        AND o.latitude = '39.631576'
        AND o.longitude = '-77.760133'));

COMMIT;
