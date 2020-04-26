
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
      'Visiting Nurse Services Inc. of Southern CT',
      '24 Scott St
Hamden, CT 06514',
      'Hamden',
      'CT',
      'Attn: tracy hailey',
      'Yes',
      '41.3485119',
      '-72.9337838'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Nurse Services Inc. of Southern CT'
        AND o.latitude = '41.3485119'
        AND o.longitude = '-72.9337838'));

COMMIT;
