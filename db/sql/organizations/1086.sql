
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
      'Mount Sinai Hospital, Madison Ave. NYC',
      '108 E 37th St
New York, NY 10016',
      'New York',
      'NY',
      'Residential address. Drop off with Doorman for Dr. Daryl Goldman or Dr. Ram Posham',
      'Yes',
      '40.7485393',
      '-73.9793102'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital, Madison Ave. NYC'
        AND o.latitude = '40.7485393'
        AND o.longitude = '-73.9793102'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital, Madison Ave. NYC'
        AND o.latitude = '40.7485393'
        AND o.longitude = '-73.9793102'));

COMMIT;
