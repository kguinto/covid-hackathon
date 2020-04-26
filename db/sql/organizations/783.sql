
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
      'Apicha Community Health Center',
      '400 Broadway
New York, NY 10013',
      'New York',
      'NY',
      'You can drop it off in the 2nd floor front desk.',
      'Yes',
      '40.7186242',
      '-74.0022234'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apicha Community Health Center'
        AND o.latitude = '40.7186242'
        AND o.longitude = '-74.0022234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apicha Community Health Center'
        AND o.latitude = '40.7186242'
        AND o.longitude = '-74.0022234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apicha Community Health Center'
        AND o.latitude = '40.7186242'
        AND o.longitude = '-74.0022234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apicha Community Health Center'
        AND o.latitude = '40.7186242'
        AND o.longitude = '-74.0022234'));

COMMIT;
