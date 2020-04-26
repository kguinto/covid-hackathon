
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
      'Crisis Center of Tampa Bay',
      '1 Crisis Center Plaza
Tampa, FL 33613',
      'Tampa',
      'FL',
      '1 crisis center plaza
Crisis Center',
      'No',
      '28.0871866',
      '-82.4622548'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crisis Center of Tampa Bay'
        AND o.latitude = '28.0871866'
        AND o.longitude = '-82.4622548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crisis Center of Tampa Bay'
        AND o.latitude = '28.0871866'
        AND o.longitude = '-82.4622548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crisis Center of Tampa Bay'
        AND o.latitude = '28.0871866'
        AND o.longitude = '-82.4622548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crisis Center of Tampa Bay'
        AND o.latitude = '28.0871866'
        AND o.longitude = '-82.4622548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crisis Center of Tampa Bay'
        AND o.latitude = '28.0871866'
        AND o.longitude = '-82.4622548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Crisis Center of Tampa Bay'
        AND o.latitude = '28.0871866'
        AND o.longitude = '-82.4622548'));

COMMIT;
