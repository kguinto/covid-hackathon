
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
      'Sutton Hill Center',
      '1801 Turnpike St
North Andover, MA 01845',
      'North Andover',
      'MA',
      'Drop off in vestibule to receptionist',
      'Yes',
      '42.6356072',
      '-71.0770295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutton Hill Center'
        AND o.latitude = '42.6356072'
        AND o.longitude = '-71.0770295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutton Hill Center'
        AND o.latitude = '42.6356072'
        AND o.longitude = '-71.0770295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sutton Hill Center'
        AND o.latitude = '42.6356072'
        AND o.longitude = '-71.0770295'));

COMMIT;
