
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
      'PAMF (Sutter Health) Santa Clara',
      '3544 Bassett St
Santa Clara, CA 95054',
      'Santa Clara',
      'CA',
      'Call (844) 987-6099. Staffed donation windows: M-F: 7AM-4PM Sat/Sun: 9AM-1PM. Call to request staff to come pick up donations curbside. Collection bins/lockers also available for off-hours. This is collection point for all Bay Area PAMFs.',
      'Unknown',
      '37.3826973',
      '-121.9540086'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PAMF (Sutter Health) Santa Clara'
        AND o.latitude = '37.3826973'
        AND o.longitude = '-121.9540086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PAMF (Sutter Health) Santa Clara'
        AND o.latitude = '37.3826973'
        AND o.longitude = '-121.9540086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PAMF (Sutter Health) Santa Clara'
        AND o.latitude = '37.3826973'
        AND o.longitude = '-121.9540086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'PAMF (Sutter Health) Santa Clara'
        AND o.latitude = '37.3826973'
        AND o.longitude = '-121.9540086'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PAMF (Sutter Health) Santa Clara'
        AND o.latitude = '37.3826973'
        AND o.longitude = '-121.9540086'));

COMMIT;
