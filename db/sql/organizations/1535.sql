
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
      'Excel Urgent Care of NJ - Old Bridge',
      '2624 County Rd 516
Old Bridge, NJ 08857',
      'Old Bridge',
      'NJ',
      '',
      'Yes',
      '40.4040669',
      '-74.321963'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Old Bridge'
        AND o.latitude = '40.4040669'
        AND o.longitude = '-74.321963'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Old Bridge'
        AND o.latitude = '40.4040669'
        AND o.longitude = '-74.321963'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Old Bridge'
        AND o.latitude = '40.4040669'
        AND o.longitude = '-74.321963'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Old Bridge'
        AND o.latitude = '40.4040669'
        AND o.longitude = '-74.321963'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of NJ - Old Bridge'
        AND o.latitude = '40.4040669'
        AND o.longitude = '-74.321963'));

COMMIT;
