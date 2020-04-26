
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
      'Superior Ambulance Service',
      '7600 La Morada Pl NW
Albuquerque, NM 87120',
      'Albuquerque',
      'NM',
      'Please call from the parking space in front of the lobby.  505 247 8840 ext. 4 someone will come out to assist you.',
      'Yes',
      '35.1095067',
      '-106.7256293'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Superior Ambulance Service'
        AND o.latitude = '35.1095067'
        AND o.longitude = '-106.7256293'));

COMMIT;
