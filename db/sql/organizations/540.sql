
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
      'Action Ambulance',
      '121 West Housatonic Street
Pittsfield, MA 01201',
      'Pittsfield',
      'MA',
      'Mail to: 121 West Housatonic Street, Pittsfield, MA 01201',
      'Unsure',
      '42.4436486',
      '-73.2603645'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Action Ambulance'
        AND o.latitude = '42.4436486'
        AND o.longitude = '-73.2603645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Action Ambulance'
        AND o.latitude = '42.4436486'
        AND o.longitude = '-73.2603645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Action Ambulance'
        AND o.latitude = '42.4436486'
        AND o.longitude = '-73.2603645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Action Ambulance'
        AND o.latitude = '42.4436486'
        AND o.longitude = '-73.2603645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('(the PPE received from the state were covered in rat urine',
    (SELECT id FROM organizations o
      WHERE o.name = 'Action Ambulance'
        AND o.latitude = '42.4436486'
        AND o.longitude = '-73.2603645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('and chewed)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Action Ambulance'
        AND o.latitude = '42.4436486'
        AND o.longitude = '-73.2603645'));

COMMIT;
