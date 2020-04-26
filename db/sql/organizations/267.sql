
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
      'Lincoln Hospital Medical Center ',
      '234 E 149th St
The Bronx, NY 10451',
      'New York - Bronx',
      'NY',
      'Drop off at the Command center in lobby of the hospital : conference room 4',
      'Yes',
      '40.8160855',
      '-73.9247762'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lincoln Hospital Medical Center '
        AND o.latitude = '40.8160855'
        AND o.longitude = '-73.9247762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lincoln Hospital Medical Center '
        AND o.latitude = '40.8160855'
        AND o.longitude = '-73.9247762'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lincoln Hospital Medical Center '
        AND o.latitude = '40.8160855'
        AND o.longitude = '-73.9247762'));

COMMIT;
