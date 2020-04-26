
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
      'Cherokee County Fire & Emergency Services',
      '884 Univeter Rd
Canton, GA 30115',
      'Canton',
      'GA',
      'Loading dock if needed. Can travel if necessary.',
      'Yes',
      '34.1939544',
      '-84.4975556'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cherokee County Fire & Emergency Services'
        AND o.latitude = '34.1939544'
        AND o.longitude = '-84.4975556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cherokee County Fire & Emergency Services'
        AND o.latitude = '34.1939544'
        AND o.longitude = '-84.4975556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cherokee County Fire & Emergency Services'
        AND o.latitude = '34.1939544'
        AND o.longitude = '-84.4975556'));

COMMIT;
