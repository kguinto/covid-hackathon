
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
      'Clayton County Fire & Emergency Services',
      '7810 GA-85
Riverdale, GA 30274',
      'Riverdale',
      'GA',
      '',
      'Unsure',
      '33.5417386',
      '-84.4157054'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clayton County Fire & Emergency Services'
        AND o.latitude = '33.5417386'
        AND o.longitude = '-84.4157054'));

COMMIT;
