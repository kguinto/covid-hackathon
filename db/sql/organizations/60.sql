
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
      'St. Barnabas Hospital',
      '4422 3rd Ave (Emergency Room)
The Bronx, NY 10457 ',
      'New York - Bronx',
      'NY',
      'Drop off in triage area attn: Charge Nurse',
      'Unknown',
      '40.8536318',
      '-73.890141'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas Hospital'
        AND o.latitude = '40.8536318'
        AND o.longitude = '-73.890141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas Hospital'
        AND o.latitude = '40.8536318'
        AND o.longitude = '-73.890141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas Hospital'
        AND o.latitude = '40.8536318'
        AND o.longitude = '-73.890141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas Hospital'
        AND o.latitude = '40.8536318'
        AND o.longitude = '-73.890141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Barnabas Hospital'
        AND o.latitude = '40.8536318'
        AND o.longitude = '-73.890141'));

COMMIT;
