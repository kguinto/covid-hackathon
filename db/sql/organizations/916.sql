
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
      'University of Louisville Hospital -- Emergency Dept',
      '530 S Jackson Street
Louisville, KY 40202',
      'Louisville',
      'KY',
      'Andrew Odom, RN',
      'Yes',
      '38.2480611',
      '-85.744415'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Louisville Hospital -- Emergency Dept'
        AND o.latitude = '38.2480611'
        AND o.longitude = '-85.744415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Louisville Hospital -- Emergency Dept'
        AND o.latitude = '38.2480611'
        AND o.longitude = '-85.744415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Louisville Hospital -- Emergency Dept'
        AND o.latitude = '38.2480611'
        AND o.longitude = '-85.744415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Louisville Hospital -- Emergency Dept'
        AND o.latitude = '38.2480611'
        AND o.longitude = '-85.744415'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Louisville Hospital -- Emergency Dept'
        AND o.latitude = '38.2480611'
        AND o.longitude = '-85.744415'));

COMMIT;
