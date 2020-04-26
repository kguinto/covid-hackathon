
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
      'Glenwood Care Center',
      '1300 North C Street
Oxnard, CA 93030',
      'Oxnard',
      'CA',
      'Drop off with front office',
      'Yes',
      '34.2148405',
      '-119.1799921'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glenwood Care Center'
        AND o.latitude = '34.2148405'
        AND o.longitude = '-119.1799921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glenwood Care Center'
        AND o.latitude = '34.2148405'
        AND o.longitude = '-119.1799921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glenwood Care Center'
        AND o.latitude = '34.2148405'
        AND o.longitude = '-119.1799921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glenwood Care Center'
        AND o.latitude = '34.2148405'
        AND o.longitude = '-119.1799921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Glenwood Care Center'
        AND o.latitude = '34.2148405'
        AND o.longitude = '-119.1799921'));

COMMIT;
