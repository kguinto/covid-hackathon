
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
      'A Plus Home Health & Hospice',
      '1447 1200 W
Orem, UT 84057',
      'Orem',
      'UT',
      'Knock and drop at glass front door, receptionist will see you',
      'Yes',
      '40.323891',
      '-111.725242'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Plus Home Health & Hospice'
        AND o.latitude = '40.323891'
        AND o.longitude = '-111.725242'));

COMMIT;
