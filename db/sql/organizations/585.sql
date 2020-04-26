
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
      'Mid-South Urgent Care',
      '1204 N Houston Levee Rd #115
Cordova, TN 38018',
      'Cordova',
      'TN',
      'Drop off or mail',
      'Unsure',
      '35.1580947',
      '-89.7259018'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid-South Urgent Care'
        AND o.latitude = '35.1580947'
        AND o.longitude = '-89.7259018'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid-South Urgent Care'
        AND o.latitude = '35.1580947'
        AND o.longitude = '-89.7259018'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid-South Urgent Care'
        AND o.latitude = '35.1580947'
        AND o.longitude = '-89.7259018'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid-South Urgent Care'
        AND o.latitude = '35.1580947'
        AND o.longitude = '-89.7259018'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('size small nitrile gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid-South Urgent Care'
        AND o.latitude = '35.1580947'
        AND o.longitude = '-89.7259018'));

COMMIT;
