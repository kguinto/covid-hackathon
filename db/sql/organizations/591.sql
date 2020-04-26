
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
      'Newberg Urgent Care & Medical Center',
      '2880 Hayes St
Newberg, OR 97132',
      'Newberg',
      'OR',
      'Check with facility',
      'Unsure',
      '45.3032561',
      '-122.9498794'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newberg Urgent Care & Medical Center'
        AND o.latitude = '45.3032561'
        AND o.longitude = '-122.9498794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newberg Urgent Care & Medical Center'
        AND o.latitude = '45.3032561'
        AND o.longitude = '-122.9498794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newberg Urgent Care & Medical Center'
        AND o.latitude = '45.3032561'
        AND o.longitude = '-122.9498794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Protective Eye Wear',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newberg Urgent Care & Medical Center'
        AND o.latitude = '45.3032561'
        AND o.longitude = '-122.9498794'));

COMMIT;
