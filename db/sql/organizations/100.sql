
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
      'Fast Pace Health',
      '1705 W Reelfoot Ave
Union City, TN 38261',
      'Union City',
      'TN',
      'Call 7315991102 for Parking lot or mail ',
      'No',
      '36.4125164',
      '-89.0790388'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fast Pace Health'
        AND o.latitude = '36.4125164'
        AND o.longitude = '-89.0790388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fast Pace Health'
        AND o.latitude = '36.4125164'
        AND o.longitude = '-89.0790388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fast Pace Health'
        AND o.latitude = '36.4125164'
        AND o.longitude = '-89.0790388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fast Pace Health'
        AND o.latitude = '36.4125164'
        AND o.longitude = '-89.0790388'));

COMMIT;
