
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
      'Windom Family Medical Center',
      '2170 Hospital Dr
Windom, MN 56101',
      'Windom',
      'MN',
      'Curbside',
      'Yes',
      '43.879134',
      '-95.113921'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Windom Family Medical Center'
        AND o.latitude = '43.879134'
        AND o.longitude = '-95.113921'));

COMMIT;
