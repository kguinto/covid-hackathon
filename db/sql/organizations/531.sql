
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
      'East Elm Pediatrics',
      '426 East St
Pittsfield, MA 01201',
      'Pittsfield',
      'MA',
      'Any. Will travel to pick up.',
      'Unsure',
      '42.4468083',
      '-73.2456893'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Elm Pediatrics'
        AND o.latitude = '42.4468083'
        AND o.longitude = '-73.2456893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Elm Pediatrics'
        AND o.latitude = '42.4468083'
        AND o.longitude = '-73.2456893'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Elm Pediatrics'
        AND o.latitude = '42.4468083'
        AND o.longitude = '-73.2456893'));

COMMIT;
