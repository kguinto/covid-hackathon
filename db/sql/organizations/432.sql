
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
      'Penn Medicine ',
      '3600 Spruce Street
Philadelphia, PA 19150',
      'Philadelphia',
      'PA',
      '',
      'Yes',
      '40.0754731',
      '-75.1712394'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Medicine '
        AND o.latitude = '40.0754731'
        AND o.longitude = '-75.1712394'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Medicine '
        AND o.latitude = '40.0754731'
        AND o.longitude = '-75.1712394'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Medicine '
        AND o.latitude = '40.0754731'
        AND o.longitude = '-75.1712394'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Medicine '
        AND o.latitude = '40.0754731'
        AND o.longitude = '-75.1712394'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Medicine '
        AND o.latitude = '40.0754731'
        AND o.longitude = '-75.1712394'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penn Medicine '
        AND o.latitude = '40.0754731'
        AND o.longitude = '-75.1712394'));

COMMIT;
