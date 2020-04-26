
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
      'Leigh Valley Hospital - Hazleton',
      '700 East Broad Street
Hazleton, PA 18201',
      'Hazleton ',
      'PA',
      'Curbside Please',
      'No',
      '40.9491755',
      '-75.9641194'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('We have NO GOWNS or MASKS N95',
    (SELECT id FROM organizations o
      WHERE o.name = 'Leigh Valley Hospital - Hazleton'
        AND o.latitude = '40.9491755'
        AND o.longitude = '-75.9641194'));

COMMIT;
