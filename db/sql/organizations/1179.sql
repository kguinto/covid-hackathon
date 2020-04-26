
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
      'Tomorrow''s Hope',
      '1404 N Main St #200
Meridian, ID 83642',
      'Meridian',
      'ID',
      'Drop off during business hours or by mail',
      'Yes',
      '43.6164562',
      '-116.3911495'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tomorrow''s Hope'
        AND o.latitude = '43.6164562'
        AND o.longitude = '-116.3911495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tomorrow''s Hope'
        AND o.latitude = '43.6164562'
        AND o.longitude = '-116.3911495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tomorrow''s Hope'
        AND o.latitude = '43.6164562'
        AND o.longitude = '-116.3911495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tomorrow''s Hope'
        AND o.latitude = '43.6164562'
        AND o.longitude = '-116.3911495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tomorrow''s Hope'
        AND o.latitude = '43.6164562'
        AND o.longitude = '-116.3911495'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tomorrow''s Hope'
        AND o.latitude = '43.6164562'
        AND o.longitude = '-116.3911495'));

COMMIT;
