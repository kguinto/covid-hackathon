
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
      'Good Samaritan Regional Medical Center',
      '3600 NW Samaritan Dr
Corvallis, OR 97330',
      'Corvallis',
      'OR',
      'Whatever works',
      'Unsure',
      '44.6034591',
      '-123.2522802'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Good Samaritan Regional Medical Center'
        AND o.latitude = '44.6034591'
        AND o.longitude = '-123.2522802'));

COMMIT;
