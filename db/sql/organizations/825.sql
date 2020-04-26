
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
      'Mantachie Rural Health Center',
      '5681 Hwy 363
Mantachie, MS 38855',
      'Mantachie ',
      'MS',
      'Amy Floyd',
      'Yes',
      '34.3232007',
      '-88.4904036'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mantachie Rural Health Center'
        AND o.latitude = '34.3232007'
        AND o.longitude = '-88.4904036'));

COMMIT;
