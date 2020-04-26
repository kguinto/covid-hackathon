
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
      'Acadiana Urgent Care Center',
      '4906 Ambassador Caffery Pkwy, Building C #350
Lafayette, LA 70508',
      'Lafayette',
      'LA',
      'Pick up, delivery to us, call to make arrangements',
      'Unsure',
      '30.1465031',
      '-92.0371789'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadiana Urgent Care Center'
        AND o.latitude = '30.1465031'
        AND o.longitude = '-92.0371789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadiana Urgent Care Center'
        AND o.latitude = '30.1465031'
        AND o.longitude = '-92.0371789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Acadiana Urgent Care Center'
        AND o.latitude = '30.1465031'
        AND o.longitude = '-92.0371789'));

COMMIT;
