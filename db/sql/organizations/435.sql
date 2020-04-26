
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
      'Peachtree City Urgent Care',
      '8 Eastbrook Bend, Suite B
Peachtree City, GA 30269',
      'Peachtree',
      'GA',
      '',
      'Unsure',
      '33.4099253',
      '-84.5656614'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peachtree City Urgent Care'
        AND o.latitude = '33.4099253'
        AND o.longitude = '-84.5656614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peachtree City Urgent Care'
        AND o.latitude = '33.4099253'
        AND o.longitude = '-84.5656614'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Peachtree City Urgent Care'
        AND o.latitude = '33.4099253'
        AND o.longitude = '-84.5656614'));

COMMIT;
