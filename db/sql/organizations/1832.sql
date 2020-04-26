
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
      'Chatsworth Health Care Center',
      '102 Hospital Dr
Chatsworth, GA 30705',
      'Chatsworth ',
      'GA',
      'Administrator',
      'Yes',
      '34.7796818',
      '-84.7856881'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chatsworth Health Care Center'
        AND o.latitude = '34.7796818'
        AND o.longitude = '-84.7856881'));

COMMIT;
