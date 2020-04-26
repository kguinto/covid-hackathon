
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
      'North Central Bronx Hospital ',
      '3524 Kossuth Ave
The Bronx, NY 10467',
      'Bronx ',
      'NY',
      '',
      'Yes',
      '40.8814395',
      '-73.8813572'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Bronx Hospital '
        AND o.latitude = '40.8814395'
        AND o.longitude = '-73.8813572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Bronx Hospital '
        AND o.latitude = '40.8814395'
        AND o.longitude = '-73.8813572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Bronx Hospital '
        AND o.latitude = '40.8814395'
        AND o.longitude = '-73.8813572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Central Bronx Hospital '
        AND o.latitude = '40.8814395'
        AND o.longitude = '-73.8813572'));

COMMIT;
