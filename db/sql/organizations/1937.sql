
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
      'Casa Verde Pediatrics, Inc',
      '301 Lennon Ln STE 203
Walnut Creek, CA 94598',
      'Walnut Creek',
      'CA',
      'knock on our door, mail',
      'Yes',
      '37.926465',
      '-122.0296388'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Casa Verde Pediatrics, Inc'
        AND o.latitude = '37.926465'
        AND o.longitude = '-122.0296388'));

COMMIT;
