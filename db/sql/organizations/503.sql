
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
      'Eisenhower Medical Center',
      '39000 Bob Hope Dr
Rancho Mirage, CA 92270',
      'Rancho Mirage',
      'CA',
      'Please contact me via email dr.naila.javaid@gmail.com or phone (760) 835-3753',
      'Unsure',
      '33.7634956',
      '-116.4054165'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eisenhower Medical Center'
        AND o.latitude = '33.7634956'
        AND o.longitude = '-116.4054165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Isolation or Surgical Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Eisenhower Medical Center'
        AND o.latitude = '33.7634956'
        AND o.longitude = '-116.4054165'));

COMMIT;
