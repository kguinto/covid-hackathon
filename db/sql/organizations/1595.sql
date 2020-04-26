
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
      'Los Angeles Council District 6 Office',
      '9300 Laurel Canyon Blvd
Arleta, CA 91331',
      'Sun Valley',
      'CA',
      'Through into the gate or leave by door. ',
      'Yes',
      '34.2383467',
      '-118.410149'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Council District 6 Office'
        AND o.latitude = '34.2383467'
        AND o.longitude = '-118.410149'));

COMMIT;
