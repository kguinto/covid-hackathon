
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
      'The Heart and Medical Center and Urgent Care',
      '2701 W University Blvd
Durant, OK 74701',
      'DURANT',
      'OK',
      '',
      'Yes',
      '34.0043987',
      '-96.4034932'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Heart and Medical Center and Urgent Care'
        AND o.latitude = '34.0043987'
        AND o.longitude = '-96.4034932'));

COMMIT;
